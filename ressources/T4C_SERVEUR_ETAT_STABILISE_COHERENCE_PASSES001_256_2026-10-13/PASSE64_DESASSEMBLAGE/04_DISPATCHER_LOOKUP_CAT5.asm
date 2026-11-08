
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0045acc3 <.text+0x59cc3>:
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
