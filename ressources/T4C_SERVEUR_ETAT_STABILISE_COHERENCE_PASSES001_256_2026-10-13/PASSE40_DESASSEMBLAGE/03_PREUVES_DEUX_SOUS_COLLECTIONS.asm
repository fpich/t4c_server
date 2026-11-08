; PASSE 40, recherche statique du serveur ; SHA256=13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Toute instruction presente ci-dessous a ete confrontee a .text du binaire fourni.
; Les stops sont exclusifs; la selection est liee au travail de lecture des fonctions.

; Construction de la premiere sous collection vecteur d elements 0x2C
; 0x004A71B0..0x004A7214 exclusif
  4a71b0:	55                   	push   ebp
  4a71b1:	8b ec                	mov    ebp,esp
  4a71b3:	6a ff                	push   0xffffffff
  4a71b5:	68 c3 bc 4d 00       	push   0x4dbcc3
  4a71ba:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a71c0:	50                   	push   eax
  4a71c1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a71c8:	51                   	push   ecx
  4a71c9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a71cc:	56                   	push   esi
  4a71cd:	8b f1                	mov    esi,ecx
  4a71cf:	50                   	push   eax
  4a71d0:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4a71d3:	e8 68 66 00 00       	call   0x4ad840
  4a71d8:	8a 4d 0b             	mov    cl,BYTE PTR [ebp+0xb]
  4a71db:	33 c0                	xor    eax,eax
  4a71dd:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  4a71e0:	88 4e 1c             	mov    BYTE PTR [esi+0x1c],cl
  4a71e3:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4a71e6:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  4a71e9:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  4a71ec:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4a71ef:	52                   	push   edx
  4a71f0:	8b ce                	mov    ecx,esi
  4a71f2:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4a71f6:	c7 06 28 fa 4d 00    	mov    DWORD PTR [esi],0x4dfa28
  4a71fc:	e8 8f 66 00 00       	call   0x4ad890
  4a7201:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a7204:	8b c6                	mov    eax,esi
  4a7206:	5e                   	pop    esi
  4a7207:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a720e:	8b e5                	mov    esp,ebp
  4a7210:	5d                   	pop    ebp
  4a7211:	c2 08 00             	ret    0x8

; Destruction des elements de 0x2C de la premiere sous collection
; 0x004A7250..0x004A72D1 exclusif
  4a7250:	55                   	push   ebp
  4a7251:	8b ec                	mov    ebp,esp
  4a7253:	6a ff                	push   0xffffffff
  4a7255:	68 d8 bc 4d 00       	push   0x4dbcd8
  4a725a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a7260:	50                   	push   eax
  4a7261:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a7268:	51                   	push   ecx
  4a7269:	56                   	push   esi
  4a726a:	57                   	push   edi
  4a726b:	8b f9                	mov    edi,ecx
  4a726d:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
  4a7270:	c7 07 28 fa 4d 00    	mov    DWORD PTR [edi],0x4dfa28
  4a7276:	8b 77 20             	mov    esi,DWORD PTR [edi+0x20]
  4a7279:	85 f6                	test   esi,esi
  4a727b:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4a7282:	74 24                	je     0x4a72a8
  4a7284:	53                   	push   ebx
  4a7285:	8b 5f 24             	mov    ebx,DWORD PTR [edi+0x24]
  4a7288:	3b f3                	cmp    esi,ebx
  4a728a:	74 0f                	je     0x4a729b
  4a728c:	8b 06                	mov    eax,DWORD PTR [esi]
  4a728e:	6a 00                	push   0x0
  4a7290:	8b ce                	mov    ecx,esi
  4a7292:	ff 10                	call   DWORD PTR [eax]
  4a7294:	83 c6 2c             	add    esi,0x2c
  4a7297:	3b f3                	cmp    esi,ebx
  4a7299:	75 f1                	jne    0x4a728c
  4a729b:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  4a729e:	50                   	push   eax
  4a729f:	e8 bc ad f9 ff       	call   0x442060
  4a72a4:	83 c4 04             	add    esp,0x4
  4a72a7:	5b                   	pop    ebx
  4a72a8:	33 c0                	xor    eax,eax
  4a72aa:	8b cf                	mov    ecx,edi
  4a72ac:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  4a72af:	89 47 24             	mov    DWORD PTR [edi+0x24],eax
  4a72b2:	89 47 28             	mov    DWORD PTR [edi+0x28],eax
  4a72b5:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4a72bc:	e8 af 65 00 00       	call   0x4ad870
  4a72c1:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a72c4:	5f                   	pop    edi
  4a72c5:	5e                   	pop    esi
  4a72c6:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a72cd:	8b e5                	mov    esp,ebp
  4a72cf:	5d                   	pop    ebp
  4a72d0:	c3                   	ret

