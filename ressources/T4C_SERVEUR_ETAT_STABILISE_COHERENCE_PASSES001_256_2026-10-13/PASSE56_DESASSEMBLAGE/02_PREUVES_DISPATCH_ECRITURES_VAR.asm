; PASSE 56. Preuves serveur SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Adresses VA x86 et octets verifiables; les bornes semi-ouvertes peuvent couper le flux de desassemblage.
; Ne pas interpreter les fonctions MFC/imports non resolus comme primitives connues.

; [0045a7a0,0045a7d8) Dispatcher de 24 categories, via [edi+0x24]-1, index table 0x45c198 (DONNEES table exclues)
  45a7a0:	55                        push   ebp
  45a7a1:	8b ec                     mov    ebp,esp
  45a7a3:	6a ff                     push   0xffffffff
  45a7a5:	68 3b 77 4d 00            push   0x4d773b
  45a7aa:	64 a1 00 00 00 00         mov    eax,fs:0x0
  45a7b0:	50                        push   eax
  45a7b1:	64 89 25 00 00 00 00      mov    DWORD PTR fs:0x0,esp
  45a7b8:	81 ec 5c 01 00 00         sub    esp,0x15c
  45a7be:	53                        push   ebx
  45a7bf:	56                        push   esi
  45a7c0:	57                        push   edi
  45a7c1:	8b 7d 14                  mov    edi,DWORD PTR [ebp+0x14]
  45a7c4:	8b 47 24                  mov    eax,DWORD PTR [edi+0x24]
  45a7c7:	48                        dec    eax
  45a7c8:	83 f8 17                  cmp    eax,0x17
  45a7cb:	0f 87 b6 19 00 00         ja     0x45c187
  45a7d1:	ff 24 85 98 c1 45 00      jmp    DWORD PTR [eax*4+0x45c198]

; [0045aafa,0045ab8a) Branche categorie 5: construction expression, evaluation initiale
  45aafa:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45ab00:	e8 bb eb fa ff            call   0x4096c0
  45ab05:	8d 95 b8 fe ff ff         lea    edx,[ebp-0x148]
  45ab0b:	bb 06 00 00 00            mov    ebx,0x6
  45ab10:	52                        push   edx
  45ab11:	8b cf                     mov    ecx,edi
  45ab13:	89 5d fc                  mov    DWORD PTR [ebp-0x4],ebx
  45ab16:	e8 85 19 00 00            call   0x45c4a0
  45ab1b:	8b c8                     mov    ecx,eax
  45ab1d:	c6 45 fc 07               mov    BYTE PTR [ebp-0x4],0x7
  45ab21:	ff 15 24 e5 4d 00         call   DWORD PTR ds:0x4de524
  45ab27:	51                        push   ecx
  45ab28:	8b cc                     mov    ecx,esp
  45ab2a:	89 65 14                  mov    DWORD PTR [ebp+0x14],esp
  45ab2d:	50                        push   eax
  45ab2e:	e8 31 6f 07 00            call   0x4d1a64
  45ab33:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45ab39:	e8 c2 ed fa ff            call   0x409900
  45ab3e:	6a 01                     push   0x1
  45ab40:	8d 8d b8 fe ff ff         lea    ecx,[ebp-0x148]
  45ab46:	88 5d fc                  mov    BYTE PTR [ebp-0x4],bl
  45ab49:	ff 15 14 e5 4d 00         call   DWORD PTR ds:0x4de514
  45ab4f:	8b 5d 1c                  mov    ebx,DWORD PTR [ebp+0x1c]
  45ab52:	8b 75 10                  mov    esi,DWORD PTR [ebp+0x10]
  45ab55:	8b 45 0c                  mov    eax,DWORD PTR [ebp+0xc]
  45ab58:	53                        push   ebx
  45ab59:	6a 00                     push   0x0
  45ab5b:	6a 00                     push   0x0
  45ab5d:	6a 00                     push   0x0
  45ab5f:	6a 00                     push   0x0
  45ab61:	6a 00                     push   0x0
  45ab63:	6a 00                     push   0x0
  45ab65:	56                        push   esi
  45ab66:	50                        push   eax
  45ab67:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45ab6d:	e8 de 17 fb ff            call   0x40c350
  45ab72:	dd 9d 78 ff ff ff         fstp   QWORD PTR [ebp-0x88]
  45ab78:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45ab7e:	c7 45 fc ff ff ff ff      mov    DWORD PTR [ebp-0x4],0xffffffff
  45ab85:	e8 d6 eb fa ff            call   0x409760

