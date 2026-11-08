; Passe 69 - preuve de désassemblage strictement comparée à SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; section .text, base VA 0x401000; aucune instruction tronquée ni remplissage NOP/INT3 inclus
; Assemblage GNU objdump x86 Intel. Ordinals MFC identifiés via l'annuaire PE, rôle exact inconnu.

; [00441FF0,00442051) - allocation avec chemin malloc et chemin pool
  00441ff0:	55                                             	push   ebp
  00441ff1:	8b ec                                          	mov    ebp,esp
  00441ff3:	83 ec 2c                                       	sub    esp,0x2c
  00441ff6:	56                                             	push   esi
  00441ff7:	e8 b4 00 00 00                                 	call   0x4420b0
  00441ffc:	8b f0                                          	mov    esi,eax
  00441ffe:	8a 46 20                                       	mov    al,BYTE PTR [esi+0x20]
  00442001:	84 c0                                          	test   al,al
  00442003:	75 12                                          	jne    0x442017
  00442005:	8b 45 08                                       	mov    eax,DWORD PTR [ebp+0x8]
  00442008:	50                                             	push   eax
  00442009:	ff 15 94 e2 4d 00                              	call   DWORD PTR ds:0x4de294
  0044200f:	83 c4 04                                       	add    esp,0x4
  00442012:	5e                                             	pop    esi
  00442013:	8b e5                                          	mov    esp,ebp
  00442015:	5d                                             	pop    ebp
  00442016:	c3                                             	ret
  00442017:	8d 4d d4                                       	lea    ecx,[ebp-0x2c]
  0044201a:	6a 0a                                          	push   0xa
  0044201c:	51                                             	push   ecx
  0044201d:	e8 ae 0b 02 00                                 	call   0x462bd0
  00442022:	83 c4 08                                       	add    esp,0x8
  00442025:	8d 56 08                                       	lea    edx,[esi+0x8]
  00442028:	52                                             	push   edx
  00442029:	8d 4d fc                                       	lea    ecx,[ebp-0x4]
  0044202c:	e8 4f 76 fc ff                                 	call   0x409680
  00442031:	8b 4d 08                                       	mov    ecx,DWORD PTR [ebp+0x8]
  00442034:	8d 45 d4                                       	lea    eax,[ebp-0x2c]
  00442037:	50                                             	push   eax
  00442038:	51                                             	push   ecx
  00442039:	8b ce                                          	mov    ecx,esi
  0044203b:	e8 a0 02 00 00                                 	call   0x4422e0
  00442040:	8d 4d fc                                       	lea    ecx,[ebp-0x4]
  00442043:	8b f0                                          	mov    esi,eax
  00442045:	e8 56 76 fc ff                                 	call   0x4096a0
  0044204a:	8b c6                                          	mov    eax,esi
  0044204c:	5e                                             	pop    esi
  0044204d:	8b e5                                          	mov    esp,ebp
  0044204f:	5d                                             	pop    ebp
  00442050:	c3                                             	ret