; Lecture du nombre d elements dans premiere sous-collection et ajout
; 0x004A73A0..0x004A748A exclusif
  4a73a0:	55                   	push   ebp
  4a73a1:	8b ec                	mov    ebp,esp
  4a73a3:	6a ff                	push   0xffffffff
  4a73a5:	68 f8 bc 4d 00       	push   0x4dbcf8
  4a73aa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a73b0:	50                   	push   eax
  4a73b1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a73b8:	81 ec 38 08 00 00    	sub    esp,0x838
  4a73be:	53                   	push   ebx
  4a73bf:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  4a73c2:	56                   	push   esi
  4a73c3:	8b f1                	mov    esi,ecx
  4a73c5:	57                   	push   edi
  4a73c6:	8d 7e 18             	lea    edi,[esi+0x18]
  4a73c9:	57                   	push   edi
  4a73ca:	8b cb                	mov    ecx,ebx
  4a73cc:	e8 af 27 ff ff       	call   0x499b80
  4a73d1:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  4a73d4:	8b 0f                	mov    ecx,DWORD PTR [edi]
  4a73d6:	51                   	push   ecx
  4a73d7:	c6 85 bc f7 ff ff 00 	mov    BYTE PTR [ebp-0x844],0x0
  4a73de:	8b 10                	mov    edx,DWORD PTR [eax]
  4a73e0:	8d 85 bc f7 ff ff    	lea    eax,[ebp-0x844]
  4a73e6:	68 a4 f5 50 00       	push   0x50f5a4
  4a73eb:	50                   	push   eax
  4a73ec:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
  4a73ef:	e8 4c c5 f5 ff       	call   0x403940
  4a73f4:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  4a73f7:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  4a73fa:	83 c4 0c             	add    esp,0xc
  4a73fd:	50                   	push   eax
  4a73fe:	51                   	push   ecx
  4a73ff:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  4a7402:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4a7405:	8d 45 f0             	lea    eax,[ebp-0x10]
  4a7408:	50                   	push   eax
  4a7409:	8b cb                	mov    ecx,ebx
  4a740b:	c7 45 f0 ef cd ab 00 	mov    DWORD PTR [ebp-0x10],0xabcdef
  4a7412:	e8 69 27 ff ff       	call   0x499b80
  4a7417:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  4a741a:	33 ff                	xor    edi,edi
  4a741c:	85 c0                	test   eax,eax
  4a741e:	76 59                	jbe    0x4a7479
  4a7420:	8d 5e 1c             	lea    ebx,[esi+0x1c]
  4a7423:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  4a7426:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  4a7429:	51                   	push   ecx
  4a742a:	52                   	push   edx
  4a742b:	8d 4d bc             	lea    ecx,[ebp-0x44]
  4a742e:	e8 dd f9 ff ff       	call   0x4a6e10
  4a7433:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4a7436:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4a7439:	50                   	push   eax
  4a743a:	51                   	push   ecx
  4a743b:	8d 4d bc             	lea    ecx,[ebp-0x44]
  4a743e:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4a7445:	e8 46 fb ff ff       	call   0x4a6f90
  4a744a:	8d 55 bc             	lea    edx,[ebp-0x44]
  4a744d:	52                   	push   edx
  4a744e:	51                   	push   ecx
  4a744f:	54                   	push   esp
  4a7450:	8b cb                	mov    ecx,ebx
  4a7452:	e8 e9 02 00 00       	call   0x4a7740
  4a7457:	8d 45 e8             	lea    eax,[ebp-0x18]
  4a745a:	50                   	push   eax
  4a745b:	8b cb                	mov    ecx,ebx
  4a745d:	e8 ee 02 00 00       	call   0x4a7750
  4a7462:	8d 4d bc             	lea    ecx,[ebp-0x44]
  4a7465:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4a746c:	e8 3f fa ff ff       	call   0x4a6eb0
  4a7471:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  4a7474:	47                   	inc    edi
  4a7475:	3b f8                	cmp    edi,eax
  4a7477:	72 aa                	jb     0x4a7423
  4a7479:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a747c:	5f                   	pop    edi
  4a747d:	5e                   	pop    esi
  4a747e:	5b                   	pop    ebx
  4a747f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a7486:	8b e5                	mov    esp,ebp
  4a7488:	5d                   	pop    ebp
  4a7489:	c2                   	.byte 0xc2

