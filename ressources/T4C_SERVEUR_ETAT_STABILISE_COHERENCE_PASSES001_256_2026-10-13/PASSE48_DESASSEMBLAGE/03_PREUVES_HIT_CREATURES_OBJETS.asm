; PASSE 48 — Semantique polymorphe hit
; SHA-256 du serveur: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Seules instructions x86 dont les octets correspondent a la section PE .text
; Extraction statique. Aucune execution du programme ne permet de conclure sur les chemins reels.

; Creatures::hit — [0x432900,0x43298C[
; Envoie messages 0xE puis 0x14; condition structure [retour+0x18]<0x186A0; virtual Death ou SetHP.
  432900:	55                   	push   ebp
  432901:	8b ec                	mov    ebp,esp
  432903:	53                   	push   ebx
  432904:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  432907:	56                   	push   esi
  432908:	57                   	push   edi
  432909:	6a 00                	push   0x0
  43290b:	8b f1                	mov    esi,ecx
  43290d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  432910:	8b 06                	mov    eax,DWORD PTR [esi]
  432912:	53                   	push   ebx
  432913:	51                   	push   ecx
  432914:	6a 00                	push   0x0
  432916:	56                   	push   esi
  432917:	6a 0e                	push   0xe
  432919:	8b ce                	mov    ecx,esi
  43291b:	ff 50 24             	call   DWORD PTR [eax+0x24]
  43291e:	8b 16                	mov    edx,DWORD PTR [esi]
  432920:	8d 45 08             	lea    eax,[ebp+0x8]
  432923:	50                   	push   eax
  432924:	6a 00                	push   0x0
  432926:	6a 00                	push   0x0
  432928:	6a 00                	push   0x0
  43292a:	56                   	push   esi
  43292b:	6a 14                	push   0x14
  43292d:	8b ce                	mov    ecx,esi
  43292f:	c7 45 08 00 00 00 00 	mov    DWORD PTR [ebp+0x8],0x0
  432936:	ff 52 24             	call   DWORD PTR [edx+0x24]
  432939:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  43293c:	85 c0                	test   eax,eax
  43293e:	74 45                	je     0x432985
  432940:	81 78 18 a0 86 01 00 	cmp    DWORD PTR [eax+0x18],0x186a0
  432947:	7d 3c                	jge    0x432985
  432949:	8b 16                	mov    edx,DWORD PTR [esi]
  43294b:	8b ce                	mov    ecx,esi
  43294d:	ff 92 d8 00 00 00    	call   DWORD PTR [edx+0xd8]
  432953:	dd 03                	fld    QWORD PTR [ebx]
  432955:	8b f8                	mov    edi,eax
  432957:	e8 1e f4 09 00       	call   0x4d1d7a
  43295c:	2b f8                	sub    edi,eax
  43295e:	85 ff                	test   edi,edi
  432960:	7f 16                	jg     0x432978
  432962:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  432965:	8b 06                	mov    eax,DWORD PTR [esi]
  432967:	51                   	push   ecx
  432968:	53                   	push   ebx
  432969:	8b ce                	mov    ecx,esi
  43296b:	ff 50 44             	call   DWORD PTR [eax+0x44]
  43296e:	5f                   	pop    edi
  43296f:	5e                   	pop    esi
  432970:	83 c8 ff             	or     eax,0xffffffff
  432973:	5b                   	pop    ebx
  432974:	5d                   	pop    ebp
  432975:	c2 08 00             	ret    0x8
  432978:	8b 16                	mov    edx,DWORD PTR [esi]
  43297a:	6a 00                	push   0x0
  43297c:	57                   	push   edi
  43297d:	8b ce                	mov    ecx,esi
  43297f:	ff 92 dc 00 00 00    	call   DWORD PTR [edx+0xdc]
  432985:	5f                   	pop    edi
  432986:	5e                   	pop    esi
  432987:	33 c0                	xor    eax,eax
  432989:	5b                   	pop    ebx
  43298a:	5d                   	pop    ebp
  43298b:	c2 08 00             	ret    0x8

; Objects::hit — [0x44C090,0x44C0A9[
; Message interne 2; retourne zero sans modifier HP par cette routine.
  44c090:	55                   	push   ebp
  44c091:	8b ec                	mov    ebp,esp
  44c093:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  44c096:	8b 01                	mov    eax,DWORD PTR [ecx]
  44c098:	6a 00                	push   0x0
  44c09a:	6a 00                	push   0x0
  44c09c:	52                   	push   edx
  44c09d:	6a 00                	push   0x0
  44c09f:	51                   	push   ecx
  44c0a0:	6a 02                	push   0x2
  44c0a2:	ff 50 24             	call   DWORD PTR [eax+0x24]
  44c0a5:	33 c0                	xor    eax,eax
  44c0a7:	5d                   	pop    ebp
  44c0a8:	c2 08 00             	ret    0x8

; Unit::hit (implementation generique) — [0x48B7D0,0x48B803[
; QueryEffects 14 puis SendUnitMessage 14; renvoie un parametre de sortie.
  48b7d0:	55                   	push   ebp
  48b7d1:	8b ec                	mov    ebp,esp
  48b7d3:	53                   	push   ebx
  48b7d4:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  48b7d7:	56                   	push   esi
  48b7d8:	57                   	push   edi
  48b7d9:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  48b7dc:	57                   	push   edi
  48b7dd:	6a 00                	push   0x0
  48b7df:	53                   	push   ebx
  48b7e0:	8b f1                	mov    esi,ecx
  48b7e2:	6a 0e                	push   0xe
  48b7e4:	e8 27 19 00 00       	call   0x48d110
  48b7e9:	8b 06                	mov    eax,DWORD PTR [esi]
  48b7eb:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  48b7ee:	51                   	push   ecx
  48b7ef:	53                   	push   ebx
  48b7f0:	57                   	push   edi
  48b7f1:	6a 00                	push   0x0
  48b7f3:	56                   	push   esi
  48b7f4:	6a 0e                	push   0xe
  48b7f6:	8b ce                	mov    ecx,esi
  48b7f8:	ff 50 24             	call   DWORD PTR [eax+0x24]
  48b7fb:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  48b7fe:	5f                   	pop    edi
  48b7ff:	5e                   	pop    esi
  48b800:	5b                   	pop    ebx
  48b801:	5d                   	pop    ebp
  48b802:	c2 08 00             	ret    0x8

; Unit::attack_hit — [0x48B810,0x48B840[
; QueryEffects et SendUnitMessage avec code 0x1C.
  48b810:	55                   	push   ebp
  48b811:	8b ec                	mov    ebp,esp
  48b813:	53                   	push   ebx
  48b814:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  48b817:	56                   	push   esi
  48b818:	57                   	push   edi
  48b819:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  48b81c:	57                   	push   edi
  48b81d:	6a 00                	push   0x0
  48b81f:	53                   	push   ebx
  48b820:	8b f1                	mov    esi,ecx
  48b822:	6a 1c                	push   0x1c
  48b824:	e8 e7 18 00 00       	call   0x48d110
  48b829:	8b 06                	mov    eax,DWORD PTR [esi]
  48b82b:	6a 00                	push   0x0
  48b82d:	53                   	push   ebx
  48b82e:	57                   	push   edi
  48b82f:	6a 00                	push   0x0
  48b831:	56                   	push   esi
  48b832:	6a 1c                	push   0x1c
  48b834:	8b ce                	mov    ecx,esi
  48b836:	ff 50 24             	call   DWORD PTR [eax+0x24]
  48b839:	5f                   	pop    edi
  48b83a:	5e                   	pop    esi
  48b83b:	33 c0                	xor    eax,eax
  48b83d:	5b                   	pop    ebx
  48b83e:	5d                   	pop    ebp
  48b83f:	c2 08 00             	ret    0x8
