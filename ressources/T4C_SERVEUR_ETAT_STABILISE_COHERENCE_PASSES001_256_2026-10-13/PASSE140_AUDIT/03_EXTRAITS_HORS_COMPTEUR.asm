; Démonstration locale : code plausible, entrée non prouvée, volontairement HORS MASQUE

/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0043ef10 <.text+0x3df10>:
  43ef10:	55                   	push   ebp
  43ef11:	8b ec                	mov    ebp,esp
  43ef13:	6a ff                	push   0xffffffff
  43ef15:	68 e8 5e 4d 00       	push   0x4d5ee8
  43ef1a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  43ef20:	50                   	push   eax
  43ef21:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  43ef28:	51                   	push   ecx
  43ef29:	56                   	push   esi
  43ef2a:	68 a4 42 51 00       	push   0x5142a4
  43ef2f:	8d 4d f0             	lea    ecx,[ebp-0x10]
  43ef32:	e8 15 2b 09 00       	call   0x4d1a4c
  43ef37:	68 54 39 50 00       	push   0x503954
  43ef3c:	8d 4d f0             	lea    ecx,[ebp-0x10]
  43ef3f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  43ef46:	e8 07 2b 09 00       	call   0x4d1a52
  43ef4b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  43ef4e:	68 50 39 50 00       	push   0x503950
  43ef53:	50                   	push   eax
  43ef54:	ff 15 34 e3 4d 00    	call   DWORD PTR ds:0x4de334
  43ef5a:	8b f0                	mov    esi,eax
  43ef5c:	83 c4 08             	add    esp,0x8
  43ef5f:	85 f6                	test   esi,esi
  43ef61:	74 16                	je     0x43ef79
  43ef63:	68 dc 3a 50 00       	push   0x503adc
  43ef68:	56                   	push   esi
  43ef69:	ff 15 38 e3 4d 00    	call   DWORD PTR ds:0x4de338
  43ef6f:	56                   	push   esi
  43ef70:	ff 15 3c e3 4d 00    	call   DWORD PTR ds:0x4de33c
  43ef76:	83 c4 0c             	add    esp,0xc
  43ef79:	8d 4d f0             	lea    ecx,[ebp-0x10]
  43ef7c:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  43ef83:	e8 b8 2a 09 00       	call   0x4d1a40
  43ef88:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  43ef8b:	5e                   	pop    esi
  43ef8c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  43ef93:	8b e5                	mov    esp,ebp
  43ef95:	5d                   	pop    ebp
  43ef96:	c3                   	ret

; Second candidat hors compteur

/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

004baa90 <.text+0xb9a90>:
  4baa90:	55                   	push   ebp
  4baa91:	8b ec                	mov    ebp,esp
  4baa93:	6a ff                	push   0xffffffff
  4baa95:	68 f2 d1 4d 00       	push   0x4dd1f2
  4baa9a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4baaa0:	50                   	push   eax
  4baaa1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4baaa8:	83 ec 30             	sub    esp,0x30
  4baaab:	53                   	push   ebx
  4baaac:	56                   	push   esi
  4baaad:	8b f1                	mov    esi,ecx
  4baaaf:	57                   	push   edi
  4baab0:	89 75 e8             	mov    DWORD PTR [ebp-0x18],esi
  4baab3:	8d 45 18             	lea    eax,[ebp+0x18]
  4baab6:	50                   	push   eax
  4baab7:	8d 4d f0             	lea    ecx,[ebp-0x10]
  4baaba:	51                   	push   ecx
  4baabb:	8b ce                	mov    ecx,esi
  4baabd:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  4baac4:	e8 a7 10 00 00       	call   0x4bbb70
  4baac9:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  4baacc:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  4baacf:	3b c8                	cmp    ecx,eax
  4baad1:	74 1a                	je     0x4baaed
  4baad3:	8d 41 0c             	lea    eax,[ecx+0xc]
  4baad6:	50                   	push   eax
  4baad7:	8d 55 18             	lea    edx,[ebp+0x18]
  4baada:	52                   	push   edx
  4baadb:	ff                   	.byte 0xff
  4baadc:	15                   	.byte 0x15
  4baadd:	18 e5                	sbb    ch,ah
  4baadf:	4d                   	dec    ebp
