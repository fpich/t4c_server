; PASSE 49 — Character::Death, declenchements, penalites, monde et paquets
; Serveur original SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Chaque octet x86 est recoupe directement avec la section .text de T4C Server(1).exe.
; Les plages suivent des blocs fonctionnels identifies; les annotations ne substituent pas les appels indirects.

; Protections initiales et arret du combat — 0x41B250..0x41B340 exclu
; Re-entry flag +0xB0, controle joueur; StopAutoCombat. Si assassin identifie, transitions de message et logs.
  41b250:	55                   	push   ebp
  41b251:	8b ec                	mov    ebp,esp
  41b253:	6a ff                	push   0xffffffff
  41b255:	68 97 40 4d 00       	push   0x4d4097
  41b25a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  41b260:	50                   	push   eax
  41b261:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  41b268:	81 ec 88 01 00 00    	sub    esp,0x188
  41b26e:	53                   	push   ebx
  41b26f:	56                   	push   esi
  41b270:	57                   	push   edi
  41b271:	8b f1                	mov    esi,ecx
  41b273:	e8 78 f8 ff ff       	call   0x41aaf0
  41b278:	8b f8                	mov    edi,eax
  41b27a:	8a 86 b0 00 00 00    	mov    al,BYTE PTR [esi+0xb0]
  41b280:	33 db                	xor    ebx,ebx
  41b282:	84 c0                	test   al,al
  41b284:	0f 85 2b 19 00 00    	jne    0x41cbb5
  41b28a:	8b cf                	mov    ecx,edi
  41b28c:	e8 4f 98 03 00       	call   0x454ae0
  41b291:	81 e2 80 00 00 00    	and    edx,0x80
  41b297:	33 c0                	xor    eax,eax
  41b299:	0b c2                	or     eax,edx
  41b29b:	0f 85 14 19 00 00    	jne    0x41cbb5
  41b2a1:	39 5f 44             	cmp    DWORD PTR [edi+0x44],ebx
  41b2a4:	75 21                	jne    0x41b2c7
  41b2a6:	8b 06                	mov    eax,DWORD PTR [esi]
  41b2a8:	6a 01                	push   0x1
  41b2aa:	6a 01                	push   0x1
  41b2ac:	8b ce                	mov    ecx,esi
  41b2ae:	ff 90 dc 00 00 00    	call   DWORD PTR [eax+0xdc]
  41b2b4:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41b2b7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  41b2be:	5f                   	pop    edi
  41b2bf:	5e                   	pop    esi
  41b2c0:	5b                   	pop    ebx
  41b2c1:	8b e5                	mov    esp,ebp
  41b2c3:	5d                   	pop    ebp
  41b2c4:	c2 08 00             	ret    0x8
  41b2c7:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
  41b2ca:	8d 4e 30             	lea    ecx,[esi+0x30]
  41b2cd:	c6 86 b0 00 00 00 01 	mov    BYTE PTR [esi+0xb0],0x1
  41b2d4:	89 8d d8 fe ff ff    	mov    DWORD PTR [ebp-0x128],ecx
  41b2da:	ff 52 04             	call   DWORD PTR [edx+0x4]
  41b2dd:	8b ce                	mov    ecx,esi
  41b2df:	e8 5c 4b 00 00       	call   0x41fe40
  41b2e4:	8b ce                	mov    ecx,esi
  41b2e6:	e8 05 f8 ff ff       	call   0x41aaf0
  41b2eb:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  41b2ee:	3b fb                	cmp    edi,ebx
  41b2f0:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  41b2f3:	0f 84 84 03 00 00    	je     0x41b67d
  41b2f9:	8b 07                	mov    eax,DWORD PTR [edi]
  41b2fb:	6a 03                	push   0x3
  41b2fd:	8b cf                	mov    ecx,edi
  41b2ff:	ff 90 80 00 00 00    	call   DWORD PTR [eax+0x80]
  41b305:	8b 07                	mov    eax,DWORD PTR [edi]
  41b307:	8b cf                	mov    ecx,edi
  41b309:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  41b30c:	ff 90 14 01 00 00    	call   DWORD PTR [eax+0x114]
  41b312:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
  41b315:	50                   	push   eax
  41b316:	8b cf                	mov    ecx,edi
  41b318:	ff 92 ac 00 00 00    	call   DWORD PTR [edx+0xac]
  41b31e:	8b cf                	mov    ecx,edi
  41b320:	e8 4b 03 07 00       	call   0x48b670
  41b325:	3c 01                	cmp    al,0x1
  41b327:	0f 85 52 02 00 00    	jne    0x41b57f
  41b32d:	8b cf                	mov    ecx,edi
  41b32f:	e8 bc f7 ff ff       	call   0x41aaf0
  41b334:	3b fe                	cmp    edi,esi
  41b336:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  41b339:	53                   	push   ebx
  41b33a:	0f 85 ca 00 00 00    	jne    0x41b40a

