; Preuves de désassemblage T4C Server (1).exe — Passe 36
; SHA256 executable: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Les adresses sont absolues ; stop-address exclusif ; ne pas assimiler les octets vérifiés à une compréhension exhaustive.

; AddEffect/RemoveEffect et gestion de la liste Unit: 0x0048C810 .. 0x0048CAD0 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0048c810 <.text+0x8b810>:
  48c810:	55                   	push   ebp
  48c811:	8b ec                	mov    ebp,esp
  48c813:	51                   	push   ecx
  48c814:	53                   	push   ebx
  48c815:	8b d9                	mov    ebx,ecx
  48c817:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
  48c81a:	8d 4b 30             	lea    ecx,[ebx+0x30]
  48c81d:	56                   	push   esi
  48c81e:	57                   	push   edi
  48c81f:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
  48c822:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48c825:	8b 83 f4 00 00 00    	mov    eax,DWORD PTR [ebx+0xf4]
  48c82b:	33 ff                	xor    edi,edi
  48c82d:	3b c7                	cmp    eax,edi
  48c82f:	75 4d                	jne    0x48c87e
  48c831:	6a 44                	push   0x44
  48c833:	e8 b8 57 fb ff       	call   0x441ff0
  48c838:	8b f0                	mov    esi,eax
  48c83a:	83 c4 04             	add    esp,0x4
  48c83d:	3b f7                	cmp    esi,edi
  48c83f:	74 35                	je     0x48c876
  48c841:	8d 4e 08             	lea    ecx,[esi+0x8]
  48c844:	51                   	push   ecx
  48c845:	c7 06 8c e5 4d 00    	mov    DWORD PTR [esi],0x4de58c
  48c84b:	c7 46 04 ff ff ff ff 	mov    DWORD PTR [esi+0x4],0xffffffff
  48c852:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  48c858:	89 7e 24             	mov    DWORD PTR [esi+0x24],edi
  48c85b:	89 7e 28             	mov    DWORD PTR [esi+0x28],edi
  48c85e:	89 7e 2c             	mov    DWORD PTR [esi+0x2c],edi
  48c861:	89 7e 30             	mov    DWORD PTR [esi+0x30],edi
  48c864:	c7 06 3c f8 4d 00    	mov    DWORD PTR [esi],0x4df83c
  48c86a:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  48c86d:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  48c871:	89 7e 38             	mov    DWORD PTR [esi+0x38],edi
  48c874:	eb 02                	jmp    0x48c878
  48c876:	33 f6                	xor    esi,esi
  48c878:	89 b3 f4 00 00 00    	mov    DWORD PTR [ebx+0xf4],esi
  48c87e:	8b 8b f4 00 00 00    	mov    ecx,DWORD PTR [ebx+0xf4]
  48c884:	8b 11                	mov    edx,DWORD PTR [ecx]
  48c886:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48c889:	8b b3 f4 00 00 00    	mov    esi,DWORD PTR [ebx+0xf4]
  48c88f:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  48c892:	8b 56 38             	mov    edx,DWORD PTR [esi+0x38]
  48c895:	42                   	inc    edx
  48c896:	3b c7                	cmp    eax,edi
  48c898:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48c89b:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  48c89e:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  48c8a2:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  48c8a5:	89 56 38             	mov    DWORD PTR [esi+0x38],edx
  48c8a8:	6a 0c                	push   0xc
  48c8aa:	75 28                	jne    0x48c8d4
  48c8ac:	e8 3f 57 fb ff       	call   0x441ff0
  48c8b1:	83 c4 04             	add    esp,0x4
  48c8b4:	3b c7                	cmp    eax,edi
  48c8b6:	74 07                	je     0x48c8bf
  48c8b8:	89 38                	mov    DWORD PTR [eax],edi
  48c8ba:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  48c8bd:	eb 02                	jmp    0x48c8c1
  48c8bf:	33 c0                	xor    eax,eax
  48c8c1:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48c8c4:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48c8c7:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  48c8ca:	89 38                	mov    DWORD PTR [eax],edi
  48c8cc:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48c8cf:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  48c8d2:	eb 2b                	jmp    0x48c8ff
  48c8d4:	e8 17 57 fb ff       	call   0x441ff0
  48c8d9:	83 c4 04             	add    esp,0x4
  48c8dc:	3b c7                	cmp    eax,edi
  48c8de:	74 07                	je     0x48c8e7
  48c8e0:	89 38                	mov    DWORD PTR [eax],edi
  48c8e2:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  48c8e5:	eb 02                	jmp    0x48c8e9
  48c8e7:	33 c0                	xor    eax,eax
  48c8e9:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48c8ec:	89 01                	mov    DWORD PTR [ecx],eax
  48c8ee:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  48c8f1:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48c8f4:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48c8f7:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  48c8fa:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48c8fd:	89 38                	mov    DWORD PTR [eax],edi
  48c8ff:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48c902:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  48c905:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  48c908:	8b 9b f4 00 00 00    	mov    ebx,DWORD PTR [ebx+0xf4]
  48c90e:	8b 03                	mov    eax,DWORD PTR [ebx]
  48c910:	8b cb                	mov    ecx,ebx
  48c912:	ff 50 08             	call   DWORD PTR [eax+0x8]
  48c915:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  48c918:	8b 11                	mov    edx,DWORD PTR [ecx]
  48c91a:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48c91d:	5f                   	pop    edi
  48c91e:	5e                   	pop    esi
  48c91f:	5b                   	pop    ebx
  48c920:	8b e5                	mov    esp,ebp
  48c922:	5d                   	pop    ebp
  48c923:	c2 04 00             	ret    0x4
  48c926:	90                   	nop
  48c927:	90                   	nop
  48c928:	90                   	nop
  48c929:	90                   	nop
  48c92a:	90                   	nop
  48c92b:	90                   	nop
  48c92c:	90                   	nop
  48c92d:	90                   	nop
  48c92e:	90                   	nop
  48c92f:	90                   	nop
  48c930:	55                   	push   ebp
  48c931:	8b ec                	mov    ebp,esp
  48c933:	51                   	push   ecx
  48c934:	53                   	push   ebx
  48c935:	56                   	push   esi
  48c936:	57                   	push   edi
  48c937:	8b f9                	mov    edi,ecx
  48c939:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
  48c93c:	8d 77 30             	lea    esi,[edi+0x30]
  48c93f:	8b ce                	mov    ecx,esi
  48c941:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  48c944:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48c947:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48c94d:	33 db                	xor    ebx,ebx
  48c94f:	3b cb                	cmp    ecx,ebx
  48c951:	0f 84 66 01 00 00    	je     0x48cabd
  48c957:	8b 11                	mov    edx,DWORD PTR [ecx]
  48c959:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48c95c:	8b 87 f4 00 00 00    	mov    eax,DWORD PTR [edi+0xf4]
  48c962:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48c965:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48c968:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48c96b:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48c96f:	8b 87 f4 00 00 00    	mov    eax,DWORD PTR [edi+0xf4]
  48c975:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48c978:	74 0a                	je     0x48c984
  48c97a:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48c97d:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48c97f:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48c982:	eb 07                	jmp    0x48c98b
  48c984:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48c98b:	39 58 20             	cmp    DWORD PTR [eax+0x20],ebx
  48c98e:	0f 84 f7 00 00 00    	je     0x48ca8b
  48c994:	8b 97 f4 00 00 00    	mov    edx,DWORD PTR [edi+0xf4]
  48c99a:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  48c99d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  48c9a0:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  48c9a3:	39 48 04             	cmp    DWORD PTR [eax+0x4],ecx
  48c9a6:	75 c7                	jne    0x48c96f
  48c9a8:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  48c9ab:	3b cb                	cmp    ecx,ebx
  48c9ad:	74 13                	je     0x48c9c2
  48c9af:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  48c9b2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  48c9b5:	53                   	push   ebx
  48c9b6:	52                   	push   edx
  48c9b7:	53                   	push   ebx
  48c9b8:	53                   	push   ebx
  48c9b9:	57                   	push   edi
  48c9ba:	50                   	push   eax
  48c9bb:	6a 09                	push   0x9
  48c9bd:	ff d1                	call   ecx
  48c9bf:	83 c4 1c             	add    esp,0x1c
  48c9c2:	8b b7 f4 00 00 00    	mov    esi,DWORD PTR [edi+0xf4]
  48c9c8:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  48c9cb:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48c9ce:	48                   	dec    eax
  48c9cf:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  48c9d2:	8b c1                	mov    eax,ecx
  48c9d4:	89 4e 2c             	mov    DWORD PTR [esi+0x2c],ecx
  48c9d7:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  48c9da:	3b c1                	cmp    eax,ecx
  48c9dc:	74 3d                	je     0x48ca1b
  48c9de:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48c9e1:	74 34                	je     0x48ca17
  48c9e3:	8b 10                	mov    edx,DWORD PTR [eax]
  48c9e5:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  48c9e8:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  48c9eb:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48c9ee:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48c9f1:	8b 10                	mov    edx,DWORD PTR [eax]
  48c9f3:	89 11                	mov    DWORD PTR [ecx],edx
  48c9f5:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  48c9f8:	83 f8 01             	cmp    eax,0x1
  48c9fb:	75 0b                	jne    0x48ca08
  48c9fd:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48ca00:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48ca03:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  48ca06:	eb 63                	jmp    0x48ca6b
  48ca08:	83 f8 02             	cmp    eax,0x2
  48ca0b:	75 5e                	jne    0x48ca6b
  48ca0d:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48ca10:	8b 02                	mov    eax,DWORD PTR [edx]
  48ca12:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48ca15:	eb 54                	jmp    0x48ca6b
  48ca17:	3b c1                	cmp    eax,ecx
  48ca19:	75 23                	jne    0x48ca3e
  48ca1b:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48ca1e:	74 23                	je     0x48ca43
  48ca20:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48ca23:	89 19                	mov    DWORD PTR [ecx],ebx
  48ca25:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48ca28:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  48ca2b:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48ca2e:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  48ca32:	8b ca                	mov    ecx,edx
  48ca34:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  48ca37:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  48ca3a:	75 2f                	jne    0x48ca6b
  48ca3c:	eb 2a                	jmp    0x48ca68
  48ca3e:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48ca41:	75 1c                	jne    0x48ca5f
  48ca43:	3b c1                	cmp    eax,ecx
  48ca45:	74 18                	je     0x48ca5f
  48ca47:	8b 00                	mov    eax,DWORD PTR [eax]
  48ca49:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48ca4c:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48ca4f:	8b 01                	mov    eax,DWORD PTR [ecx]
  48ca51:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48ca54:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  48ca57:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  48ca5b:	75 0e                	jne    0x48ca6b
  48ca5d:	eb 09                	jmp    0x48ca68
  48ca5f:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  48ca62:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  48ca65:	89 5e 28             	mov    DWORD PTR [esi+0x28],ebx
  48ca68:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  48ca6b:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  48ca6e:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  48ca71:	50                   	push   eax
  48ca72:	e8 e9 55 fb ff       	call   0x442060
  48ca77:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  48ca7a:	51                   	push   ecx
  48ca7b:	e8 e0 55 fb ff       	call   0x442060
  48ca80:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
  48ca83:	83 c4 08             	add    esp,0x8
  48ca86:	e9 e4 fe ff ff       	jmp    0x48c96f
  48ca8b:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48ca8e:	74 04                	je     0x48ca94
  48ca90:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48ca94:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48ca97:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48ca9d:	8b 11                	mov    edx,DWORD PTR [ecx]
  48ca9f:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48caa2:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48caa8:	39 59 38             	cmp    DWORD PTR [ecx+0x38],ebx
  48caab:	75 10                	jne    0x48cabd
  48caad:	3b cb                	cmp    ecx,ebx
  48caaf:	74 06                	je     0x48cab7
  48cab1:	8b 01                	mov    eax,DWORD PTR [ecx]
  48cab3:	6a 01                	push   0x1
  48cab5:	ff 10                	call   DWORD PTR [eax]
  48cab7:	89 9f f4 00 00 00    	mov    DWORD PTR [edi+0xf4],ebx
  48cabd:	8b 16                	mov    edx,DWORD PTR [esi]
  48cabf:	8b ce                	mov    ecx,esi
  48cac1:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48cac4:	5f                   	pop    edi
  48cac5:	5e                   	pop    esi
  48cac6:	5b                   	pop    ebx
  48cac7:	8b e5                	mov    esp,ebp
  48cac9:	5d                   	pop    ebp
  48caca:	c2 04 00             	ret    0x4
  48cacd:	90                   	nop
  48cace:	90                   	nop
  48cacf:	90                   	nop


