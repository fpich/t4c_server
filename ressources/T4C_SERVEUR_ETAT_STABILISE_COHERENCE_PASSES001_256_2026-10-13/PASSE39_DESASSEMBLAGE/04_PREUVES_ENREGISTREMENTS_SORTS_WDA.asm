; Passe 39 — T4C Server(1).exe; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Chaque ligne d instruction est verifiee octet par octet contre .text.
; Les plages sont selectives et liees aux conclusions documentees; stop exclusif.

; Initialisation de l objet collection de sorts et de ses vecteurs
; Plage 0x004A8310..0x004A833D (stop exclusif)
  4a8310:	55                   	push   ebp
  4a8311:	8b ec                	mov    ebp,esp
  4a8313:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a8316:	56                   	push   esi
  4a8317:	8b f1                	mov    esi,ecx
  4a8319:	50                   	push   eax
  4a831a:	e8 21 55 00 00       	call   0x4ad840
  4a831f:	8a 4d 0b             	mov    cl,BYTE PTR [ebp+0xb]
  4a8322:	33 c0                	xor    eax,eax
  4a8324:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  4a8327:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4a832a:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  4a832d:	88 4e 18             	mov    BYTE PTR [esi+0x18],cl
  4a8330:	c7 06 68 fa 4d 00    	mov    DWORD PTR [esi],0x4dfa68
  4a8336:	8b c6                	mov    eax,esi
  4a8338:	5e                   	pop    esi
  4a8339:	5d                   	pop    ebp
  4a833a:	c2 04 00             	ret    0x4

; Destruction de la collection, stride en memoire 0xE4 octets
; Plage 0x004A8398..0x004A8499 (stop exclusif)
  4a8398:	8b 73 1c             	mov    esi,DWORD PTR [ebx+0x1c]
  4a839b:	33 c0                	xor    eax,eax
  4a839d:	3b f0                	cmp    esi,eax
  4a839f:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  4a83a2:	0f 84 da 00 00 00    	je     0x4a8482
  4a83a8:	57                   	push   edi
  4a83a9:	8b 7b 20             	mov    edi,DWORD PTR [ebx+0x20]
  4a83ac:	3b f7                	cmp    esi,edi
  4a83ae:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4a83b1:	0f 84 bc 00 00 00    	je     0x4a8473
  4a83b7:	b3 02                	mov    bl,0x2
  4a83b9:	6a 01                	push   0x1
  4a83bb:	8d 8e d4 00 00 00    	lea    ecx,[esi+0xd4]
  4a83c1:	c6 45 fc 0a          	mov    BYTE PTR [ebp-0x4],0xa
  4a83c5:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  4a83cb:	6a 01                	push   0x1
  4a83cd:	8d 8e c4 00 00 00    	lea    ecx,[esi+0xc4]
  4a83d3:	c6 45 fc 09          	mov    BYTE PTR [ebp-0x4],0x9
  4a83d7:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  4a83dd:	6a 01                	push   0x1
  4a83df:	8d 8e 8c 00 00 00    	lea    ecx,[esi+0x8c]
  4a83e5:	c6 45 fc 08          	mov    BYTE PTR [ebp-0x4],0x8
  4a83e9:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  4a83ef:	6a 01                	push   0x1
  4a83f1:	8d 4e 78             	lea    ecx,[esi+0x78]
  4a83f4:	c6 45 fc 07          	mov    BYTE PTR [ebp-0x4],0x7
  4a83f8:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  4a83fe:	6a 01                	push   0x1
  4a8400:	8d 4e 68             	lea    ecx,[esi+0x68]
  4a8403:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  4a8407:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  4a840d:	6a 01                	push   0x1
  4a840f:	8d 4e 58             	lea    ecx,[esi+0x58]
  4a8412:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  4a8416:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  4a841c:	6a 01                	push   0x1
  4a841e:	8d 4e 48             	lea    ecx,[esi+0x48]
  4a8421:	c6 45 fc 04          	mov    BYTE PTR [ebp-0x4],0x4
  4a8425:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  4a842b:	6a 01                	push   0x1
  4a842d:	8d 4e 38             	lea    ecx,[esi+0x38]
  4a8430:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  4a8434:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  4a843a:	6a 01                	push   0x1
  4a843c:	8d 4e 28             	lea    ecx,[esi+0x28]
  4a843f:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  4a8442:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  4a8448:	8d 4e 10             	lea    ecx,[esi+0x10]
  4a844b:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4a844f:	e8 fc 1a 00 00       	call   0x4a9f50
  4a8454:	8b ce                	mov    ecx,esi
  4a8456:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  4a845a:	e8 21 1a 00 00       	call   0x4a9e80
  4a845f:	81 c6 e4 00 00 00    	add    esi,0xe4
  4a8465:	3b f7                	cmp    esi,edi
  4a8467:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4a846a:	0f 85 49 ff ff ff    	jne    0x4a83b9
  4a8470:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
  4a8473:	8b 43 1c             	mov    eax,DWORD PTR [ebx+0x1c]
  4a8476:	50                   	push   eax
  4a8477:	e8 e4 9b f9 ff       	call   0x442060
  4a847c:	83 c4 04             	add    esp,0x4
  4a847f:	33 c0                	xor    eax,eax
  4a8481:	5f                   	pop    edi
  4a8482:	8b cb                	mov    ecx,ebx
  4a8484:	89 43 1c             	mov    DWORD PTR [ebx+0x1c],eax
  4a8487:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
  4a848a:	89 43 24             	mov    DWORD PTR [ebx+0x24],eax
  4a848d:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4a8494:	e8 d7 53 00 00       	call   0x4ad870