; Message global 13 et evaluation du niveau, stats, HP — 0x41B766..0x41B927 exclu
; Appel Unit::SendGlobalEffectMessage(code 13). Routines GetLevel, GetMaxHP, STR/AGI/END/INT/WIS et leurs valeurs true dans une branche.
  41b766:	53                   	push   ebx
  41b767:	53                   	push   ebx
  41b768:	53                   	push   ebx
  41b769:	6a 0d                	push   0xd
  41b76b:	8b ce                	mov    ecx,esi
  41b76d:	c6 45 fc 0c          	mov    BYTE PTR [ebp-0x4],0xc
  41b771:	e8 ca 17 07 00       	call   0x48cf40
  41b776:	8b 06                	mov    eax,DWORD PTR [esi]
  41b778:	8b ce                	mov    ecx,esi
  41b77a:	ff 90 3c 01 00 00    	call   DWORD PTR [eax+0x13c]
  41b780:	66 3d 01 00          	cmp    ax,0x1
  41b784:	0f 86 e4 03 00 00    	jbe    0x41bb6e
  41b78a:	68 dc 22 50 00       	push   0x5022dc
  41b78f:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41b792:	e8 c1 62 0b 00       	call   0x4d1a58
  41b797:	8b 16                	mov    edx,DWORD PTR [esi]
  41b799:	8b ce                	mov    ecx,esi
  41b79b:	ff 92 3c 01 00 00    	call   DWORD PTR [edx+0x13c]
  41b7a1:	25 ff ff 00 00       	and    eax,0xffff
  41b7a6:	50                   	push   eax
  41b7a7:	8d 45 f0             	lea    eax,[ebp-0x10]
  41b7aa:	68 cc 22 50 00       	push   0x5022cc
  41b7af:	50                   	push   eax
  41b7b0:	e8 df 62 0b 00       	call   0x4d1a94
  41b7b5:	83 c4 0c             	add    esp,0xc
  41b7b8:	8d 4d f0             	lea    ecx,[ebp-0x10]
  41b7bb:	51                   	push   ecx
  41b7bc:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41b7bf:	e8 f4 62 0b 00       	call   0x4d1ab8
  41b7c4:	8b 16                	mov    edx,DWORD PTR [esi]
  41b7c6:	8b ce                	mov    ecx,esi
  41b7c8:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  41b7ce:	50                   	push   eax
  41b7cf:	8d 45 f0             	lea    eax,[ebp-0x10]
  41b7d2:	68 c0 22 50 00       	push   0x5022c0
  41b7d7:	50                   	push   eax
  41b7d8:	e8 b7 62 0b 00       	call   0x4d1a94
  41b7dd:	83 c4 0c             	add    esp,0xc
  41b7e0:	8d 4d f0             	lea    ecx,[ebp-0x10]
  41b7e3:	51                   	push   ecx
  41b7e4:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41b7e7:	e8 cc 62 0b 00       	call   0x4d1ab8
  41b7ec:	8b ce                	mov    ecx,esi
  41b7ee:	e8 bd 29 07 00       	call   0x48e1b0
  41b7f3:	8b ce                	mov    ecx,esi
  41b7f5:	25 ff ff 00 00       	and    eax,0xffff
  41b7fa:	50                   	push   eax
  41b7fb:	e8 60 2a 07 00       	call   0x48e260
  41b800:	8d 55 f0             	lea    edx,[ebp-0x10]
  41b803:	25 ff ff 00 00       	and    eax,0xffff
  41b808:	50                   	push   eax
  41b809:	68 b0 22 50 00       	push   0x5022b0
  41b80e:	52                   	push   edx
  41b80f:	e8 80 62 0b 00       	call   0x4d1a94
  41b814:	83 c4 10             	add    esp,0x10
  41b817:	8d 45 f0             	lea    eax,[ebp-0x10]
  41b81a:	50                   	push   eax
  41b81b:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41b81e:	e8 95 62 0b 00       	call   0x4d1ab8
  41b823:	8b ce                	mov    ecx,esi
  41b825:	e8 66 29 07 00       	call   0x48e190
  41b82a:	8b ce                	mov    ecx,esi
  41b82c:	25 ff ff 00 00       	and    eax,0xffff
  41b831:	50                   	push   eax
  41b832:	e8 09 2a 07 00       	call   0x48e240
  41b837:	8d 4d f0             	lea    ecx,[ebp-0x10]
  41b83a:	25 ff ff 00 00       	and    eax,0xffff
  41b83f:	50                   	push   eax
  41b840:	68 a0 22 50 00       	push   0x5022a0
  41b845:	51                   	push   ecx
  41b846:	e8 49 62 0b 00       	call   0x4d1a94
  41b84b:	83 c4 10             	add    esp,0x10
  41b84e:	8d 55 f0             	lea    edx,[ebp-0x10]
  41b851:	52                   	push   edx
  41b852:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41b855:	e8 5e 62 0b 00       	call   0x4d1ab8
  41b85a:	8b ce                	mov    ecx,esi
  41b85c:	e8 0f 29 07 00       	call   0x48e170
  41b861:	8b ce                	mov    ecx,esi
  41b863:	25 ff ff 00 00       	and    eax,0xffff
  41b868:	50                   	push   eax
  41b869:	e8 c2 29 07 00       	call   0x48e230
  41b86e:	25 ff ff 00 00       	and    eax,0xffff
  41b873:	50                   	push   eax
  41b874:	8d 45 f0             	lea    eax,[ebp-0x10]
  41b877:	68 90 22 50 00       	push   0x502290
  41b87c:	50                   	push   eax
  41b87d:	e8 12 62 0b 00       	call   0x4d1a94
  41b882:	83 c4 10             	add    esp,0x10
  41b885:	8d 4d f0             	lea    ecx,[ebp-0x10]
  41b888:	51                   	push   ecx
  41b889:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41b88c:	e8 27 62 0b 00       	call   0x4d1ab8
  41b891:	8b ce                	mov    ecx,esi
  41b893:	e8 b8 28 07 00       	call   0x48e150
  41b898:	8b ce                	mov    ecx,esi
  41b89a:	25 ff ff 00 00       	and    eax,0xffff
  41b89f:	50                   	push   eax
  41b8a0:	e8 ab 29 07 00       	call   0x48e250
  41b8a5:	8d 55 f0             	lea    edx,[ebp-0x10]
  41b8a8:	25 ff ff 00 00       	and    eax,0xffff
  41b8ad:	50                   	push   eax
  41b8ae:	68 80 22 50 00       	push   0x502280
  41b8b3:	52                   	push   edx
  41b8b4:	e8 db 61 0b 00       	call   0x4d1a94
  41b8b9:	83 c4 10             	add    esp,0x10
  41b8bc:	8d 45 f0             	lea    eax,[ebp-0x10]
  41b8bf:	50                   	push   eax
  41b8c0:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41b8c3:	e8 f0 61 0b 00       	call   0x4d1ab8
  41b8c8:	8b ce                	mov    ecx,esi
  41b8ca:	e8 01 29 07 00       	call   0x48e1d0
  41b8cf:	8b ce                	mov    ecx,esi
  41b8d1:	25 ff ff 00 00       	and    eax,0xffff
  41b8d6:	50                   	push   eax
  41b8d7:	e8 94 29 07 00       	call   0x48e270
  41b8dc:	8d 4d f0             	lea    ecx,[ebp-0x10]
  41b8df:	25 ff ff 00 00       	and    eax,0xffff
  41b8e4:	50                   	push   eax
  41b8e5:	68 70 22 50 00       	push   0x502270
  41b8ea:	51                   	push   ecx
  41b8eb:	e8 a4 61 0b 00       	call   0x4d1a94
  41b8f0:	83 c4 10             	add    esp,0x10
  41b8f3:	8d 55 f0             	lea    edx,[ebp-0x10]
  41b8f6:	52                   	push   edx
  41b8f7:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41b8fa:	e8 b9 61 0b 00       	call   0x4d1ab8
  41b8ff:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41b905:	8b 01                	mov    eax,DWORD PTR [ecx]
  41b907:	ff 50 04             	call   DWORD PTR [eax+0x4]
  41b90a:	53                   	push   ebx
  41b90b:	e8 00 64 05 00       	call   0x471d10
  41b910:	83 c4 04             	add    esp,0x4
  41b913:	85 c0                	test   eax,eax
  41b915:	74 18                	je     0x41b92f
  41b917:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  41b91a:	51                   	push   ecx
  41b91b:	6a 08                	push   0x8
  41b91d:	53                   	push   ebx
  41b91e:	e8 ed 63 05 00       	call   0x471d10
  41b923:	83 c4 04             	add    esp,0x4
  41b926:	50                   	push   eax