; Construction seconde structure
; 0x004A8110..0x004A8163 exclusif
  4a8110:	55                   	push   ebp
  4a8111:	8b ec                	mov    ebp,esp
  4a8113:	6a ff                	push   0xffffffff
  4a8115:	68 d8 bd 4d 00       	push   0x4dbdd8
  4a811a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a8120:	50                   	push   eax
  4a8121:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a8128:	51                   	push   ecx
  4a8129:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a812c:	56                   	push   esi
  4a812d:	8b f1                	mov    esi,ecx
  4a812f:	50                   	push   eax
  4a8130:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4a8133:	e8 08 57 00 00       	call   0x4ad840
  4a8138:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4a813b:	51                   	push   ecx
  4a813c:	8b ce                	mov    ecx,esi
  4a813e:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4a8145:	c7 06 48 fa 4d 00    	mov    DWORD PTR [esi],0x4dfa48
  4a814b:	e8 40 57 00 00       	call   0x4ad890
  4a8150:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a8153:	8b c6                	mov    eax,esi
  4a8155:	5e                   	pop    esi
  4a8156:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a815d:	8b e5                	mov    esp,ebp
  4a815f:	5d                   	pop    ebp
  4a8160:	c2 08 00             	ret    0x8

; Lecture scalaire DWORD dans seconde sous-collection
; 0x004A8210..0x004A8261 exclusif
  4a8210:	55                   	push   ebp
  4a8211:	8b ec                	mov    ebp,esp
  4a8213:	81 ec 00 08 00 00    	sub    esp,0x800
  4a8219:	53                   	push   ebx
  4a821a:	56                   	push   esi
  4a821b:	8b f1                	mov    esi,ecx
  4a821d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4a8220:	57                   	push   edi
  4a8221:	8d 7e 18             	lea    edi,[esi+0x18]
  4a8224:	57                   	push   edi
  4a8225:	e8 56 19 ff ff       	call   0x499b80
  4a822a:	8b 0f                	mov    ecx,DWORD PTR [edi]
  4a822c:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  4a822f:	51                   	push   ecx
  4a8230:	8d 95 00 f8 ff ff    	lea    edx,[ebp-0x800]
  4a8236:	68 50 f6 50 00       	push   0x50f650
  4a823b:	c6 85 00 f8 ff ff 00 	mov    BYTE PTR [ebp-0x800],0x0
  4a8242:	8b 18                	mov    ebx,DWORD PTR [eax]
  4a8244:	52                   	push   edx
  4a8245:	e8 f6 b6 f5 ff       	call   0x403940
  4a824a:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  4a824d:	83 c4 0c             	add    esp,0xc
  4a8250:	50                   	push   eax
  4a8251:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  4a8254:	50                   	push   eax
  4a8255:	ff 53 04             	call   DWORD PTR [ebx+0x4]
  4a8258:	5f                   	pop    edi
  4a8259:	5e                   	pop    esi
  4a825a:	5b                   	pop    ebx
  4a825b:	8b e5                	mov    esp,ebp
  4a825d:	5d                   	pop    ebp
  4a825e:	c2 08 00             	ret    0x8