; SendGlobalEffectMessage : parcours des effets: 0x0048CF40 .. 0x0048D000 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0048cf40 <.text+0x8bf40>:
  48cf40:	55                   	push   ebp
  48cf41:	8b ec                	mov    ebp,esp
  48cf43:	6a ff                	push   0xffffffff
  48cf45:	68 30 a7 4d 00       	push   0x4da730
  48cf4a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48cf50:	50                   	push   eax
  48cf51:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48cf58:	83 ec 48             	sub    esp,0x48
  48cf5b:	53                   	push   ebx
  48cf5c:	56                   	push   esi
  48cf5d:	57                   	push   edi
  48cf5e:	8d 45 b4             	lea    eax,[ebp-0x4c]
  48cf61:	50                   	push   eax
  48cf62:	8b f1                	mov    esi,ecx
  48cf64:	c7 45 ac 8c e5 4d 00 	mov    DWORD PTR [ebp-0x54],0x4de58c
  48cf6b:	c7 45 b0 ff ff ff ff 	mov    DWORD PTR [ebp-0x50],0xffffffff
  48cf72:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  48cf78:	33 ff                	xor    edi,edi
  48cf7a:	89 7d d0             	mov    DWORD PTR [ebp-0x30],edi
  48cf7d:	89 7d d4             	mov    DWORD PTR [ebp-0x2c],edi
  48cf80:	89 7d d8             	mov    DWORD PTR [ebp-0x28],edi
  48cf83:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
  48cf86:	c7 45 ac 3c f8 4d 00 	mov    DWORD PTR [ebp-0x54],0x4df83c
  48cf8d:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48cf90:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  48cf94:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
  48cf97:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
  48cf9a:	8d 4e 30             	lea    ecx,[esi+0x30]
  48cf9d:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  48cfa0:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  48cfa3:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48cfa6:	8b 8e f4 00 00 00    	mov    ecx,DWORD PTR [esi+0xf4]
  48cfac:	3b cf                	cmp    ecx,edi
  48cfae:	74 67                	je     0x48d017
  48cfb0:	8b 01                	mov    eax,DWORD PTR [ecx]
  48cfb2:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48cfb5:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  48cfbb:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48cfbe:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48cfc1:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  48cfc4:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48cfc8:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  48cfce:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  48cfd1:	74 0a                	je     0x48cfdd
  48cfd3:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48cfd6:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48cfd8:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48cfdb:	eb 07                	jmp    0x48cfe4
  48cfdd:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48cfe4:	39 78 20             	cmp    DWORD PTR [eax+0x20],edi
  48cfe7:	74 17                	je     0x48d000
  48cfe9:	8b 96 f4 00 00 00    	mov    edx,DWORD PTR [esi+0xf4]
  48cfef:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  48cff2:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  48cff5:	51                   	push   ecx
  48cff6:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48cff9:	e8 22 3a 00 00       	call   0x490a20
  48cffe:	eb c8                	jmp    0x48cfc8


