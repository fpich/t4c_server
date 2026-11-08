; Échantillons de trois entrées plausibles, NON COMPTEES dans la couverture.
; Hypothèse d’entrée à 0x0043EF10 (sans xref prouvée)

/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0043ef10 <.text+0x3df10>:
  43ef10:	55                                  	push   ebp
  43ef11:	8b ec                               	mov    ebp,esp
  43ef13:	6a ff                               	push   0xffffffff
  43ef15:	68 e8 5e 4d 00                      	push   0x4d5ee8
  43ef1a:	64 a1 00 00 00 00                   	mov    eax,fs:0x0
  43ef20:	50                                  	push   eax
  43ef21:	64 89 25 00 00 00 00                	mov    DWORD PTR fs:0x0,esp
  43ef28:	51                                  	push   ecx
  43ef29:	56                                  	push   esi
  43ef2a:	68 a4 42 51 00                      	push   0x5142a4
  43ef2f:	8d 4d f0                            	lea    ecx,[ebp-0x10]
  43ef32:	e8 15 2b 09 00                      	call   0x4d1a4c
  43ef37:	68 54 39 50 00                      	push   0x503954
  43ef3c:	8d 4d f0                            	lea    ecx,[ebp-0x10]
  43ef3f:	c7 45 fc 00 00 00 00                	mov    DWORD PTR [ebp-0x4],0x0
  43ef46:	e8 07 2b 09 00                      	call   0x4d1a52
  43ef4b:	8b 45 f0                            	mov    eax,DWORD PTR [ebp-0x10]
  43ef4e:	68 50 39 50 00                      	push   0x503950
  43ef53:	50                                  	push   eax
  43ef54:	ff 15 34 e3 4d 00                   	call   DWORD PTR ds:0x4de334
  43ef5a:	8b f0                               	mov    esi,eax
  43ef5c:	83 c4 08                            	add    esp,0x8
  43ef5f:	85                                  	.byte 0x85

; Hypothèse d’entrée à 0x004BAA90 (sans xref prouvée)

/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

004baa90 <.text+0xb9a90>:
  4baa90:	55                                  	push   ebp
  4baa91:	8b ec                               	mov    ebp,esp
  4baa93:	6a ff                               	push   0xffffffff
  4baa95:	68 f2 d1 4d 00                      	push   0x4dd1f2
  4baa9a:	64 a1 00 00 00 00                   	mov    eax,fs:0x0
  4baaa0:	50                                  	push   eax
  4baaa1:	64 89 25 00 00 00 00                	mov    DWORD PTR fs:0x0,esp
  4baaa8:	83 ec 30                            	sub    esp,0x30
  4baaab:	53                                  	push   ebx
  4baaac:	56                                  	push   esi
  4baaad:	8b f1                               	mov    esi,ecx
  4baaaf:	57                                  	push   edi
  4baab0:	89 75 e8                            	mov    DWORD PTR [ebp-0x18],esi
  4baab3:	8d 45 18                            	lea    eax,[ebp+0x18]
  4baab6:	50                                  	push   eax
  4baab7:	8d 4d f0                            	lea    ecx,[ebp-0x10]
  4baaba:	51                                  	push   ecx
  4baabb:	8b ce                               	mov    ecx,esi
  4baabd:	c7 45 fc 01 00 00 00                	mov    DWORD PTR [ebp-0x4],0x1
  4baac4:	e8 a7 10 00 00                      	call   0x4bbb70
  4baac9:	8b 46 04                            	mov    eax,DWORD PTR [esi+0x4]
  4baacc:	8b 4d f0                            	mov    ecx,DWORD PTR [ebp-0x10]
  4baacf:	3b c8                               	cmp    ecx,eax
  4baad1:	74 1a                               	je     0x4baaed
  4baad3:	8d 41 0c                            	lea    eax,[ecx+0xc]
  4baad6:	50                                  	push   eax
  4baad7:	8d 55 18                            	lea    edx,[ebp+0x18]
  4baada:	52                                  	push   edx
  4baadb:	ff                                  	.byte 0xff
  4baadc:	15                                  	.byte 0x15
  4baadd:	18 e5                               	sbb    ch,ah
  4baadf:	4d                                  	dec    ebp

; Hypothèse d’entrée à 0x00434670 (sans xref prouvée)

/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

00434670 <.text+0x33670>:
  434670:	55                                  	push   ebp
  434671:	8b ec                               	mov    ebp,esp
  434673:	64 a1 00 00 00 00                   	mov    eax,fs:0x0
  434679:	6a ff                               	push   0xffffffff
  43467b:	68 68 53 4d 00                      	push   0x4d5368
  434680:	50                                  	push   eax
  434681:	64 89 25 00 00 00 00                	mov    DWORD PTR fs:0x0,esp
  434688:	56                                  	push   esi
  434689:	8b f1                               	mov    esi,ecx
  43468b:	8b 06                               	mov    eax,DWORD PTR [esi]
  43468d:	ff 50 04                            	call   DWORD PTR [eax+0x4]
  434690:	8b 16                               	mov    edx,DWORD PTR [esi]
  434692:	8b ce                               	mov    ecx,esi
  434694:	ff 52 08                            	call   DWORD PTR [edx+0x8]
  434697:	8b 45 08                            	mov    eax,DWORD PTR [ebp+0x8]
  43469a:	51                                  	push   ecx
  43469b:	8b cc                               	mov    ecx,esp
  43469d:	89 65 08                            	mov    DWORD PTR [ebp+0x8],esp
  4346a0:	68 58 13 51 00                      	push   0x511358
  4346a5:	89 46 20                            	mov    DWORD PTR [esi+0x20],eax
  4346a8:	e8 b7 d3 09 00                      	call   0x4d1a64
  4346ad:	8b ce                               	mov    ecx,esi
  4346af:	c7 45 fc ff ff ff ff                	mov    DWORD PTR [ebp-0x4],0xffffffff
  4346b6:	e8 25 00 00 00                      	call   0x4346e0
  4346bb:	50                                  	push   eax
  4346bc:	8d 4e 24                            	lea    ecx,[esi+0x24]
  4346bf:	e8                                  	.byte 0xe8
