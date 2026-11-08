
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0045e8a0 <.text+0x5d8a0>:
  45e8a0:	55                   	push   ebp
  45e8a1:	8b ec                	mov    ebp,esp
  45e8a3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  45e8a6:	8a 00                	mov    al,BYTE PTR [eax]
  45e8a8:	56                   	push   esi
  45e8a9:	8b f1                	mov    esi,ecx
  45e8ab:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  45e8ae:	8a 09                	mov    cl,BYTE PTR [ecx]
  45e8b0:	6a 30                	push   0x30
  45e8b2:	88 0e                	mov    BYTE PTR [esi],cl
  45e8b4:	88 46 01             	mov    BYTE PTR [esi+0x1],al
  45e8b7:	e8 34 37 fe ff       	call   0x441ff0
  45e8bc:	83 c4 04             	add    esp,0x4
  45e8bf:	33 c9                	xor    ecx,ecx
  45e8c1:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  45e8c4:	88 48 29             	mov    BYTE PTR [eax+0x29],cl
  45e8c7:	b2 01                	mov    dl,0x1
  45e8c9:	88 50 28             	mov    BYTE PTR [eax+0x28],dl
  45e8cc:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  45e8cf:	88 50 29             	mov    BYTE PTR [eax+0x29],dl
  45e8d2:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  45e8d5:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  45e8d8:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  45e8db:	89 00                	mov    DWORD PTR [eax],eax
  45e8dd:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  45e8e0:	89 40 08             	mov    DWORD PTR [eax+0x8],eax
  45e8e3:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  45e8e6:	8b c6                	mov    eax,esi
  45e8e8:	5e                   	pop    esi
  45e8e9:	5d                   	pop    ebp
  45e8ea:	c2 08 00             	ret    0x8