; Evaluation des penalites et deduction de l or — 0x41BB70..0x41BCBF exclu
; Appel GAME_RULES::DeathPenalties 0x438A20, lecture GetGold (slot +0x104), ecriture SetGold (+0x108) puis logs.
  41bb70:	8d 45 d4             	lea    eax,[ebp-0x2c]
  41bb73:	50                   	push   eax
  41bb74:	8b ce                	mov    ecx,esi
  41bb76:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  41bb79:	8b 8e 50 01 00 00    	mov    ecx,DWORD PTR [esi+0x150]
  41bb7f:	8b 96 54 01 00 00    	mov    edx,DWORD PTR [esi+0x154]
  41bb85:	8d 85 30 ff ff ff    	lea    eax,[ebp-0xd0]
  41bb8b:	50                   	push   eax
  41bb8c:	89 4d 88             	mov    DWORD PTR [ebp-0x78],ecx
  41bb8f:	89 55 8c             	mov    DWORD PTR [ebp-0x74],edx
  41bb92:	89 9d e0 fe ff ff    	mov    DWORD PTR [ebp-0x120],ebx
  41bb98:	c7 85 28 ff ff ff 8c 	mov    DWORD PTR [ebp-0xd8],0x4de58c
  41bb9f:	e5 4d 00 
  41bba2:	c7 85 2c ff ff ff ff 	mov    DWORD PTR [ebp-0xd4],0xffffffff
  41bba9:	ff ff ff 
  41bbac:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  41bbb2:	89 9d 4c ff ff ff    	mov    DWORD PTR [ebp-0xb4],ebx
  41bbb8:	89 9d 50 ff ff ff    	mov    DWORD PTR [ebp-0xb0],ebx
  41bbbe:	89 9d 54 ff ff ff    	mov    DWORD PTR [ebp-0xac],ebx
  41bbc4:	89 9d 58 ff ff ff    	mov    DWORD PTR [ebp-0xa8],ebx
  41bbca:	c7 85 28 ff ff ff 6c 	mov    DWORD PTR [ebp-0xd8],0x4de66c
  41bbd1:	e6 4d 00 
  41bbd4:	89 9d 68 ff ff ff    	mov    DWORD PTR [ebp-0x98],ebx
  41bbda:	c6 85 5c ff ff ff 08 	mov    BYTE PTR [ebp-0xa4],0x8
  41bbe1:	89 9d 60 ff ff ff    	mov    DWORD PTR [ebp-0xa0],ebx
  41bbe7:	8d 8d ec fe ff ff    	lea    ecx,[ebp-0x114]
  41bbed:	51                   	push   ecx
  41bbee:	c7 85 e4 fe ff ff 8c 	mov    DWORD PTR [ebp-0x11c],0x4de58c
  41bbf5:	e5 4d 00 
  41bbf8:	c7 85 e8 fe ff ff ff 	mov    DWORD PTR [ebp-0x118],0xffffffff
  41bbff:	ff ff ff 
  41bc02:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  41bc08:	89 9d 08 ff ff ff    	mov    DWORD PTR [ebp-0xf8],ebx
  41bc0e:	89 9d 0c ff ff ff    	mov    DWORD PTR [ebp-0xf4],ebx
  41bc14:	89 9d 10 ff ff ff    	mov    DWORD PTR [ebp-0xf0],ebx
  41bc1a:	89 9d 14 ff ff ff    	mov    DWORD PTR [ebp-0xec],ebx
  41bc20:	c7 85 e4 fe ff ff 6c 	mov    DWORD PTR [ebp-0x11c],0x4de66c
  41bc27:	e6 4d 00 
  41bc2a:	89 9d 24 ff ff ff    	mov    DWORD PTR [ebp-0xdc],ebx
  41bc30:	c6 85 18 ff ff ff 08 	mov    BYTE PTR [ebp-0xe8],0x8
  41bc37:	89 9d 1c ff ff ff    	mov    DWORD PTR [ebp-0xe4],ebx
  41bc3d:	8d 95 e0 fe ff ff    	lea    edx,[ebp-0x120]
  41bc43:	52                   	push   edx
  41bc44:	8d 85 28 ff ff ff    	lea    eax,[ebp-0xd8]
  41bc4a:	50                   	push   eax
  41bc4b:	8d 8d e4 fe ff ff    	lea    ecx,[ebp-0x11c]
  41bc51:	51                   	push   ecx
  41bc52:	57                   	push   edi
  41bc53:	56                   	push   esi
  41bc54:	c6 45 fc 10          	mov    BYTE PTR [ebp-0x4],0x10
  41bc58:	e8 c3 cd 01 00       	call   0x438a20
  41bc5d:	8b 16                	mov    edx,DWORD PTR [esi]
  41bc5f:	83 c4 14             	add    esp,0x14
  41bc62:	8b ce                	mov    ecx,esi
  41bc64:	ff 92 04 01 00 00    	call   DWORD PTR [edx+0x104]
  41bc6a:	8b 8d e0 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x120]
  41bc70:	3b c8                	cmp    ecx,eax
  41bc72:	73 11                	jae    0x41bc85
  41bc74:	8b 16                	mov    edx,DWORD PTR [esi]
  41bc76:	2b c1                	sub    eax,ecx
  41bc78:	6a 01                	push   0x1
  41bc7a:	50                   	push   eax
  41bc7b:	8b ce                	mov    ecx,esi
  41bc7d:	ff 92 08 01 00 00    	call   DWORD PTR [edx+0x108]
  41bc83:	eb 0d                	jmp    0x41bc92
  41bc85:	8b 06                	mov    eax,DWORD PTR [esi]
  41bc87:	6a 01                	push   0x1
  41bc89:	53                   	push   ebx
  41bc8a:	8b ce                	mov    ecx,esi
  41bc8c:	ff 90 08 01 00 00    	call   DWORD PTR [eax+0x108]
  41bc92:	8b 8d e0 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x120]
  41bc98:	51                   	push   ecx
  41bc99:	8d 55 f0             	lea    edx,[ebp-0x10]
  41bc9c:	68 28 22 50 00       	push   0x502228
  41bca1:	52                   	push   edx
  41bca2:	e8 ed 5d 0b 00       	call   0x4d1a94
  41bca7:	83 c4 0c             	add    esp,0xc
  41bcaa:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41bcad:	e8 ee 5d 0b 00       	call   0x4d1aa0
  41bcb2:	8d 4d f0             	lea    ecx,[ebp-0x10]
  41bcb5:	e8 e6 5d 0b 00       	call   0x4d1aa0
  41bcba:	8b 06                	mov    eax,DWORD PTR [esi]
  41bcbc:	8b ce                	mov    ecx,esi
  41bcbe:	ff 90 3c 01 00 00    	call   DWORD PTR [eax+0x13c]

