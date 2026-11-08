; Preuves de désassemblage T4C Server (1).exe — Passe 36
; SHA256 executable: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Les adresses sont absolues ; stop-address exclusif ; ne pas assimiler les octets vérifiés à une compréhension exhaustive.

; appel à 0x473610 depuis le chargeur de définitions: 0x00475D7D .. 0x00475E65 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00475d7d <.text+0x74d7d>:
  475d7d:	ff d6                	call   esi
  475d7f:	83 c4 04             	add    esp,0x4
  475d82:	8a 45 b8             	mov    al,BYTE PTR [ebp-0x48]
  475d85:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  475d88:	88 45 e8             	mov    BYTE PTR [ebp-0x18],al
  475d8b:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  475d8f:	e8 8c 40 02 00       	call   0x499e20
  475d94:	68 08 a5 50 00       	push   0x50a508
  475d99:	ff d6                	call   esi
  475d9b:	83 c4 04             	add    esp,0x4
  475d9e:	8d 4d bc             	lea    ecx,[ebp-0x44]
  475da1:	51                   	push   ecx
  475da2:	b3 07                	mov    bl,0x7
  475da4:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475da7:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  475daa:	e8 61 25 03 00       	call   0x4a8310
  475daf:	6a 01                	push   0x1
  475db1:	8d 55 dc             	lea    edx,[ebp-0x24]
  475db4:	52                   	push   edx
  475db5:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475db8:	c6 45 fc 08          	mov    BYTE PTR [ebp-0x4],0x8
  475dbc:	e8 4f 2a 03 00       	call   0x4a8810
  475dc1:	8a 45 ef             	mov    al,BYTE PTR [ebp-0x11]
  475dc4:	84 c0                	test   al,al
  475dc6:	74 10                	je     0x475dd8
  475dc8:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  475dcb:	50                   	push   eax
  475dcc:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  475dcf:	51                   	push   ecx
  475dd0:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475dd3:	e8 38 2a 03 00       	call   0x4a8810
  475dd8:	8d 55 84             	lea    edx,[ebp-0x7c]
  475ddb:	52                   	push   edx
  475ddc:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  475ddf:	e8 2c d8 ff ff       	call   0x473610
  475de4:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475de7:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  475dea:	e8 81 25 03 00       	call   0x4a8370
  475def:	bf 05 00 00 00       	mov    edi,0x5
  475df4:	68 f0 a4 50 00       	push   0x50a4f0
  475df9:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  475dfc:	ff d6                	call   esi
  475dfe:	83 c4 04             	add    esp,0x4
  475e01:	8d 45 b4             	lea    eax,[ebp-0x4c]
  475e04:	b3 0a                	mov    bl,0xa
  475e06:	50                   	push   eax
  475e07:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475e0a:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  475e0d:	c7 45 b4 b8 f5 4d 00 	mov    DWORD PTR [ebp-0x4c],0x4df5b8
  475e14:	c7 45 b8 01 00 00 00 	mov    DWORD PTR [ebp-0x48],0x1
  475e1b:	e8 70 7c 03 00       	call   0x4ada90
  475e20:	6a 01                	push   0x1
  475e22:	8d 4d dc             	lea    ecx,[ebp-0x24]
  475e25:	51                   	push   ecx
  475e26:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475e29:	c6 45 fc 0b          	mov    BYTE PTR [ebp-0x4],0xb
  475e2d:	e8 6e 7e 03 00       	call   0x4adca0
  475e32:	8a 45 ef             	mov    al,BYTE PTR [ebp-0x11]
  475e35:	84 c0                	test   al,al
  475e37:	74 10                	je     0x475e49
  475e39:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
  475e3c:	52                   	push   edx
  475e3d:	8d 45 d4             	lea    eax,[ebp-0x2c]
  475e40:	50                   	push   eax
  475e41:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475e44:	e8 57 7e 03 00       	call   0x4adca0
  475e49:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475e4c:	51                   	push   ecx
  475e4d:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  475e50:	e8 2b e1 ff ff       	call   0x473f80
  475e55:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475e58:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  475e5b:	e8 90 7c 03 00       	call   0x4adaf0
  475e60:	68 dc a4 50 00       	push   0x50a4dc

