; PASSE 56. Preuves serveur SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Adresses VA x86 et octets verifiables; les bornes semi-ouvertes peuvent couper le flux de desassemblage.
; Ne pas interpreter les fonctions MFC/imports non resolus comme primitives connues.

; [0040c350,0040c384) Adaptateur evaluateur: 9 arguments + adresse sous-structure expression
  40c351:	8b ec                     mov    ebp,esp
  40c353:	8b 45 28                  mov    eax,DWORD PTR [ebp+0x28]
  40c356:	8b 55 24                  mov    edx,DWORD PTR [ebp+0x24]
  40c359:	50                        push   eax
  40c35a:	8b 45 20                  mov    eax,DWORD PTR [ebp+0x20]
  40c35d:	52                        push   edx
  40c35e:	8b 55 1c                  mov    edx,DWORD PTR [ebp+0x1c]
  40c361:	50                        push   eax
  40c362:	8b 45 18                  mov    eax,DWORD PTR [ebp+0x18]
  40c365:	52                        push   edx
  40c366:	8b 55 14                  mov    edx,DWORD PTR [ebp+0x14]
  40c369:	50                        push   eax
  40c36a:	8b 45 10                  mov    eax,DWORD PTR [ebp+0x10]
  40c36d:	52                        push   edx
  40c36e:	8b 55 0c                  mov    edx,DWORD PTR [ebp+0xc]
  40c371:	50                        push   eax
  40c372:	8b 45 08                  mov    eax,DWORD PTR [ebp+0x8]
  40c375:	52                        push   edx
  40c376:	50                        push   eax
  40c377:	8d 51 08                  lea    edx,[ecx+0x8]
  40c37a:	52                        push   edx
  40c37b:	e8 90 d8 ff ff            call   0x409c10
  40c380:	5d                        pop    ebp
  40c381:	c2 24 00                  ret    0x24

; [0045a7d8,0045a859) Cas 2 du dispatch : evaluation et partage du contexte en callbacks
  45a7d8:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45a7de:	e8 dd ee fa ff            call   0x4096c0
  45a7e3:	8b 07                     mov    eax,DWORD PTR [edi]
  45a7e5:	8d 8d d8 fe ff ff         lea    ecx,[ebp-0x128]
  45a7eb:	51                        push   ecx
  45a7ec:	33 f6                     xor    esi,esi
  45a7ee:	8b cf                     mov    ecx,edi
  45a7f0:	89 75 fc                  mov    DWORD PTR [ebp-0x4],esi
  45a7f3:	ff 50 30                  call   DWORD PTR [eax+0x30]
  45a7f6:	8b c8                     mov    ecx,eax
  45a7f8:	c6 45 fc 01               mov    BYTE PTR [ebp-0x4],0x1
  45a7fc:	ff 15 24 e5 4d 00         call   DWORD PTR ds:0x4de524
  45a802:	51                        push   ecx
  45a803:	8b cc                     mov    ecx,esp
  45a805:	89 65 14                  mov    DWORD PTR [ebp+0x14],esp
  45a808:	50                        push   eax
  45a809:	e8 56 72 07 00            call   0x4d1a64
  45a80e:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45a814:	e8 e7 f0 fa ff            call   0x409900
  45a819:	6a 01                     push   0x1
  45a81b:	8d 8d d8 fe ff ff         lea    ecx,[ebp-0x128]
  45a821:	c6 45 fc 00               mov    BYTE PTR [ebp-0x4],0x0
  45a825:	ff 15 14 e5 4d 00         call   DWORD PTR ds:0x4de514
  45a82b:	8b 5d 1c                  mov    ebx,DWORD PTR [ebp+0x1c]
  45a82e:	8b 55 10                  mov    edx,DWORD PTR [ebp+0x10]
  45a831:	8b 45 0c                  mov    eax,DWORD PTR [ebp+0xc]
  45a834:	53                        push   ebx
  45a835:	56                        push   esi
  45a836:	56                        push   esi
  45a837:	56                        push   esi
  45a838:	56                        push   esi
  45a839:	56                        push   esi
  45a83a:	56                        push   esi
  45a83b:	52                        push   edx
  45a83c:	50                        push   eax
  45a83d:	8d 8d 00 ff ff ff         lea    ecx,[ebp-0x100]
  45a843:	e8 08 1b fb ff            call   0x40c350
  45a848:	dc 1d 30 e6 4d 00         fcomp  QWORD PTR ds:0x4de630
  45a84e:	df e0                     fnstsw ax
  45a850:	f6 c4 40                  test   ah,0x40
  45a853:	0f 85 89 00 00 00         jne    0x45a8e2

