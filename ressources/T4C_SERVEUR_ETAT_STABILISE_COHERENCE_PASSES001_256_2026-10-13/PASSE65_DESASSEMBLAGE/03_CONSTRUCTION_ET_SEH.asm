
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0045c950 <.text+0x5b950>:
  45c950:	55                   	push   ebp
  45c951:	8b ec                	mov    ebp,esp
  45c953:	6a ff                	push   0xffffffff
  45c955:	68 eb 77 4d 00       	push   0x4d77eb
  45c95a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  45c960:	50                   	push   eax
  45c961:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  45c968:	81 ec b8 00 00 00    	sub    esp,0xb8
  45c96e:	53                   	push   ebx
  45c96f:	56                   	push   esi
  45c970:	57                   	push   edi
  45c971:	68 40 1a 4d 00       	push   0x4d1a40
  45c976:	68 5e 1a 4d 00       	push   0x4d1a5e
  45c97b:	6a 05                	push   0x5
  45c97d:	6a 04                	push   0x4
  45c97f:	8d 45 88             	lea    eax,[ebp-0x78]
  45c982:	50                   	push   eax
  45c983:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
  45c986:	e8 01 54 07 00       	call   0x4d1d8c
  45c98b:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  45c98e:	33 db                	xor    ebx,ebx
  45c990:	8b cf                	mov    ecx,edi
  45c992:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx


/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0045caf9 <.text+0x5baf9>:
  45caf9:	ff 97 c0 00 00 00    	call   DWORD PTR [edi+0xc0]
  45caff:	8d 45 b7             	lea    eax,[ebp-0x49]
  45cb02:	50                   	push   eax
  45cb03:	8d 4d af             	lea    ecx,[ebp-0x51]
  45cb06:	51                   	push   ecx
  45cb07:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45cb0a:	89 5d b8             	mov    DWORD PTR [ebp-0x48],ebx
  45cb0d:	e8 8e 1d 00 00       	call   0x45e8a0
  45cb12:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
  45cb15:	8b 8a 90 01 00 00    	mov    ecx,DWORD PTR [edx+0x190]
  45cb1b:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  45cb1f:	e8 2c d8 05 00       	call   0x4ba350