; Aleatoire et creations dans la mort — 0x41BF7D..0x41C080 exclu
; Tirages RRandom et allocation par 0x441FF0 selon les sous-branches; destin des objets et conditions a distinguer.
  41bf7d:	e8 1e d1 03 00       	call   0x4590a0
  41bf82:	8d 4d 98             	lea    ecx,[ebp-0x68]
  41bf85:	51                   	push   ecx
  41bf86:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  41bf89:	c7 45 90 8c e5 4d 00 	mov    DWORD PTR [ebp-0x70],0x4de58c
  41bf90:	c7 45 94 ff ff ff ff 	mov    DWORD PTR [ebp-0x6c],0xffffffff
  41bf97:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  41bf9d:	33 c0                	xor    eax,eax
  41bf9f:	89 5d b4             	mov    DWORD PTR [ebp-0x4c],ebx
  41bfa2:	89 45 b8             	mov    DWORD PTR [ebp-0x48],eax
  41bfa5:	89 5d bc             	mov    DWORD PTR [ebp-0x44],ebx
  41bfa8:	89 5d c0             	mov    DWORD PTR [ebp-0x40],ebx
  41bfab:	c7 45 90 6c e6 4d 00 	mov    DWORD PTR [ebp-0x70],0x4de66c
  41bfb2:	89 5d d0             	mov    DWORD PTR [ebp-0x30],ebx
  41bfb5:	c6 45 c4 08          	mov    BYTE PTR [ebp-0x3c],0x8
  41bfb9:	89 5d c8             	mov    DWORD PTR [ebp-0x38],ebx
  41bfbc:	8b 8d 08 ff ff ff    	mov    ecx,DWORD PTR [ebp-0xf8]
  41bfc2:	33 d2                	xor    edx,edx
  41bfc4:	c6 45 fc 13          	mov    BYTE PTR [ebp-0x4],0x13
  41bfc8:	89 8d 04 ff ff ff    	mov    DWORD PTR [ebp-0xfc],ecx
  41bfce:	89 95 24 ff ff ff    	mov    DWORD PTR [ebp-0xdc],edx
  41bfd4:	c6 85 18 ff ff ff 08 	mov    BYTE PTR [ebp-0xe8],0x8
  41bfdb:	3b d3                	cmp    edx,ebx
  41bfdd:	74 0a                	je     0x41bfe9
  41bfdf:	8b 09                	mov    ecx,DWORD PTR [ecx]
  41bfe1:	89 8d 04 ff ff ff    	mov    DWORD PTR [ebp-0xfc],ecx
  41bfe7:	eb 0b                	jmp    0x41bff4
  41bfe9:	ba 01 00 00 00       	mov    edx,0x1
  41bfee:	89 95 24 ff ff ff    	mov    DWORD PTR [ebp-0xdc],edx
  41bff4:	3b cb                	cmp    ecx,ebx
  41bff6:	0f 84 9f 00 00 00    	je     0x41c09b
  41bffc:	8b 79 08             	mov    edi,DWORD PTR [ecx+0x8]
  41bfff:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
  41c002:	42                   	inc    edx
  41c003:	3b c3                	cmp    eax,ebx
  41c005:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
  41c008:	89 5d d0             	mov    DWORD PTR [ebp-0x30],ebx
  41c00b:	c6 45 c4 08          	mov    BYTE PTR [ebp-0x3c],0x8
  41c00f:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
  41c012:	89 55 c8             	mov    DWORD PTR [ebp-0x38],edx
  41c015:	6a 0c                	push   0xc
  41c017:	75 3d                	jne    0x41c056
  41c019:	e8 d2 5f 02 00       	call   0x441ff0
  41c01e:	83 c4 04             	add    esp,0x4
  41c021:	3b c3                	cmp    eax,ebx
  41c023:	74 07                	je     0x41c02c
  41c025:	89 18                	mov    DWORD PTR [eax],ebx
  41c027:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  41c02a:	eb 02                	jmp    0x41c02e
  41c02c:	33 c0                	xor    eax,eax
  41c02e:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
  41c031:	89 45 b8             	mov    DWORD PTR [ebp-0x48],eax
  41c034:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
  41c037:	89 18                	mov    DWORD PTR [eax],ebx
  41c039:	8b 55 b0             	mov    edx,DWORD PTR [ebp-0x50]
  41c03c:	89 5a 04             	mov    DWORD PTR [edx+0x4],ebx
  41c03f:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  41c042:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  41c045:	8b 8d 04 ff ff ff    	mov    ecx,DWORD PTR [ebp-0xfc]
  41c04b:	8b 95 24 ff ff ff    	mov    edx,DWORD PTR [ebp-0xdc]
  41c051:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
  41c054:	eb 85                	jmp    0x41bfdb
  41c056:	e8 95 5f 02 00       	call   0x441ff0
  41c05b:	83 c4 04             	add    esp,0x4
  41c05e:	3b c3                	cmp    eax,ebx
  41c060:	74 07                	je     0x41c069
  41c062:	89 18                	mov    DWORD PTR [eax],ebx
  41c064:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  41c067:	eb 02                	jmp    0x41c06b
  41c069:	33 c0                	xor    eax,eax
  41c06b:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  41c06e:	89 01                	mov    DWORD PTR [ecx],eax
  41c070:	8b 55 bc             	mov    edx,DWORD PTR [ebp-0x44]
  41c073:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
  41c076:	89 45 b8             	mov    DWORD PTR [ebp-0x48],eax
  41c079:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  41c07c:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
  41c07f:	89 18                	mov    DWORD PTR [eax],ebx