; [0045b846,0045b89d) Cas 19: un autre type de consommation d expression, sans var
  45b846:	8a 4d 13                  mov    cl,BYTE PTR [ebp+0x13]
  45b849:	88 4d e4                  mov    BYTE PTR [ebp-0x1c],cl
  45b84c:	6a 00                     push   0x0
  45b84e:	8d 4d e4                  lea    ecx,[ebp-0x1c]
  45b851:	e8 7a 2f 00 00            call   0x45e7d0
  45b856:	8d 55 e4                  lea    edx,[ebp-0x1c]
  45b859:	bb 20 00 00 00            mov    ebx,0x20
  45b85e:	52                        push   edx
  45b85f:	8b cf                     mov    ecx,edi
  45b861:	89 5d fc                  mov    DWORD PTR [ebp-0x4],ebx
  45b864:	e8 b7 81 05 00            call   0x4b3a20
  45b869:	8b 45 e8                  mov    eax,DWORD PTR [ebp-0x18]
  45b86c:	85 c0                     test   eax,eax
  45b86e:	74 0d                     je     0x45b87d
  45b870:	8b 4d ec                  mov    ecx,DWORD PTR [ebp-0x14]
  45b873:	2b c8                     sub    ecx,eax
  45b875:	c1 f9 04                  sar    ecx,0x4
  45b878:	83 f9 01                  cmp    ecx,0x1
  45b87b:	73 20                     jae    0x45b89d
  45b87d:	8d 4d e4                  lea    ecx,[ebp-0x1c]
  45b880:	c7 45 fc ff ff ff ff      mov    DWORD PTR [ebp-0x4],0xffffffff
  45b887:	e8 94 2f 00 00            call   0x45e820
  45b88c:	8b 4d f4                  mov    ecx,DWORD PTR [ebp-0xc]
  45b88f:	64 89 0d 00 00 00 00      mov    DWORD PTR fs:0x0,ecx
  45b896:	5f                        pop    edi
  45b897:	5e                        pop    esi
  45b898:	5b                        pop    ebx
  45b899:	8b e5                     mov    esp,ebp
  45b89b:	5d                        pop    ebp
  45b89c:	c3                        ret

; [0040f640,0040f6df) Autre structure liee, parcours et destruction de noeuds; contrat exact non resolu
  40f640:	53                        push   ebx
  40f641:	56                        push   esi
  40f642:	8b f1                     mov    esi,ecx
  40f644:	8b 46 24                  mov    eax,DWORD PTR [esi+0x24]
  40f647:	57                        push   edi
  40f648:	33 ff                     xor    edi,edi
  40f64a:	c7 06 10 e6 4d 00         mov    DWORD PTR [esi],0x4de610
  40f650:	89 46 20                  mov    DWORD PTR [esi+0x20],eax
  40f653:	89 7e 40                  mov    DWORD PTR [esi+0x40],edi
  40f656:	c6 46 34 08               mov    BYTE PTR [esi+0x34],0x8
  40f65a:	bb 01 00 00 00            mov    ebx,0x1
  40f65f:	39 7e 40                  cmp    DWORD PTR [esi+0x40],edi
  40f662:	74 0a                     je     0x40f66e
  40f664:	8b 4e 20                  mov    ecx,DWORD PTR [esi+0x20]
  40f667:	8b 11                     mov    edx,DWORD PTR [ecx]
  40f669:	89 56 20                  mov    DWORD PTR [esi+0x20],edx
  40f66c:	eb 03                     jmp    0x40f671
  40f66e:	89 5e 40                  mov    DWORD PTR [esi+0x40],ebx
  40f671:	8b 46 20                  mov    eax,DWORD PTR [esi+0x20]
  40f674:	3b c7                     cmp    eax,edi
  40f676:	0f 84 ef 00 00 00         je     0x40f76b
  40f67c:	8b 4e 28                  mov    ecx,DWORD PTR [esi+0x28]
  40f67f:	89 46 2c                  mov    DWORD PTR [esi+0x2c],eax
  40f682:	ff 4e 38                  dec    DWORD PTR [esi+0x38]
  40f685:	8b 46 20                  mov    eax,DWORD PTR [esi+0x20]
  40f688:	3b c1                     cmp    eax,ecx
  40f68a:	74 5b                     je     0x40f6e7
  40f68c:	3b 46 24                  cmp    eax,DWORD PTR [esi+0x24]
  40f68f:	74 52                     je     0x40f6e3
  40f691:	8b 08                     mov    ecx,DWORD PTR [eax]
  40f693:	8b 50 04                  mov    edx,DWORD PTR [eax+0x4]
  40f696:	89 51 04                  mov    DWORD PTR [ecx+0x4],edx
  40f699:	8b 46 20                  mov    eax,DWORD PTR [esi+0x20]
  40f69c:	8b 48 04                  mov    ecx,DWORD PTR [eax+0x4]
  40f69f:	8b 10                     mov    edx,DWORD PTR [eax]
  40f6a1:	89 11                     mov    DWORD PTR [ecx],edx
  40f6a3:	8b 46 40                  mov    eax,DWORD PTR [esi+0x40]
  40f6a6:	3b c3                     cmp    eax,ebx
  40f6a8:	75 17                     jne    0x40f6c1
  40f6aa:	8b 46 20                  mov    eax,DWORD PTR [esi+0x20]
  40f6ad:	8b 56 2c                  mov    edx,DWORD PTR [esi+0x2c]
  40f6b0:	8b 48 04                  mov    ecx,DWORD PTR [eax+0x4]
  40f6b3:	52                        push   edx
  40f6b4:	89 4e 20                  mov    DWORD PTR [esi+0x20],ecx
  40f6b7:	e8 a4 29 03 00            call   0x442060
  40f6bc:	83 c4 04                  add    esp,0x4
  40f6bf:	eb 9e                     jmp    0x40f65f
  40f6c1:	83 f8 02                  cmp    eax,0x2
  40f6c4:	0f 85 90 00 00 00         jne    0x40f75a
  40f6ca:	8b 56 20                  mov    edx,DWORD PTR [esi+0x20]
  40f6cd:	8b 02                     mov    eax,DWORD PTR [edx]
  40f6cf:	8b 56 2c                  mov    edx,DWORD PTR [esi+0x2c]
  40f6d2:	52                        push   edx
  40f6d3:	89 46 20                  mov    DWORD PTR [esi+0x20],eax
  40f6d6:	e8 85 29 03 00            call   0x442060
  40f6db:	83 c4 04                  add    esp,0x4
  40f6de:	e9 7c ff ff ff            jmp    0x40f65f
