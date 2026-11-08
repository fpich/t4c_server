
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0040a590 <.text+0x9590>:
  40a590:	e4 4d                	in     al,0x4d
  40a592:	00 8d 4d 9c 51 8d    	add    BYTE PTR [ebp-0x72ae63b3],cl
  40a598:	4d                   	dec    ebp
  40a599:	ac                   	lods   al,BYTE PTR ds:[esi]
  40a59a:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  40a5a1:	ff 15 10 e5 4d 00    	call   DWORD PTR ds:0x4de510
  40a5a7:	c7 45 bc 00 00 00 00 	mov    DWORD PTR [ebp-0x44],0x0
  40a5ae:	c7 45 c0 00 00 00 00 	mov    DWORD PTR [ebp-0x40],0x0
  40a5b5:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  40a5b8:	8d 55 ac             	lea    edx,[ebp-0x54]
  40a5bb:	52                   	push   edx
  40a5bc:	8d 45 14             	lea    eax,[ebp+0x14]
  40a5bf:	50                   	push   eax
  40a5c0:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  40a5c4:	e8 67 4c 00 00       	call   0x40f230
  40a5c9:	8b 30                	mov    esi,DWORD PTR [eax]
  40a5cb:	6a 01                	push   0x1
  40a5cd:	8d 4d ac             	lea    ecx,[ebp-0x54]
  40a5d0:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  40a5d4:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  40a5da:	dd 46 20             	fld    QWORD PTR [esi+0x20]
  40a5dd:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  40a5e0:	dd 55 e0             	fst    QWORD PTR [ebp-0x20]
  40a5e3:	3b c3                	cmp    eax,ebx
  40a5e5:	0f 84 da f7 ff ff    	je     0x409dc5
  40a5eb:	8d 48 ff             	lea    ecx,[eax-0x1]
  40a5ee:	8a 01                	mov    al,BYTE PTR [ecx]
  40a5f0:	3a c3                	cmp    al,bl
  40a5f2:	74 1b                	je     0x40a60f
  40a5f4:	3c ff                	cmp    al,0xff
  40a5f6:	74 17                	je     0x40a60f
  40a5f8:	5f                   	pop    edi
  40a5f9:	fe c8                	dec    al
  40a5fb:	5e                   	pop    esi
  40a5fc:	88 01                	mov    BYTE PTR [ecx],al
  40a5fe:	5b                   	pop    ebx
  40a5ff:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a602:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a609:	8b e5                	mov    esp,ebp
  40a60b:	5d                   	pop    ebp
  40a60c:	c2 28 00             	ret    0x28
  40a60f:	51                   	push   ecx