; [0045ab8a,0045ac11) Branche categorie 5: seconde expression et preparation du nom
  45ab8a:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45ab90:	e8 2b eb fa ff            call   0x4096c0
  45ab95:	8d 8d 98 fe ff ff         lea    ecx,[ebp-0x168]
  45ab9b:	51                        push   ecx
  45ab9c:	8b cf                     mov    ecx,edi
  45ab9e:	c7 45 fc 08 00 00 00      mov    DWORD PTR [ebp-0x4],0x8
  45aba5:	e8 46 1a 00 00            call   0x45c5f0
  45abaa:	8b c8                     mov    ecx,eax
  45abac:	c6 45 fc 09               mov    BYTE PTR [ebp-0x4],0x9
  45abb0:	ff 15 24 e5 4d 00         call   DWORD PTR ds:0x4de524
  45abb6:	51                        push   ecx
  45abb7:	8b cc                     mov    ecx,esp
  45abb9:	89 65 14                  mov    DWORD PTR [ebp+0x14],esp
  45abbc:	50                        push   eax
  45abbd:	e8 a2 6e 07 00            call   0x4d1a64
  45abc2:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45abc8:	e8 33 ed fa ff            call   0x409900
  45abcd:	6a 01                     push   0x1
  45abcf:	8d 8d 98 fe ff ff         lea    ecx,[ebp-0x168]
  45abd5:	c6 45 fc 08               mov    BYTE PTR [ebp-0x4],0x8
  45abd9:	ff 15 14 e5 4d 00         call   DWORD PTR ds:0x4de514
  45abdf:	8b 55 0c                  mov    edx,DWORD PTR [ebp+0xc]
  45abe2:	53                        push   ebx
  45abe3:	6a 00                     push   0x0
  45abe5:	6a 00                     push   0x0
  45abe7:	6a 00                     push   0x0
  45abe9:	6a 00                     push   0x0
  45abeb:	6a 00                     push   0x0
  45abed:	6a 00                     push   0x0
  45abef:	56                        push   esi
  45abf0:	52                        push   edx
  45abf1:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45abf7:	e8 54 17 fb ff            call   0x40c350
  45abfc:	dd 5d 80                  fstp   QWORD PTR [ebp-0x80]
  45abff:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45ac05:	c7 45 fc ff ff ff ff      mov    DWORD PTR [ebp-0x4],0xffffffff
  45ac0c:	e8 4f eb fa ff            call   0x409760

; [0045ac99,0045ad18) Categorie 5: nom, chercher/creer variable, stocker double, boucle conditionnelle
  45ac99:	8d 85 70 ff ff ff         lea    eax,[ebp-0x90]
  45ac9f:	50                        push   eax
  45aca0:	8d 4d e4                  lea    ecx,[ebp-0x1c]
  45aca3:	51                        push   ecx
  45aca4:	8d 8d e8 fe ff ff         lea    ecx,[ebp-0x118]
  45acaa:	c7 85 70 ff ff ff 00      mov    DWORD PTR [ebp-0x90],0x0
  45acb1:	00 00 00                  
  45acb4:	c7 85 74 ff ff ff 00      mov    DWORD PTR [ebp-0x8c],0x0
  45acbb:	00 00 00                  
  45acbe:	e8 fd 3c 00 00            call   0x45e9c0
  45acc3:	50                        push   eax
  45acc4:	8d 55 dc                  lea    edx,[ebp-0x24]
  45acc7:	52                        push   edx
  45acc8:	8b cb                     mov    ecx,ebx
  45acca:	c6 45 fc 0b               mov    BYTE PTR [ebp-0x4],0xb
  45acce:	e8 5d 45 fb ff            call   0x40f230
  45acd3:	8b 00                     mov    eax,DWORD PTR [eax]
  45acd5:	6a 01                     push   0x1
  45acd7:	8d 8d e8 fe ff ff         lea    ecx,[ebp-0x118]
  45acdd:	89 45 1c                  mov    DWORD PTR [ebp+0x1c],eax
  45ace0:	c6 45 fc 0a               mov    BYTE PTR [ebp-0x4],0xa
  45ace4:	ff 15 14 e5 4d 00         call   DWORD PTR ds:0x4de514
  45acea:	dd 85 78 ff ff ff         fld    QWORD PTR [ebp-0x88]
  45acf0:	8b 4d 1c                  mov    ecx,DWORD PTR [ebp+0x1c]
  45acf3:	d9 c0                     fld    st(0)
  45acf5:	dd 59 20                  fstp   QWORD PTR [ecx+0x20]
  45acf8:	dd 45 80                  fld    QWORD PTR [ebp-0x80]
  45acfb:	dc 05 c0 e8 4d 00         fadd   QWORD PTR ds:0x4de8c0
  45ad01:	dd 9d 78 ff ff ff         fstp   QWORD PTR [ebp-0x88]
  45ad07:	dc 9d 78 ff ff ff         fcomp  QWORD PTR [ebp-0x88]
  45ad0d:	df e0                     fnstsw ax
  45ad0f:	f6 c4 01                  test   ah,0x1
  45ad12:	0f 84 ac 00 00 00         je     0x45adc4

