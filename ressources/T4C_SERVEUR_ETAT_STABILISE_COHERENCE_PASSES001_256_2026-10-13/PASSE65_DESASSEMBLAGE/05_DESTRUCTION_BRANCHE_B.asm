
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0045d0d0 <.text+0x5c0d0>:
  45d0d0:	ac                   	lods   al,BYTE PTR ds:[esi]
  45d0d1:	13 00                	adc    eax,DWORD PTR [eax]
  45d0d3:	00 8b 55 e8 52 e8    	add    BYTE PTR [ebx-0x17ad17ab],cl
  45d0d9:	83 4f fe ff          	or     DWORD PTR [edi-0x2],0xffffffff
  45d0dd:	83 c4 04             	add    esp,0x4
  45d0e0:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d0e3:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  45d0e6:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  45d0e9:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  45d0ed:	e8 de 12 00 00       	call   0x45e3d0
  45d0f2:	e9 f5 00 00 00       	jmp    0x45d1ec
  45d0f7:	8b               	mov    edx,DWORD PTR [ebp+0x10]
