; Passe 69 - preuve de désassemblage strictement comparée à SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; section .text, base VA 0x401000; aucune instruction tronquée ni remplissage NOP/INT3 inclus
; Assemblage GNU objdump x86 Intel. Ordinals MFC identifiés via l'annuaire PE, rôle exact inconnu.

; [00462BD0,00462C01) - capture d’adresses de retour dans cadre empilé avant enregistrement pool
  00462bd0:	55                                             	push   ebp
  00462bd1:	8b ec                                          	mov    ebp,esp
  00462bd3:	51                                             	push   ecx
  00462bd4:	56                                             	push   esi
  00462bd5:	57                                             	push   edi
  00462bd6:	89 6d fc                                       	mov    DWORD PTR [ebp-0x4],ebp
  00462bd9:	8b 4d fc                                       	mov    ecx,DWORD PTR [ebp-0x4]
  00462bdc:	33 c0                                          	xor    eax,eax
  00462bde:	85 c9                                          	test   ecx,ecx
  00462be0:	74 19                                          	je     0x462bfb
  00462be2:	8b 55 08                                       	mov    edx,DWORD PTR [ebp+0x8]
  00462be5:	8b 75 0c                                       	mov    esi,DWORD PTR [ebp+0xc]
  00462be8:	3b c6                                          	cmp    eax,esi
  00462bea:	77 0f                                          	ja     0x462bfb
  00462bec:	8b 79 04                                       	mov    edi,DWORD PTR [ecx+0x4]
  00462bef:	89 3a                                          	mov    DWORD PTR [edx],edi
  00462bf1:	8b 09                                          	mov    ecx,DWORD PTR [ecx]
  00462bf3:	40                                             	inc    eax
  00462bf4:	83 c2 04                                       	add    edx,0x4
  00462bf7:	85 c9                                          	test   ecx,ecx
  00462bf9:	75 ed                                          	jne    0x462be8
  00462bfb:	5f                                             	pop    edi
  00462bfc:	5e                                             	pop    esi
  00462bfd:	8b e5                                          	mov    esp,ebp
  00462bff:	5d                                             	pop    ebp
  00462c00:	c3                                             	ret

