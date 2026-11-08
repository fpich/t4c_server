; PASSE 48 — SetHP polymorphe, stockage et paquet 33
; SHA-256 du serveur: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Seules instructions x86 dont les octets correspondent a la section PE .text
; Extraction statique. Aucune execution du programme ne permet de conclure sur les chemins reels.

; Character::GetHP — [0x41D6A0,0x41D6A7[
; Lit DWORD [this+0x13C].
  41d6a0:	8b 81 3c 01 00 00    	mov    eax,DWORD PTR [ecx+0x13c]
  41d6a6:	c3                   	ret

; Character::SetHP — [0x41D6B0,0x41D770[
; Change HP si valeur differente; sur option de notification vraie: paquet 33 HP courant+max puis Group::SendHpUpdate.
  41d6b0:	55                   	push   ebp
  41d6b1:	8b ec                	mov    ebp,esp
  41d6b3:	6a ff                	push   0xffffffff
  41d6b5:	68 f8 40 4d 00       	push   0x4d40f8
  41d6ba:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  41d6c0:	50                   	push   eax
  41d6c1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  41d6c8:	83 ec 18             	sub    esp,0x18
  41d6cb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  41d6ce:	56                   	push   esi
  41d6cf:	8b f1                	mov    esi,ecx
  41d6d1:	39 86 3c 01 00 00    	cmp    DWORD PTR [esi+0x13c],eax
  41d6d7:	0f 84 83 00 00 00    	je     0x41d760
  41d6dd:	89 86 3c 01 00 00    	mov    DWORD PTR [esi+0x13c],eax
  41d6e3:	8a 45 0c             	mov    al,BYTE PTR [ebp+0xc]
  41d6e6:	84 c0                	test   al,al
  41d6e8:	74 76                	je     0x41d760
  41d6ea:	8d 4d dc             	lea    ecx,[ebp-0x24]
  41d6ed:	e8 fe 86 06 00       	call   0x485df0
  41d6f2:	6a 21                	push   0x21
  41d6f4:	8d 4d dc             	lea    ecx,[ebp-0x24]
  41d6f7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  41d6fe:	e8 4d 8a 06 00       	call   0x486150
  41d703:	8b 06                	mov    eax,DWORD PTR [esi]
  41d705:	8b ce                	mov    ecx,esi
  41d707:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  41d70d:	50                   	push   eax
  41d70e:	8d 4d dc             	lea    ecx,[ebp-0x24]
  41d711:	e8 da 8a 06 00       	call   0x4861f0
  41d716:	8b 16                	mov    edx,DWORD PTR [esi]
  41d718:	8b ce                	mov    ecx,esi
  41d71a:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  41d720:	50                   	push   eax
  41d721:	8d 4d dc             	lea    ecx,[ebp-0x24]
  41d724:	e8 c7 8a 06 00       	call   0x4861f0
  41d729:	8b 06                	mov    eax,DWORD PTR [esi]
  41d72b:	8d 4d dc             	lea    ecx,[ebp-0x24]
  41d72e:	51                   	push   ecx
  41d72f:	8b ce                	mov    ecx,esi
  41d731:	ff 90 4c 01 00 00    	call   DWORD PTR [eax+0x14c]
  41d737:	8b ce                	mov    ecx,esi
  41d739:	e8 82 25 00 00       	call   0x41fcc0
  41d73e:	85 c0                	test   eax,eax
  41d740:	74 0f                	je     0x41d751
  41d742:	56                   	push   esi
  41d743:	8b ce                	mov    ecx,esi
  41d745:	e8 76 25 00 00       	call   0x41fcc0
  41d74a:	8b c8                	mov    ecx,eax
  41d74c:	e8 2f d9 01 00       	call   0x43b080
  41d751:	8d 4d dc             	lea    ecx,[ebp-0x24]
  41d754:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  41d75b:	e8 20 87 06 00       	call   0x485e80
  41d760:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41d763:	5e                   	pop    esi
  41d764:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  41d76b:	8b e5                	mov    esp,ebp
  41d76d:	5d                   	pop    ebp
  41d76e:	c2 08 00             	ret    0x8

; Creatures::GetMaxHP et SetMaxHP — [0x432AB0,0x432ACE[
; Champ +0x118, min getter 1 en absence de max positive.
  432ab0:	8b 81 18 01 00 00    	mov    eax,DWORD PTR [ecx+0x118]
  432ab6:	85 c0                	test   eax,eax
  432ab8:	75 05                	jne    0x432abf
  432aba:	b8 01 00 00 00       	mov    eax,0x1
  432abf:	c3                   	ret
  432ac0:	55                   	push   ebp
  432ac1:	8b ec                	mov    ebp,esp
  432ac3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  432ac6:	89 81 18 01 00 00    	mov    DWORD PTR [ecx+0x118],eax
  432acc:	5d                   	pop    ebp
  432acd:	c2 04 00             	ret    0x4

; Creatures::GetHP et SetHP — [0x432AD0,0x432AEE[
; Champ DWORD +0x114; setter n utilise pas le flag en branche etudiee.
  432ad0:	8b 81 14 01 00 00    	mov    eax,DWORD PTR [ecx+0x114]
  432ad6:	c3                   	ret
  432ad7:	90                   	nop
  432ad8:	90                   	nop
  432ad9:	90                   	nop
  432ada:	90                   	nop
  432adb:	90                   	nop
  432adc:	90                   	nop
  432add:	90                   	nop
  432ade:	90                   	nop
  432adf:	90                   	nop
  432ae0:	55                   	push   ebp
  432ae1:	8b ec                	mov    ebp,esp
  432ae3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  432ae6:	89 81 14 01 00 00    	mov    DWORD PTR [ecx+0x114],eax
  432aec:	5d                   	pop    ebp
  432aed:	c2 08 00             	ret    0x8

; Group::SendHpUpdate — [0x43B080,0x43B1AE[
; Parcours la liste de membres et envoie paquet 0x57 (87) avec GetMaxHP, GetHP et quotient entier *100/max.
  43b080:	55                   	push   ebp
  43b081:	8b ec                	mov    ebp,esp
  43b083:	6a ff                	push   0xffffffff
  43b085:	68 80 58 4d 00       	push   0x4d5880
  43b08a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  43b090:	50                   	push   eax
  43b091:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  43b098:	83 ec 20             	sub    esp,0x20
  43b09b:	53                   	push   ebx
  43b09c:	8b d9                	mov    ebx,ecx
  43b09e:	8b 03                	mov    eax,DWORD PTR [ebx]
  43b0a0:	56                   	push   esi
  43b0a1:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  43b0a4:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  43b0a7:	ff 50 04             	call   DWORD PTR [eax+0x4]
  43b0aa:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
  43b0ad:	8b 30                	mov    esi,DWORD PTR [eax]
  43b0af:	3b f0                	cmp    esi,eax
  43b0b1:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  43b0b8:	0f 84 d2 00 00 00    	je     0x43b190
  43b0be:	57                   	push   edi
  43b0bf:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  43b0c2:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  43b0c5:	e8 26 ad 04 00       	call   0x485df0
  43b0ca:	6a 57                	push   0x57
  43b0cc:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  43b0cf:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  43b0d3:	e8 78 b0 04 00       	call   0x486150
  43b0d8:	8b cf                	mov    ecx,edi
  43b0da:	e8 21 06 05 00       	call   0x48b700
  43b0df:	50                   	push   eax
  43b0e0:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  43b0e3:	e8 08 b1 04 00       	call   0x4861f0
  43b0e8:	8b 17                	mov    edx,DWORD PTR [edi]
  43b0ea:	8b cf                	mov    ecx,edi
  43b0ec:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  43b0f2:	85 c0                	test   eax,eax
  43b0f4:	75 0b                	jne    0x43b101
  43b0f6:	50                   	push   eax
  43b0f7:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  43b0fa:	e8 51 b0 04 00       	call   0x486150
  43b0ff:	eb 31                	jmp    0x43b132
  43b101:	8b 07                	mov    eax,DWORD PTR [edi]
  43b103:	8b cf                	mov    ecx,edi
  43b105:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  43b10b:	8b 17                	mov    edx,DWORD PTR [edi]
  43b10d:	8d 04 80             	lea    eax,[eax+eax*4]
  43b110:	8d 1c 80             	lea    ebx,[eax+eax*4]
  43b113:	8b cf                	mov    ecx,edi
  43b115:	c1 e3 02             	shl    ebx,0x2
  43b118:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  43b11e:	8b c8                	mov    ecx,eax
  43b120:	33 d2                	xor    edx,edx
  43b122:	8b c3                	mov    eax,ebx
  43b124:	f7 f1                	div    ecx
  43b126:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  43b129:	50                   	push   eax
  43b12a:	e8 21 b0 04 00       	call   0x486150
  43b12f:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
  43b132:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  43b135:	8b 11                	mov    edx,DWORD PTR [ecx]
  43b137:	8d 45 d4             	lea    eax,[ebp-0x2c]
  43b13a:	50                   	push   eax
  43b13b:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  43b141:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  43b144:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  43b148:	e8 33 ad 04 00       	call   0x485e80
  43b14d:	8a 46 11             	mov    al,BYTE PTR [esi+0x11]
  43b150:	84 c0                	test   al,al
  43b152:	75 32                	jne    0x43b186
  43b154:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  43b157:	8a 48 11             	mov    cl,BYTE PTR [eax+0x11]
  43b15a:	84 c9                	test   cl,cl
  43b15c:	75 0b                	jne    0x43b169
  43b15e:	50                   	push   eax
  43b15f:	e8 9c 90 fc ff       	call   0x404200
  43b164:	83 c4 04             	add    esp,0x4
  43b167:	eb 1b                	jmp    0x43b184
  43b169:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  43b16c:	8a 48 11             	mov    cl,BYTE PTR [eax+0x11]
  43b16f:	84 c9                	test   cl,cl
  43b171:	75 11                	jne    0x43b184
  43b173:	3b 70 08             	cmp    esi,DWORD PTR [eax+0x8]
  43b176:	75 0c                	jne    0x43b184
  43b178:	8b f0                	mov    esi,eax
  43b17a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  43b17d:	8a 48 11             	mov    cl,BYTE PTR [eax+0x11]
  43b180:	84 c9                	test   cl,cl
  43b182:	74 ef                	je     0x43b173
  43b184:	8b f0                	mov    esi,eax
  43b186:	3b 73 28             	cmp    esi,DWORD PTR [ebx+0x28]
  43b189:	0f 85 33 ff ff ff    	jne    0x43b0c2
  43b18f:	5f                   	pop    edi
  43b190:	8b 13                	mov    edx,DWORD PTR [ebx]
  43b192:	8b cb                	mov    ecx,ebx
  43b194:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  43b19b:	ff 52 08             	call   DWORD PTR [edx+0x8]
  43b19e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  43b1a1:	5e                   	pop    esi
  43b1a2:	5b                   	pop    ebx
  43b1a3:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  43b1aa:	8b e5                	mov    esp,ebp
  43b1ac:	5d                   	pop    ebp
  43b1ad:	c2 04 00             	ret    0x4

; Unit getters/setters par defaut — [0x48BD90,0x48BE00[
; Retours virtuels de base sans stockage HP specialise, SetHP est un stub.
  48bd90:	b8 01 00 00 00       	mov    eax,0x1
  48bd95:	c3                   	ret
  48bd96:	90                   	nop
  48bd97:	90                   	nop
  48bd98:	90                   	nop
  48bd99:	90                   	nop
  48bd9a:	90                   	nop
  48bd9b:	90                   	nop
  48bd9c:	90                   	nop
  48bd9d:	90                   	nop
  48bd9e:	90                   	nop
  48bd9f:	90                   	nop
  48bda0:	56                   	push   esi
  48bda1:	8b f1                	mov    esi,ecx
  48bda3:	8b 06                	mov    eax,DWORD PTR [esi]
  48bda5:	57                   	push   edi
  48bda6:	ff 90 d0 00 00 00    	call   DWORD PTR [eax+0xd0]
  48bdac:	6a 19                	push   0x19
  48bdae:	8b ce                	mov    ecx,esi
  48bdb0:	8b f8                	mov    edi,eax
  48bdb2:	e8 a9 20 00 00       	call   0x48de60
  48bdb7:	03 c7                	add    eax,edi
  48bdb9:	85 c0                	test   eax,eax
  48bdbb:	5f                   	pop    edi
  48bdbc:	5e                   	pop    esi
  48bdbd:	7f 05                	jg     0x48bdc4
  48bdbf:	b8 01 00 00 00       	mov    eax,0x1
  48bdc4:	c3                   	ret
  48bdc5:	90                   	nop
  48bdc6:	90                   	nop
  48bdc7:	90                   	nop
  48bdc8:	90                   	nop
  48bdc9:	90                   	nop
  48bdca:	90                   	nop
  48bdcb:	90                   	nop
  48bdcc:	90                   	nop
  48bdcd:	90                   	nop
  48bdce:	90                   	nop
  48bdcf:	90                   	nop
  48bdd0:	c2 04 00             	ret    0x4
  48bdd3:	90                   	nop
  48bdd4:	90                   	nop
  48bdd5:	90                   	nop
  48bdd6:	90                   	nop
  48bdd7:	90                   	nop
  48bdd8:	90                   	nop
  48bdd9:	90                   	nop
  48bdda:	90                   	nop
  48bddb:	90                   	nop
  48bddc:	90                   	nop
  48bddd:	90                   	nop
  48bdde:	90                   	nop
  48bddf:	90                   	nop
  48bde0:	33 c0                	xor    eax,eax
  48bde2:	c3                   	ret
  48bde3:	90                   	nop
  48bde4:	90                   	nop
  48bde5:	90                   	nop
  48bde6:	90                   	nop
  48bde7:	90                   	nop
  48bde8:	90                   	nop
  48bde9:	90                   	nop
  48bdea:	90                   	nop
  48bdeb:	90                   	nop
  48bdec:	90                   	nop
  48bded:	90                   	nop
  48bdee:	90                   	nop
  48bdef:	90                   	nop
  48bdf0:	c2 08 00             	ret    0x8
  48bdf3:	90                   	nop
  48bdf4:	90                   	nop
  48bdf5:	90                   	nop
  48bdf6:	90                   	nop
  48bdf7:	90                   	nop
  48bdf8:	90                   	nop
  48bdf9:	90                   	nop
  48bdfa:	90                   	nop
  48bdfb:	90                   	nop
  48bdfc:	90                   	nop
  48bdfd:	90                   	nop
  48bdfe:	90                   	nop
  48bdff:	90                   	nop