; Recherche de position et depot dans le monde — 0x41C19C..0x41C398 exclu
; GetWorld, tests IsBlocking et FindValidSpot, puis deposit_unit selon les bornes et conditions.
  41c19c:	e8 1f 5d 05 00       	call   0x471ec0
  41c1a1:	83 c4 04             	add    esp,0x4
  41c1a4:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  41c1a7:	3b c3                	cmp    eax,ebx
  41c1a9:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
  41c1ac:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
  41c1af:	0f 84 1f 03 00 00    	je     0x41c4d4
  41c1b5:	89 5d d0             	mov    DWORD PTR [ebp-0x30],ebx
  41c1b8:	c6 45 c4 08          	mov    BYTE PTR [ebp-0x3c],0x8
  41c1bc:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  41c1bf:	3b cb                	cmp    ecx,ebx
  41c1c1:	74 07                	je     0x41c1ca
  41c1c3:	8b 00                	mov    eax,DWORD PTR [eax]
  41c1c5:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
  41c1c8:	eb 08                	jmp    0x41c1d2
  41c1ca:	b9 01 00 00 00       	mov    ecx,0x1
  41c1cf:	89 4d d0             	mov    DWORD PTR [ebp-0x30],ecx
  41c1d2:	3b c3                	cmp    eax,ebx
  41c1d4:	0f 84 ed 02 00 00    	je     0x41c4c7
  41c1da:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
  41c1dd:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  41c1e0:	8b 5d d8             	mov    ebx,DWORD PTR [ebp-0x28]
  41c1e3:	8b 7d d4             	mov    edi,DWORD PTR [ebp-0x2c]
  41c1e6:	89 4d 80             	mov    DWORD PTR [ebp-0x80],ecx
  41c1e9:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  41c1ec:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  41c1ef:	8b c1                	mov    eax,ecx
  41c1f1:	41                   	inc    ecx
  41c1f2:	83 f8 07             	cmp    eax,0x7
  41c1f5:	89 9d 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],ebx
  41c1fb:	89 4d 0c             	mov    DWORD PTR [ebp+0xc],ecx
  41c1fe:	0f 87 b7 00 00 00    	ja     0x41c2bb
  41c204:	ff 24 85 d8 cb 41 00 	jmp    DWORD PTR [eax*4+0x41cbd8]
  41c20b:	6a 02                	push   0x2
  41c20d:	6a 01                	push   0x1
  41c20f:	b9 34 5e 51 00       	mov    ecx,0x515e34
  41c214:	e8 87 ce 03 00       	call   0x4590a0
  41c219:	8b f8                	mov    edi,eax
  41c21b:	03 7d d4             	add    edi,DWORD PTR [ebp-0x2c]
  41c21e:	e9 98 00 00 00       	jmp    0x41c2bb
  41c223:	6a 02                	push   0x2
  41c225:	6a 01                	push   0x1
  41c227:	b9 34 5e 51 00       	mov    ecx,0x515e34
  41c22c:	e8 6f ce 03 00       	call   0x4590a0
  41c231:	8b 7d d4             	mov    edi,DWORD PTR [ebp-0x2c]
  41c234:	2b f8                	sub    edi,eax
  41c236:	e9 80 00 00 00       	jmp    0x41c2bb
  41c23b:	6a 02                	push   0x2
  41c23d:	6a 01                	push   0x1
  41c23f:	b9 34 5e 51 00       	mov    ecx,0x515e34
  41c244:	e8 57 ce 03 00       	call   0x4590a0
  41c249:	8b 5d d4             	mov    ebx,DWORD PTR [ebp-0x2c]
  41c24c:	8b f8                	mov    edi,eax
  41c24e:	03 fb                	add    edi,ebx
  41c250:	eb 28                	jmp    0x41c27a
  41c252:	6a 02                	push   0x2
  41c254:	6a 01                	push   0x1
  41c256:	b9 34 5e 51 00       	mov    ecx,0x515e34
  41c25b:	e8 40 ce 03 00       	call   0x4590a0
  41c260:	8b f8                	mov    edi,eax
  41c262:	03 7d d4             	add    edi,DWORD PTR [ebp-0x2c]
  41c265:	eb 3b                	jmp    0x41c2a2
  41c267:	6a 02                	push   0x2
  41c269:	6a 01                	push   0x1
  41c26b:	b9 34 5e 51 00       	mov    ecx,0x515e34
  41c270:	e8 2b ce 03 00       	call   0x4590a0
  41c275:	8b 7d d4             	mov    edi,DWORD PTR [ebp-0x2c]
  41c278:	2b f8                	sub    edi,eax
  41c27a:	6a 02                	push   0x2
  41c27c:	6a 01                	push   0x1
  41c27e:	b9 34 5e 51 00       	mov    ecx,0x515e34
  41c283:	e8 18 ce 03 00       	call   0x4590a0
  41c288:	8b d8                	mov    ebx,eax
  41c28a:	03 5d d8             	add    ebx,DWORD PTR [ebp-0x28]
  41c28d:	eb 26                	jmp    0x41c2b5
  41c28f:	6a 02                	push   0x2
  41c291:	6a 01                	push   0x1
  41c293:	b9 34 5e 51 00       	mov    ecx,0x515e34
  41c298:	e8 03 ce 03 00       	call   0x4590a0
  41c29d:	8b 7d d4             	mov    edi,DWORD PTR [ebp-0x2c]
  41c2a0:	2b f8                	sub    edi,eax
  41c2a2:	6a 02                	push   0x2
  41c2a4:	6a 01                	push   0x1
  41c2a6:	b9 34 5e 51 00       	mov    ecx,0x515e34
  41c2ab:	e8 f0 cd 03 00       	call   0x4590a0
  41c2b0:	8b 5d d8             	mov    ebx,DWORD PTR [ebp-0x28]
  41c2b3:	2b d8                	sub    ebx,eax
  41c2b5:	89 9d 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],ebx
  41c2bb:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  41c2be:	8b 4d 80             	mov    ecx,DWORD PTR [ebp-0x80]
  41c2c1:	33 d2                	xor    edx,edx
  41c2c3:	83 f8 07             	cmp    eax,0x7
  41c2c6:	0f 9f c2             	setg   dl
  41c2c9:	6a 00                	push   0x0
  41c2cb:	6a 00                	push   0x0
  41c2cd:	6a 00                	push   0x0
  41c2cf:	83 ec 0c             	sub    esp,0xc
  41c2d2:	4a                   	dec    edx
  41c2d3:	23 d0                	and    edx,eax
  41c2d5:	8b c4                	mov    eax,esp
  41c2d7:	89 38                	mov    DWORD PTR [eax],edi
  41c2d9:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  41c2dc:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  41c2df:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  41c2e2:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
  41c2e5:	e8 66 2f 09 00       	call   0x4af250
  41c2ea:	85 c0                	test   eax,eax
  41c2ec:	74 38                	je     0x41c326
  41c2ee:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  41c2f1:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  41c2f4:	6a 02                	push   0x2
  41c2f6:	83 ec 0c             	sub    esp,0xc
  41c2f9:	8b d4                	mov    edx,esp
  41c2fb:	89 02                	mov    DWORD PTR [edx],eax
  41c2fd:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  41c300:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  41c303:	8d 8d cc fe ff ff    	lea    ecx,[ebp-0x134]
  41c309:	51                   	push   ecx
  41c30a:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  41c30d:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  41c310:	e8 8b 5e 09 00       	call   0x4b21a0
  41c315:	8b 38                	mov    edi,DWORD PTR [eax]
  41c317:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
  41c31a:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  41c31d:	89 9d 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],ebx
  41c323:	89 55 80             	mov    DWORD PTR [ebp-0x80],edx
  41c326:	85 ff                	test   edi,edi
  41c328:	0f 8e cc 00 00 00    	jle    0x41c3fa
  41c32e:	85 db                	test   ebx,ebx
  41c330:	0f 8e c4 00 00 00    	jle    0x41c3fa
  41c336:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  41c339:	8b 55 80             	mov    edx,DWORD PTR [ebp-0x80]
  41c33c:	50                   	push   eax
  41c33d:	83 ec 0c             	sub    esp,0xc
  41c340:	8b cc                	mov    ecx,esp
  41c342:	89 39                	mov    DWORD PTR [ecx],edi
  41c344:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  41c347:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  41c34a:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  41c34d:	e8 be 2d 09 00       	call   0x4af110
  41c352:	6a 03                	push   0x3
  41c354:	e8 b7 59 05 00       	call   0x471d10
  41c359:	83 c4 04             	add    esp,0x4
  41c35c:	85 c0                	test   eax,eax
  41c35e:	74 6e                	je     0x41c3ce
  41c360:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  41c363:	8b 18                	mov    ebx,DWORD PTR [eax]
  41c365:	e8 f6 16 02 00       	call   0x43da60
  41c36a:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  41c36d:	8b d3                	mov    edx,ebx
  41c36f:	8b 5d e8             	mov    ebx,DWORD PTR [ebp-0x18]
  41c372:	50                   	push   eax
  41c373:	51                   	push   ecx
  41c374:	8b cb                	mov    ecx,ebx
  41c376:	ff 52 48             	call   DWORD PTR [edx+0x48]
  41c379:	8b 4d 80             	mov    ecx,DWORD PTR [ebp-0x80]
  41c37c:	8b 00                	mov    eax,DWORD PTR [eax]
  41c37e:	8b 95 7c ff ff ff    	mov    edx,DWORD PTR [ebp-0x84]
  41c384:	51                   	push   ecx
  41c385:	52                   	push   edx
  41c386:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
  41c389:	8b 03                	mov    eax,DWORD PTR [ebx]
  41c38b:	57                   	push   edi
  41c38c:	8b cb                	mov    ecx,ebx
  41c38e:	c6 45 fc 14          	mov    BYTE PTR [ebp-0x4],0x14
  41c392:	ff 50 28             	call   DWORD PTR [eax+0x28]
  41c395:	8b 4d 8c             	mov    ecx,DWORD PTR [ebp-0x74]