; Lecture de la collection: conteneur, compteur et allocation temporaire
; Plage 0x004A8810..0x004A88A5 (stop exclusif)
  4a8810:	55                   	push   ebp
  4a8811:	8b ec                	mov    ebp,esp
  4a8813:	6a ff                	push   0xffffffff
  4a8815:	68 bf bf 4d 00       	push   0x4dbfbf
  4a881a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a8820:	50                   	push   eax
  4a8821:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a8828:	81 ec 80 09 00 00    	sub    esp,0x980
  4a882e:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
  4a8831:	53                   	push   ebx
  4a8832:	56                   	push   esi
  4a8833:	57                   	push   edi
  4a8834:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  4a8837:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  4a883a:	68 f0 f7 50 00       	push   0x50f7f0
  4a883f:	c7 45 ec ef cd ab 00 	mov    DWORD PTR [ebp-0x14],0xabcdef
  4a8846:	8b 10                	mov    edx,DWORD PTR [eax]
  4a8848:	51                   	push   ecx
  4a8849:	8b c8                	mov    ecx,eax
  4a884b:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4a884e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4a8851:	8d 55 ec             	lea    edx,[ebp-0x14]
  4a8854:	52                   	push   edx
  4a8855:	8b ce                	mov    ecx,esi
  4a8857:	e8 24 13 ff ff       	call   0x499b80
  4a885c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4a885f:	33 db                	xor    ebx,ebx
  4a8861:	3b c3                	cmp    eax,ebx
  4a8863:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  4a8866:	0f 86 10 07 00 00    	jbe    0x4a8f7c
  4a886c:	8a 45 0f             	mov    al,BYTE PTR [ebp+0xf]
  4a886f:	53                   	push   ebx
  4a8870:	8d 8d e8 fe ff ff    	lea    ecx,[ebp-0x118]
  4a8876:	88 85 e8 fe ff ff    	mov    BYTE PTR [ebp-0x118],al
  4a887c:	e8 af 15 00 00       	call   0x4a9e30
  4a8881:	8d 8d f8 fe ff ff    	lea    ecx,[ebp-0x108]
  4a8887:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  4a888a:	e8 a1 14 00 00       	call   0x4a9d30
  4a888f:	8d 8d 10 ff ff ff    	lea    ecx,[ebp-0xf0]
  4a8895:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4a8899:	88 9d 08 ff ff ff    	mov    BYTE PTR [ebp-0xf8],bl
  4a889f:	89 9d 0c ff ff ff    	mov    DWORD PTR [ebp-0xf4],ebx