; Deuxieme liste: insertion par le helper 0x4A9ED0
; 0x004A9DB0..0x004A9E20 exclusif
  4a9db0:	55                   	push   ebp
  4a9db1:	8b ec                	mov    ebp,esp
  4a9db3:	56                   	push   esi
  4a9db4:	57                   	push   edi
  4a9db5:	8b f9                	mov    edi,ecx
  4a9db7:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  4a9dba:	85 f6                	test   esi,esi
  4a9dbc:	74 18                	je     0x4a9dd6
  4a9dbe:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  4a9dc1:	2b ce                	sub    ecx,esi
  4a9dc3:	b8 e9 a2 8b 2e       	mov    eax,0x2e8ba2e9
  4a9dc8:	f7 e9                	imul   ecx
  4a9dca:	c1 fa 03             	sar    edx,0x3
  4a9dcd:	8b c2                	mov    eax,edx
  4a9dcf:	c1 e8 1f             	shr    eax,0x1f
  4a9dd2:	03 d0                	add    edx,eax
  4a9dd4:	75 04                	jne    0x4a9dda
  4a9dd6:	33 f6                	xor    esi,esi
  4a9dd8:	eb 18                	jmp    0x4a9df2
  4a9dda:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4a9ddd:	2b ce                	sub    ecx,esi
  4a9ddf:	b8 e9 a2 8b 2e       	mov    eax,0x2e8ba2e9
  4a9de4:	f7 e9                	imul   ecx
  4a9de6:	c1 fa 03             	sar    edx,0x3
  4a9de9:	8b ca                	mov    ecx,edx
  4a9deb:	c1 e9 1f             	shr    ecx,0x1f
  4a9dee:	03 d1                	add    edx,ecx
  4a9df0:	8b f2                	mov    esi,edx
  4a9df2:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4a9df5:	52                   	push   edx
  4a9df6:	6a 01                	push   0x1
  4a9df8:	51                   	push   ecx
  4a9df9:	8d 45 0c             	lea    eax,[ebp+0xc]
  4a9dfc:	8b cc                	mov    ecx,esp
  4a9dfe:	50                   	push   eax
  4a9dff:	e8 bc 00 00 00       	call   0x4a9ec0
  4a9e04:	8b cf                	mov    ecx,edi
  4a9e06:	e8 25 02 00 00       	call   0x4aa030
  4a9e0b:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  4a9e0e:	8d 0c b6             	lea    ecx,[esi+esi*4]
  4a9e11:	8d 14 4e             	lea    edx,[esi+ecx*2]
  4a9e14:	8d 0c 90             	lea    ecx,[eax+edx*4]
  4a9e17:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a9e1a:	5f                   	pop    edi
  4a9e1b:	89 08                	mov    DWORD PTR [eax],ecx
  4a9e1d:	5e                   	pop    esi
  4a9e1e:	5d                   	pop    ebp
  4a9e1f:	c2                   	.byte 0xc2

; Premiere liste: insertion via 0x4A7750, stride 0x2C
; 0x004A7750..0x004A77C2 exclusif
  4a7750:	55                   	push   ebp
  4a7751:	8b ec                	mov    ebp,esp
  4a7753:	56                   	push   esi
  4a7754:	57                   	push   edi
  4a7755:	8b f9                	mov    edi,ecx
  4a7757:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  4a775a:	85 f6                	test   esi,esi
  4a775c:	74 18                	je     0x4a7776
  4a775e:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  4a7761:	2b ce                	sub    ecx,esi
  4a7763:	b8 e9 a2 8b 2e       	mov    eax,0x2e8ba2e9
  4a7768:	f7 e9                	imul   ecx
  4a776a:	c1 fa 03             	sar    edx,0x3
  4a776d:	8b c2                	mov    eax,edx
  4a776f:	c1 e8 1f             	shr    eax,0x1f
  4a7772:	03 d0                	add    edx,eax
  4a7774:	75 04                	jne    0x4a777a
  4a7776:	33 f6                	xor    esi,esi
  4a7778:	eb 18                	jmp    0x4a7792
  4a777a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4a777d:	2b ce                	sub    ecx,esi
  4a777f:	b8 e9 a2 8b 2e       	mov    eax,0x2e8ba2e9
  4a7784:	f7 e9                	imul   ecx
  4a7786:	c1 fa 03             	sar    edx,0x3
  4a7789:	8b ca                	mov    ecx,edx
  4a778b:	c1 e9 1f             	shr    ecx,0x1f
  4a778e:	03 d1                	add    edx,ecx
  4a7790:	8b f2                	mov    esi,edx
  4a7792:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4a7795:	52                   	push   edx
  4a7796:	6a 01                	push   0x1
  4a7798:	51                   	push   ecx
  4a7799:	8d 45 0c             	lea    eax,[ebp+0xc]
  4a779c:	8b cc                	mov    ecx,esp
  4a779e:	50                   	push   eax
  4a779f:	e8 2c 00 00 00       	call   0x4a77d0
  4a77a4:	8b cf                	mov    ecx,edi
  4a77a6:	e8 35 00 00 00       	call   0x4a77e0
  4a77ab:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  4a77ae:	8d 0c b6             	lea    ecx,[esi+esi*4]
  4a77b1:	8d 14 4e             	lea    edx,[esi+ecx*2]
  4a77b4:	8d 0c 90             	lea    ecx,[eax+edx*4]
  4a77b7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a77ba:	5f                   	pop    edi
  4a77bb:	89 08                	mov    DWORD PTR [eax],ecx
  4a77bd:	5e                   	pop    esi
  4a77be:	5d                   	pop    ebp
  4a77bf:	c2 0c 00             	ret    0xc