; Paquets de mort, effet public, teleportation — 0x41C5EF..0x41C7BB exclu
; Creations TFCPacket, GetNextGlobalEffectID, Broadcast::BCSpellEffect, Teleport (slot +0x10C), SetUnderBlock et paquet 0x3F.
  41c5ef:	e8 cc 58 05 00       	call   0x471ec0
  41c5f4:	83 c4 04             	add    esp,0x4
  41c5f7:	85 c0                	test   eax,eax
  41c5f9:	74 1c                	je     0x41c617
  41c5fb:	33 c9                	xor    ecx,ecx
  41c5fd:	66 8b 48 2c          	mov    cx,WORD PTR [eax+0x2c]
  41c601:	3b f9                	cmp    edi,ecx
  41c603:	7d 12                	jge    0x41c617
  41c605:	33 d2                	xor    edx,edx
  41c607:	66 8b 50 2e          	mov    dx,WORD PTR [eax+0x2e]
  41c60b:	3b da                	cmp    ebx,edx
  41c60d:	7d 08                	jge    0x41c617
  41c60f:	85 ff                	test   edi,edi
  41c611:	7c 04                	jl     0x41c617
  41c613:	85 db                	test   ebx,ebx
  41c615:	7d 14                	jge    0x41c62b
  41c617:	a1 58 e6 4d 00       	mov    eax,ds:0x4de658
  41c61c:	8b 3d 50 e6 4d 00    	mov    edi,DWORD PTR ds:0x4de650
  41c622:	8b 1d 54 e6 4d 00    	mov    ebx,DWORD PTR ds:0x4de654
  41c628:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
  41c62b:	8d 8d 9c fe ff ff    	lea    ecx,[ebp-0x164]
  41c631:	e8 ba 97 06 00       	call   0x485df0
  41c636:	6a 2c                	push   0x2c
  41c638:	8d 8d 9c fe ff ff    	lea    ecx,[ebp-0x164]
  41c63e:	c6 45 fc 15          	mov    BYTE PTR [ebp-0x4],0x15
  41c642:	e8 09 9b 06 00       	call   0x486150
  41c647:	8b 16                	mov    edx,DWORD PTR [esi]
  41c649:	8b ce                	mov    ecx,esi
  41c64b:	ff 52 54             	call   DWORD PTR [edx+0x54]
  41c64e:	8b c2                	mov    eax,edx
  41c650:	52                   	push   edx
  41c651:	8d 8d 9c fe ff ff    	lea    ecx,[ebp-0x164]
  41c657:	c1 f8 1f             	sar    eax,0x1f
  41c65a:	e8 91 9b 06 00       	call   0x4861f0
  41c65f:	8b 16                	mov    edx,DWORD PTR [esi]
  41c661:	8b ce                	mov    ecx,esi
  41c663:	ff 52 54             	call   DWORD PTR [edx+0x54]
  41c666:	50                   	push   eax
  41c667:	8d 8d 9c fe ff ff    	lea    ecx,[ebp-0x164]
  41c66d:	e8 7e 9b 06 00       	call   0x4861f0
  41c672:	8b 06                	mov    eax,DWORD PTR [esi]
  41c674:	8d 8d 9c fe ff ff    	lea    ecx,[ebp-0x164]
  41c67a:	51                   	push   ecx
  41c67b:	8b ce                	mov    ecx,esi
  41c67d:	ff 90 4c 01 00 00    	call   DWORD PTR [eax+0x14c]
  41c683:	6a 00                	push   0x0
  41c685:	6a 00                	push   0x0
  41c687:	e8 84 61 04 00       	call   0x462810
  41c68c:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
  41c68f:	50                   	push   eax
  41c690:	33 c0                	xor    eax,eax
  41c692:	83 ec 0c             	sub    esp,0xc
  41c695:	8b d4                	mov    edx,esp
  41c697:	89 02                	mov    DWORD PTR [edx],eax
  41c699:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  41c69c:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  41c69f:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
  41c6a2:	83 ec 0c             	sub    esp,0xc
  41c6a5:	8b c4                	mov    eax,esp
  41c6a7:	89 08                	mov    DWORD PTR [eax],ecx
  41c6a9:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
  41c6ac:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  41c6af:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  41c6b2:	6a 00                	push   0x0
  41c6b4:	8b ce                	mov    ecx,esi
  41c6b6:	e8 45 f0 06 00       	call   0x48b700
  41c6bb:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  41c6be:	50                   	push   eax
  41c6bf:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  41c6c2:	68 3c 75 00 00       	push   0x753c
  41c6c7:	6a 14                	push   0x14
  41c6c9:	83 ec 0c             	sub    esp,0xc
  41c6cc:	8b d4                	mov    edx,esp
  41c6ce:	89 02                	mov    DWORD PTR [edx],eax
  41c6d0:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  41c6d3:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  41c6d6:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  41c6d9:	e8 22 38 ff ff       	call   0x40ff00
  41c6de:	8b 4d 80             	mov    ecx,DWORD PTR [ebp-0x80]
  41c6e1:	8b 16                	mov    edx,DWORD PTR [esi]
  41c6e3:	83 c4 40             	add    esp,0x40
  41c6e6:	6a 01                	push   0x1
  41c6e8:	83 ec 0c             	sub    esp,0xc
  41c6eb:	8b c4                	mov    eax,esp
  41c6ed:	89 38                	mov    DWORD PTR [eax],edi
  41c6ef:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  41c6f2:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  41c6f5:	8b ce                	mov    ecx,esi
  41c6f7:	ff 92 0c 01 00 00    	call   DWORD PTR [edx+0x10c]
  41c6fd:	6a 07                	push   0x7
  41c6ff:	8b ce                	mov    ecx,esi
  41c701:	e8 7a 2d 07 00       	call   0x48f480
  41c706:	8d 8d b4 fe ff ff    	lea    ecx,[ebp-0x14c]
  41c70c:	e8 df 96 06 00       	call   0x485df0
  41c711:	b3 16                	mov    bl,0x16
  41c713:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  41c716:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  41c719:	e8 40 53 0b 00       	call   0x4d1a5e
  41c71e:	33 d2                	xor    edx,edx
  41c720:	66 8b 96 1c 01 00 00 	mov    dx,WORD PTR [esi+0x11c]
  41c727:	68 58 13 51 00       	push   0x511358
  41c72c:	c6 45 fc 17          	mov    BYTE PTR [ebp-0x4],0x17
  41c730:	52                   	push   edx
  41c731:	6a 10                	push   0x10
  41c733:	e8 b8 12 02 00       	call   0x43d9f0
  41c738:	83 c4 0c             	add    esp,0xc
  41c73b:	50                   	push   eax
  41c73c:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  41c73f:	e8 14 53 0b 00       	call   0x4d1a58
  41c744:	6a 3f                	push   0x3f
  41c746:	8d 8d b4 fe ff ff    	lea    ecx,[ebp-0x14c]
  41c74c:	e8 ff 99 06 00       	call   0x486150
  41c751:	6a 1e                	push   0x1e
  41c753:	8d 8d b4 fe ff ff    	lea    ecx,[ebp-0x14c]
  41c759:	e8 f2 99 06 00       	call   0x486150
  41c75e:	6a 03                	push   0x3
  41c760:	8d 8d b4 fe ff ff    	lea    ecx,[ebp-0x14c]
  41c766:	e8 e5 99 06 00       	call   0x486150
  41c76b:	8d 45 0c             	lea    eax,[ebp+0xc]
  41c76e:	50                   	push   eax
  41c76f:	8d 8d b4 fe ff ff    	lea    ecx,[ebp-0x14c]
  41c775:	e8 d6 9b 06 00       	call   0x486350
  41c77a:	8b 16                	mov    edx,DWORD PTR [esi]
  41c77c:	8d 85 b4 fe ff ff    	lea    eax,[ebp-0x14c]
  41c782:	50                   	push   eax
  41c783:	8b ce                	mov    ecx,esi
  41c785:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  41c78b:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  41c78e:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  41c791:	e8 aa 52 0b 00       	call   0x4d1a40
  41c796:	8d 8d b4 fe ff ff    	lea    ecx,[ebp-0x14c]
  41c79c:	c6 45 fc 15          	mov    BYTE PTR [ebp-0x4],0x15
  41c7a0:	e8 db 96 06 00       	call   0x485e80
  41c7a5:	8b 8d d8 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x128]
  41c7ab:	8b 11                	mov    edx,DWORD PTR [ecx]
  41c7ad:	ff 52 08             	call   DWORD PTR [edx+0x8]
  41c7b0:	8d 8d 9c fe ff ff    	lea    ecx,[ebp-0x164]
  41c7b6:	c6 45 fc 13          	mov    BYTE PTR [ebp-0x4],0x13
  41c7ba:	e8 c1 96 06 00       	call   0x485e80
