
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0040a5b5 <.text+0x95b5>:
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
  40a5dd:	8b                   	.byte 0x8b
