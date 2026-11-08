
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0045cf70 <.text+0x5bf70>:
  45cf70:	4d                   	dec    ebp
  45cf71:	e4 e8                	in     al,0xe8
  45cf73:	09 15 00 00 8b 45    	or     DWORD PTR ds:0x458b0000,edx
  45cf79:	e8 50 e8 e0 50       	call   0x5126b7ce
  45cf7e:	fe                   	(bad)
  45cf7f:	ff 83 c4 04 8d 4d    	inc    DWORD PTR [ebx+0x4d8d04c4]
  45cf85:	c4 89 5d e8 89 5d    	les    ecx,FWORD PTR [ecx+0x5d89e85d]
  45cf8b:	ec                   	in     al,dx
  45cf8c:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  45cf90:	e8 3b 14 00 00       	call   0x45e3d0
  45cf95:	e9 10 03 00 00       	jmp    0x45d2aa
  45cf9a:	8b               	mov    eax,DWORD PTR [ebp-0x44]