; [0045b922,0045b972) Branche categorie 20: initialisation expression et nom
  45b922:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45b928:	e8 93 dd fa ff            call   0x4096c0
  45b92d:	8d 8d a8 fe ff ff         lea    ecx,[ebp-0x158]
  45b933:	51                        push   ecx
  45b934:	bb 22 00 00 00            mov    ebx,0x22
  45b939:	8b cf                     mov    ecx,edi
  45b93b:	89 5d fc                  mov    DWORD PTR [ebp-0x4],ebx
  45b93e:	e8 bd 08 00 00            call   0x45c200
  45b943:	8b c8                     mov    ecx,eax
  45b945:	c6 45 fc 23               mov    BYTE PTR [ebp-0x4],0x23
  45b949:	ff 15 24 e5 4d 00         call   DWORD PTR ds:0x4de524
  45b94f:	51                        push   ecx
  45b950:	8b cc                     mov    ecx,esp
  45b952:	89 65 08                  mov    DWORD PTR [ebp+0x8],esp
  45b955:	50                        push   eax
  45b956:	e8 09 61 07 00            call   0x4d1a64
  45b95b:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45b961:	e8 9a df fa ff            call   0x409900
  45b966:	6a 01                     push   0x1
  45b968:	8d 8d a8 fe ff ff         lea    ecx,[ebp-0x158]
  45b96e:	88 5d fc                  mov    BYTE PTR [ebp-0x4],bl
  45b971:	ff 15 14 e5 4d 00         call   DWORD PTR ds:0x4de514

; [0045b977,0045b9b2) Categorie 20: evaluation formule initiale
  45b977:	8b 55 1c                  mov    edx,DWORD PTR [ebp+0x1c]
  45b97a:	8b 45 10                  mov    eax,DWORD PTR [ebp+0x10]
  45b97d:	8b 4d 0c                  mov    ecx,DWORD PTR [ebp+0xc]
  45b980:	52                        push   edx
  45b981:	6a 00                     push   0x0
  45b983:	6a 00                     push   0x0
  45b985:	6a 00                     push   0x0
  45b987:	6a 00                     push   0x0
  45b989:	6a 00                     push   0x0
  45b98b:	6a 00                     push   0x0
  45b98d:	50                        push   eax
  45b98e:	51                        push   ecx
  45b98f:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45b995:	e8 b6 09 fb ff            call   0x40c350
  45b99a:	dd 9d 78 ff ff ff         fstp   QWORD PTR [ebp-0x88]
  45b9a0:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45b9a6:	c7 45 fc ff ff ff ff      mov    DWORD PTR [ebp-0x4],0xffffffff
  45b9ad:	e8 ae dd fa ff            call   0x409760

; [0045ba28,0045baac) Categorie 20: construire cle, recherche/creation et copie du double
  45ba28:	8d 55 e4                  lea    edx,[ebp-0x1c]
  45ba2b:	52                        push   edx
  45ba2c:	8d 8d e8 fe ff ff         lea    ecx,[ebp-0x118]
  45ba32:	ff 15 10 e5 4d 00         call   DWORD PTR ds:0x4de510
  45ba38:	c7 85 f8 fe ff ff 00      mov    DWORD PTR [ebp-0x108],0x0
  45ba3f:	00 00 00                  
  45ba42:	c7 85 fc fe ff ff 00      mov    DWORD PTR [ebp-0x104],0x0
  45ba49:	00 00 00                  
  45ba4c:	8d 85 e8 fe ff ff         lea    eax,[ebp-0x118]
  45ba52:	50                        push   eax
  45ba53:	8d 4d dc                  lea    ecx,[ebp-0x24]
  45ba56:	51                        push   ecx
  45ba57:	8b 4d 1c                  mov    ecx,DWORD PTR [ebp+0x1c]
  45ba5a:	c6 45 fc 25               mov    BYTE PTR [ebp-0x4],0x25
  45ba5e:	e8 cd 37 fb ff            call   0x40f230
  45ba63:	8b 30                     mov    esi,DWORD PTR [eax]
  45ba65:	6a 01                     push   0x1
  45ba67:	8d 8d e8 fe ff ff         lea    ecx,[ebp-0x118]
  45ba6d:	c6 45 fc 24               mov    BYTE PTR [ebp-0x4],0x24
  45ba71:	ff 15 14 e5 4d 00         call   DWORD PTR ds:0x4de514
  45ba77:	8b 95 78 ff ff ff         mov    edx,DWORD PTR [ebp-0x88]
  45ba7d:	8b 85 7c ff ff ff         mov    eax,DWORD PTR [ebp-0x84]
  45ba83:	89 56 20                  mov    DWORD PTR [esi+0x20],edx
  45ba86:	6a 01                     push   0x1
  45ba88:	8d 4d e4                  lea    ecx,[ebp-0x1c]
  45ba8b:	89 46 24                  mov    DWORD PTR [esi+0x24],eax
  45ba8e:	c7 45 fc ff ff ff ff      mov    DWORD PTR [ebp-0x4],0xffffffff
  45ba95:	ff 15 14 e5 4d 00         call   DWORD PTR ds:0x4de514
  45ba9b:	8b 4d f4                  mov    ecx,DWORD PTR [ebp-0xc]
  45ba9e:	64 89 0d 00 00 00 00      mov    DWORD PTR fs:0x0,ecx
  45baa5:	5f                        pop    edi
  45baa6:	5e                        pop    esi
  45baa7:	5b                        pop    ebx
  45baa8:	8b e5                     mov    esp,ebp
  45baaa:	5d                        pop    ebp
  45baab:	c3                        ret