; Lecture des types de champs scalaires et des chaines dans les enregistrements
; Plage 0x004A8950..0x004A8A6E (stop exclusif)
  4a8950:	8d 0c ff             	lea    ecx,[edi+edi*8]
  4a8953:	ff                   	(bad)
  4a8954:	ff 51 8b             	call   DWORD PTR [ecx-0x75]
  4a8957:	ce                   	into
  4a8958:	c7 45 fc 0a 00 00 00 	mov    DWORD PTR [ebp-0x4],0xa
  4a895f:	e8 1c 12 ff ff       	call   0x499b80
  4a8964:	8d 95 10 ff ff ff    	lea    edx,[ebp-0xf0]
  4a896a:	52                   	push   edx
  4a896b:	8b ce                	mov    ecx,esi
  4a896d:	e8 4e 12 ff ff       	call   0x499bc0
  4a8972:	8d 85 20 ff ff ff    	lea    eax,[ebp-0xe0]
  4a8978:	50                   	push   eax
  4a8979:	8b ce                	mov    ecx,esi
  4a897b:	e8 40 12 ff ff       	call   0x499bc0
  4a8980:	8d 8d 30 ff ff ff    	lea    ecx,[ebp-0xd0]
  4a8986:	51                   	push   ecx
  4a8987:	8b ce                	mov    ecx,esi
  4a8989:	e8 32 12 ff ff       	call   0x499bc0
  4a898e:	8d 95 40 ff ff ff    	lea    edx,[ebp-0xc0]
  4a8994:	52                   	push   edx
  4a8995:	8b ce                	mov    ecx,esi
  4a8997:	e8 24 12 ff ff       	call   0x499bc0
  4a899c:	8d 85 50 ff ff ff    	lea    eax,[ebp-0xb0]
  4a89a2:	50                   	push   eax
  4a89a3:	8b ce                	mov    ecx,esi
  4a89a5:	e8 16 12 ff ff       	call   0x499bc0
  4a89aa:	8d 8d 60 ff ff ff    	lea    ecx,[ebp-0xa0]
  4a89b0:	51                   	push   ecx
  4a89b1:	8b ce                	mov    ecx,esi
  4a89b3:	e8 08 12 ff ff       	call   0x499bc0
  4a89b8:	8d 95 70 ff ff ff    	lea    edx,[ebp-0x90]
  4a89be:	52                   	push   edx
  4a89bf:	8b ce                	mov    ecx,esi
  4a89c1:	e8 ba 11 ff ff       	call   0x499b80
  4a89c6:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
  4a89cc:	50                   	push   eax
  4a89cd:	8b ce                	mov    ecx,esi
  4a89cf:	e8 ec 11 ff ff       	call   0x499bc0
  4a89d4:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  4a89d7:	51                   	push   ecx
  4a89d8:	8b ce                	mov    ecx,esi
  4a89da:	e8 a1 11 ff ff       	call   0x499b80
  4a89df:	8d 55 88             	lea    edx,[ebp-0x78]
  4a89e2:	52                   	push   edx
  4a89e3:	8b ce                	mov    ecx,esi
  4a89e5:	e8 96 11 ff ff       	call   0x499b80
  4a89ea:	8d 45 8c             	lea    eax,[ebp-0x74]
  4a89ed:	50                   	push   eax
  4a89ee:	8b ce                	mov    ecx,esi
  4a89f0:	e8 8b 11 ff ff       	call   0x499b80
  4a89f5:	8d 4d 90             	lea    ecx,[ebp-0x70]
  4a89f8:	51                   	push   ecx
  4a89f9:	8b ce                	mov    ecx,esi
  4a89fb:	e8 80 11 ff ff       	call   0x499b80
  4a8a00:	8d 55 94             	lea    edx,[ebp-0x6c]
  4a8a03:	52                   	push   edx
  4a8a04:	8b ce                	mov    ecx,esi
  4a8a06:	e8 75 11 ff ff       	call   0x499b80
  4a8a0b:	8d 45 98             	lea    eax,[ebp-0x68]
  4a8a0e:	50                   	push   eax
  4a8a0f:	8b ce                	mov    ecx,esi
  4a8a11:	e8 6a 11 ff ff       	call   0x499b80
  4a8a16:	8d 4d 9c             	lea    ecx,[ebp-0x64]
  4a8a19:	51                   	push   ecx
  4a8a1a:	8b ce                	mov    ecx,esi
  4a8a1c:	e8 5f 11 ff ff       	call   0x499b80
  4a8a21:	8d 55 a0             	lea    edx,[ebp-0x60]
  4a8a24:	52                   	push   edx
  4a8a25:	8b ce                	mov    ecx,esi
  4a8a27:	e8 54 11 ff ff       	call   0x499b80
  4a8a2c:	8d 45 a4             	lea    eax,[ebp-0x5c]
  4a8a2f:	50                   	push   eax
  4a8a30:	8b ce                	mov    ecx,esi
  4a8a32:	e8 c9 12 ff ff       	call   0x499d00
  4a8a37:	8d 4d a5             	lea    ecx,[ebp-0x5b]
  4a8a3a:	51                   	push   ecx
  4a8a3b:	8b ce                	mov    ecx,esi
  4a8a3d:	e8 be 12 ff ff       	call   0x499d00
  4a8a42:	8d 55 a6             	lea    edx,[ebp-0x5a]
  4a8a45:	52                   	push   edx
  4a8a46:	8b ce                	mov    ecx,esi
  4a8a48:	e8 b3 12 ff ff       	call   0x499d00
  4a8a4d:	8d 45 a8             	lea    eax,[ebp-0x58]
  4a8a50:	50                   	push   eax
  4a8a51:	8b ce                	mov    ecx,esi
  4a8a53:	e8 28 11 ff ff       	call   0x499b80
  4a8a58:	8d 4d ac             	lea    ecx,[ebp-0x54]
  4a8a5b:	51                   	push   ecx
  4a8a5c:	8b ce                	mov    ecx,esi
  4a8a5e:	e8 5d 11 ff ff       	call   0x499bc0
  4a8a63:	8d 55 bc             	lea    edx,[ebp-0x44]
  4a8a66:	52                   	push   edx
  4a8a67:	8b ce                	mov    ecx,esi
  4a8a69:	e8 52 11 ff ff       	call   0x499bc0

