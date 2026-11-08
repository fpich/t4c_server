
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0045acb0 <.text+0x59cb0>:
  45acb0:	00 00                	add    BYTE PTR [eax],al
  45acb2:	00 00                	add    BYTE PTR [eax],al
  45acb4:	c7 85 74 ff ff ff 00 	mov    DWORD PTR [ebp-0x8c],0x0
  45acbb:	00 00 00 
  45acbe:	e8 fd 3c 00 00       	call   0x45e9c0
  45acc3:	50                   	push   eax
  45acc4:	8d 55 dc             	lea    edx,[ebp-0x24]
  45acc7:	52                   	push   edx
  45acc8:	8b cb                	mov    ecx,ebx
  45acca:	c6 45 fc 0b          	mov    BYTE PTR [ebp-0x4],0xb
  45acce:	e8 5d 45 fb ff       	call   0x40f230
  45acd3:	8b 00                	mov    eax,DWORD PTR [eax]
  45acd5:	6a 01                	push   0x1
  45acd7:	8d 8d e8 fe ff ff    	lea    ecx,[ebp-0x118]
  45acdd:	89 45 1c             	mov    DWORD PTR [ebp+0x1c],eax
  45ace0:	c6 45 fc 0a          	mov    BYTE PTR [ebp-0x4],0xa
  45ace4:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  45acea:	dd 85 78 ff ff ff    	fld    QWORD PTR [ebp-0x88]
  45acf0:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  45acf3:	d9 c0                	fld    st(0)
  45acf5:	dd 59 20             	fstp   QWORD PTR [ecx+0x20]
  45acf8:	dd 45 80             	fld    QWORD PTR [ebp-0x80]
  45acfb:	dc 05 c0 e8 4d 00    	fadd   QWORD PTR ds:0x4de8c0
  45ad01:	dd 9d 78 ff ff ff    	fstp   QWORD PTR [ebp-0x88]
  45ad07:	dc 9d 78 ff ff ff    	fcomp  QWORD PTR [ebp-0x88]
  45ad0d:	df e0                	fnstsw ax
  45ad0f:	f6               	test   ah,0x1
