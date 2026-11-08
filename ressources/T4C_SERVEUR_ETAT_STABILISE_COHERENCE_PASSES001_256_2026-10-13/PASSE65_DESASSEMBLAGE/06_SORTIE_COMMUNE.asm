
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0045d29e <.text+0x5c29e>:
  45d29e:	4d                   	dec    ebp
  45d29f:	fe                   	(bad)
  45d2a0:	ff 83 c4 04 89 5d    	inc    DWORD PTR [ebx+0x5d8904c4]
  45d2a6:	c8 89 5d cc          	enter  0x5d89,0xcc
  45d2aa:	8d 4d d0             	lea    ecx,[ebp-0x30]
  45d2ad:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  45d2b1:	e8 8a 47 07 00       	call   0x4d1a40
  45d2b6:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  45d2b9:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  45d2bd:	e8 7e 47 07 00       	call   0x4d1a40
  45d2c2:	8d 4d f0             	lea    ecx,[ebp-0x10]
  45d2c5:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  45d2c8:	e8 73 47 07 00       	call   0x4d1a40
  45d2cd:	68 40 1a 4d 00       	push   0x4d1a40
  45d2d2:	6a 05                	push   0x5
  45d2d4:	6a 04                	push   0x4
  45d2d6:	8d 4d 88             	lea    ecx,[ebp-0x78]
  45d2d9:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  45d2e0:	51                   	push   ecx
  45d2e1:	e8 aa 48 07 00       	call   0x4d1b90
  45d2e6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  45d2e9:	5f                   	pop    edi
  45d2ea:	5e                   	pop    esi
  45d2eb:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  45d2f2:	5b                   	pop    ebx
  45d2f3:	8b e5                	mov    esp,ebp
  45d2f5:	5d                   	pop    ebp
  45d2f6:	c2 14 00             	ret    0x14