; Premier sous-enregistrement vectoriel, compteur, creation et insertion
; Plage 0x004A8C72..0x004A8CEF (stop exclusif)
  4a8c72:	8d 45 e0             	lea    eax,[ebp-0x20]
  4a8c75:	50                   	push   eax
  4a8c76:	8b ce                	mov    ecx,esi
  4a8c78:	e8 03 0f ff ff       	call   0x499b80
  4a8c7d:	39 5d e0             	cmp    DWORD PTR [ebp-0x20],ebx
  4a8c80:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
  4a8c83:	76 6a                	jbe    0x4a8cef
  4a8c85:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  4a8c88:	8b 57 10             	mov    edx,DWORD PTR [edi+0x10]
  4a8c8b:	51                   	push   ecx
  4a8c8c:	52                   	push   edx
  4a8c8d:	8d 8d 74 fe ff ff    	lea    ecx,[ebp-0x18c]
  4a8c93:	e8 18 e5 ff ff       	call   0x4a71b0
  4a8c98:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4a8c9b:	50                   	push   eax
  4a8c9c:	56                   	push   esi
  4a8c9d:	8d 8d 74 fe ff ff    	lea    ecx,[ebp-0x18c]
  4a8ca3:	c6 45 fc 0d          	mov    BYTE PTR [ebp-0x4],0xd
  4a8ca7:	e8 f4 e6 ff ff       	call   0x4a73a0
  4a8cac:	8d 8d 74 fe ff ff    	lea    ecx,[ebp-0x18c]
  4a8cb2:	51                   	push   ecx
  4a8cb3:	51                   	push   ecx
  4a8cb4:	54                   	push   esp
  4a8cb5:	8d 8d e8 fe ff ff    	lea    ecx,[ebp-0x118]
  4a8cbb:	e8 60 10 00 00       	call   0x4a9d20
  4a8cc0:	8d 95 e4 fe ff ff    	lea    edx,[ebp-0x11c]
  4a8cc6:	52                   	push   edx
  4a8cc7:	8d 8d e8 fe ff ff    	lea    ecx,[ebp-0x118]
  4a8ccd:	e8 de 10 00 00       	call   0x4a9db0
  4a8cd2:	8d 8d 74 fe ff ff    	lea    ecx,[ebp-0x18c]
  4a8cd8:	c6 45 fc 0a          	mov    BYTE PTR [ebp-0x4],0xa
  4a8cdc:	e8 6f e5 ff ff       	call   0x4a7250
  4a8ce1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a8ce4:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  4a8ce7:	40                   	inc    eax
  4a8ce8:	3b c1                	cmp    eax,ecx
  4a8cea:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4a8ced:	72 96                	jb     0x4a8c85

