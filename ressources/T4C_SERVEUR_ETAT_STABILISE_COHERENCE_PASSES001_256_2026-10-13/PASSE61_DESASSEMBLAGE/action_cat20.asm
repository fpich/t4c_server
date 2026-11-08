
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0045ba40 <.text+0x5aa40>:
  45ba40:	00 00                	add    BYTE PTR [eax],al
  45ba42:	c7 85 fc fe ff ff 00 	mov    DWORD PTR [ebp-0x104],0x0
  45ba49:	00 00 00 
  45ba4c:	8d 85 e8 fe ff ff    	lea    eax,[ebp-0x118]
  45ba52:	50                   	push   eax
  45ba53:	8d 4d dc             	lea    ecx,[ebp-0x24]
  45ba56:	51                   	push   ecx
  45ba57:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  45ba5a:	c6 45 fc 25          	mov    BYTE PTR [ebp-0x4],0x25
  45ba5e:	e8 cd 37 fb ff       	call   0x40f230
  45ba63:	8b 30                	mov    esi,DWORD PTR [eax]
  45ba65:	6a 01                	push   0x1
  45ba67:	8d 8d e8 fe ff ff    	lea    ecx,[ebp-0x118]
  45ba6d:	c6 45 fc 24          	mov    BYTE PTR [ebp-0x4],0x24
  45ba71:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  45ba77:	8b 95 78 ff ff ff    	mov    edx,DWORD PTR [ebp-0x88]
  45ba7d:	8b 85 7c ff ff ff    	mov    eax,DWORD PTR [ebp-0x84]
  45ba83:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  45ba86:	6a 01                	push   0x1
  45ba88:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  45ba8b:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  45ba8e:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  45ba95:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  45ba9b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  45ba9e:	64 89      	mov    DWORD PTR fs:0x0,ecx