; enregistrement et recherche des procédures deffets: 0x00490B10 .. 0x00490C20 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00490b10 <.text+0x8fb10>:
  490b10:	55                   	push   ebp
  490b11:	8b ec                	mov    ebp,esp
  490b13:	6a 08                	push   0x8
  490b15:	e8 d6 14 fb ff       	call   0x441ff0
  490b1a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  490b1d:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  490b20:	83 c4 04             	add    esp,0x4
  490b23:	89 08                	mov    DWORD PTR [eax],ecx
  490b25:	50                   	push   eax
  490b26:	b9 00 64 55 00       	mov    ecx,0x556400
  490b2b:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  490b2e:	e8 0d 04 00 00       	call   0x490f40
  490b33:	5d                   	pop    ebp
  490b34:	c3                   	ret
  490b35:	90                   	nop
  490b36:	90                   	nop
  490b37:	90                   	nop
  490b38:	90                   	nop
  490b39:	90                   	nop
  490b3a:	90                   	nop
  490b3b:	90                   	nop
  490b3c:	90                   	nop
  490b3d:	90                   	nop
  490b3e:	90                   	nop
  490b3f:	90                   	nop
  490b40:	55                   	push   ebp
  490b41:	8b ec                	mov    ebp,esp
  490b43:	83 ec 08             	sub    esp,0x8
  490b46:	56                   	push   esi
  490b47:	57                   	push   edi
  490b48:	33 f6                	xor    esi,esi
  490b4a:	50                   	push   eax
  490b4b:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  490b4e:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  490b51:	58                   	pop    eax
  490b52:	e8 a9 36 fa ff       	call   0x434200
  490b57:	8b 10                	mov    edx,DWORD PTR [eax]
  490b59:	8d 4d fc             	lea    ecx,[ebp-0x4]
  490b5c:	51                   	push   ecx
  490b5d:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  490b60:	68 00 64 55 00       	push   0x556400
  490b65:	51                   	push   ecx
  490b66:	8b c8                	mov    ecx,eax
  490b68:	ff 12                	call   DWORD PTR [edx]
  490b6a:	68 08 64 55 00       	push   0x556408
  490b6f:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  490b75:	e8 86 36 fa ff       	call   0x434200
  490b7a:	8b 10                	mov    edx,DWORD PTR [eax]
  490b7c:	68 04 64 55 00       	push   0x556404
  490b81:	8d 4d fc             	lea    ecx,[ebp-0x4]
  490b84:	51                   	push   ecx
  490b85:	8b c8                	mov    ecx,eax
  490b87:	ff 52 04             	call   DWORD PTR [edx+0x4]
  490b8a:	a1 24 64 55 00       	mov    eax,ds:0x556424
  490b8f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  490b92:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  490b95:	33 c9                	xor    ecx,ecx
  490b97:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490b9c:	89 0d 40 64 55 00    	mov    DWORD PTR ds:0x556440,ecx
  490ba2:	c6 05 34 64 55 00 08 	mov    BYTE PTR ds:0x556434,0x8
  490ba9:	85 c9                	test   ecx,ecx
  490bab:	74 09                	je     0x490bb6
  490bad:	8b 00                	mov    eax,DWORD PTR [eax]
  490baf:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490bb4:	eb 0b                	jmp    0x490bc1
  490bb6:	b9 01 00 00 00       	mov    ecx,0x1
  490bbb:	89 0d 40 64 55 00    	mov    DWORD PTR ds:0x556440,ecx
  490bc1:	85 c0                	test   eax,eax
  490bc3:	74 12                	je     0x490bd7
  490bc5:	85 f6                	test   esi,esi
  490bc7:	75 23                	jne    0x490bec
  490bc9:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  490bcc:	39 17                	cmp    DWORD PTR [edi],edx
  490bce:	75 d9                	jne    0x490ba9
  490bd0:	be 01 00 00 00       	mov    esi,0x1
  490bd5:	eb d2                	jmp    0x490ba9
  490bd7:	85 c9                	test   ecx,ecx
  490bd9:	74 07                	je     0x490be2
  490bdb:	c6 05 34 64 55 00 07 	mov    BYTE PTR ds:0x556434,0x7
  490be2:	c7 05 40 64 55 00 00 	mov    DWORD PTR ds:0x556440,0x0
  490be9:	00 00 00 
  490bec:	e8 0f 36 fa ff       	call   0x434200
  490bf1:	8b 10                	mov    edx,DWORD PTR [eax]
  490bf3:	68 04 64 55 00       	push   0x556404
  490bf8:	8b c8                	mov    ecx,eax
  490bfa:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  490bfd:	68 08 64 55 00       	push   0x556408
  490c02:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  490c08:	85 f6                	test   esi,esi
  490c0a:	74 09                	je     0x490c15
  490c0c:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  490c0f:	5f                   	pop    edi
  490c10:	5e                   	pop    esi
  490c11:	8b e5                	mov    esp,ebp
  490c13:	5d                   	pop    ebp
  490c14:	c3                   	ret
  490c15:	5f                   	pop    edi
  490c16:	5e                   	pop    esi
  490c17:	33 c0                	xor    eax,eax
  490c19:	8b e5                	mov    esp,ebp
  490c1b:	5d                   	pop    ebp
  490c1c:	c3                   	ret
  490c1d:	90                   	nop
  490c1e:	90                   	nop
  490c1f:	90                   	nop