; Second sous-enregistrement vectoriel, compteur et creation
; Plage 0x004A8CEF..0x004A8D6C (stop exclusif)
  4a8cef:	8d 45 d8             	lea    eax,[ebp-0x28]
  4a8cf2:	50                   	push   eax
  4a8cf3:	8b ce                	mov    ecx,esi
  4a8cf5:	e8 86 0e ff ff       	call   0x499b80
  4a8cfa:	39 5d d8             	cmp    DWORD PTR [ebp-0x28],ebx
  4a8cfd:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
  4a8d00:	76 6a                	jbe    0x4a8d6c
  4a8d02:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  4a8d05:	8b 57 10             	mov    edx,DWORD PTR [edi+0x10]
  4a8d08:	51                   	push   ecx
  4a8d09:	52                   	push   edx
  4a8d0a:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  4a8d10:	e8 fb f3 ff ff       	call   0x4a8110
  4a8d15:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4a8d18:	50                   	push   eax
  4a8d19:	56                   	push   esi
  4a8d1a:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  4a8d20:	c6 45 fc 0e          	mov    BYTE PTR [ebp-0x4],0xe
  4a8d24:	e8 e7 f4 ff ff       	call   0x4a8210
  4a8d29:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  4a8d2f:	51                   	push   ecx
  4a8d30:	51                   	push   ecx
  4a8d31:	54                   	push   esp
  4a8d32:	8d 8d f8 fe ff ff    	lea    ecx,[ebp-0x108]
  4a8d38:	e8 53 10 00 00       	call   0x4a9d90
  4a8d3d:	8d 95 e0 fe ff ff    	lea    edx,[ebp-0x120]
  4a8d43:	52                   	push   edx
  4a8d44:	8d 8d f8 fe ff ff    	lea    ecx,[ebp-0x108]
  4a8d4a:	e8 81 11 00 00       	call   0x4a9ed0
  4a8d4f:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  4a8d55:	c6 45 fc 0a          	mov    BYTE PTR [ebp-0x4],0xa
  4a8d59:	e8 42 f4 ff ff       	call   0x4a81a0
  4a8d5e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a8d61:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  4a8d64:	40                   	inc    eax
  4a8d65:	3b c1                	cmp    eax,ecx
  4a8d67:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4a8d6a:	72 96                	jb     0x4a8d02

; Boucle sur les entrees et retour du chargeur
; Plage 0x004A8F58..0x004A8F8F (stop exclusif)
  4a8f58:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  4a8f5b:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  4a8f5e:	40                   	inc    eax
  4a8f5f:	3b c1                	cmp    eax,ecx
  4a8f61:	89 9d ec fe ff ff    	mov    DWORD PTR [ebp-0x114],ebx
  4a8f67:	89 9d f0 fe ff ff    	mov    DWORD PTR [ebp-0x110],ebx
  4a8f6d:	89 9d f4 fe ff ff    	mov    DWORD PTR [ebp-0x10c],ebx
  4a8f73:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  4a8f76:	0f 82 f0 f8 ff ff    	jb     0x4a886c
  4a8f7c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a8f7f:	5f                   	pop    edi
  4a8f80:	5e                   	pop    esi
  4a8f81:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a8f88:	5b                   	pop    ebx
  4a8f89:	8b e5                	mov    esp,ebp
  4a8f8b:	5d                   	pop    ebp
  4a8f8c:	c2 08 00             	ret    0x8

