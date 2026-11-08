; Passe 68 - preuves du binaire original ; SHA256=13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; section .text ; VA de base 0x401000 ; seuls les octets concordants sont comptés

; === 0x0045CAFF - 0x0045CB4B (fin exclue) ===
  0045caff:	8d 45 b7                  	lea    eax,[ebp-0x49]
  0045cb02:	50                        	push   eax
  0045cb03:	8d 4d af                  	lea    ecx,[ebp-0x51]
  0045cb06:	51                        	push   ecx
  0045cb07:	8d 4d c4                  	lea    ecx,[ebp-0x3c]
  0045cb0a:	89 5d b8                  	mov    DWORD PTR [ebp-0x48],ebx
  0045cb0d:	e8 8e 1d 00 00            	call   0x45e8a0
  0045cb12:	8b 55 c0                  	mov    edx,DWORD PTR [ebp-0x40]
  0045cb15:	8b 8a 90 01 00 00         	mov    ecx,DWORD PTR [edx+0x190]
  0045cb1b:	c6 45 fc 05               	mov    BYTE PTR [ebp-0x4],0x5
  0045cb1f:	e8 2c d8 05 00            	call   0x4ba350
  0045cb24:	8b f0                     	mov    esi,eax
  0045cb26:	8a 45 13                  	mov    al,BYTE PTR [ebp+0x13]
  0045cb29:	53                        	push   ebx
  0045cb2a:	53                        	push   ebx
  0045cb2b:	8d 4d e4                  	lea    ecx,[ebp-0x1c]
  0045cb2e:	88 45 e4                  	mov    BYTE PTR [ebp-0x1c],al
  0045cb31:	e8 9a 19 00 00            	call   0x45e4d0
  0045cb36:	89 45 e8                  	mov    DWORD PTR [ebp-0x18],eax
  0045cb39:	89 5d ec                  	mov    DWORD PTR [ebp-0x14],ebx
  0045cb3c:	8b 16                     	mov    edx,DWORD PTR [esi]
  0045cb3e:	8d 45 e4                  	lea    eax,[ebp-0x1c]
  0045cb41:	50                        	push   eax
  0045cb42:	8b ce                     	mov    ecx,esi
  0045cb44:	c6 45 fc 06               	mov    BYTE PTR [ebp-0x4],0x6
  0045cb48:	ff 52 0c                  	call   DWORD PTR [edx+0xc]

; === 0x0045CB76 - 0x0045CBD5 (fin exclue) ===
  0045cb76:	8d 95 3c ff ff ff         	lea    edx,[ebp-0xc4]
  0045cb7c:	68 0d f0 00 00            	push   0xf00d
  0045cb81:	52                        	push   edx
  0045cb82:	e8 59 fc 05 00            	call   0x4bc7e0
  0045cb87:	83 c4 08                  	add    esp,0x8
  0045cb8a:	8b f0                     	mov    esi,eax
  0045cb8c:	8b 4d bc                  	mov    ecx,DWORD PTR [ebp-0x44]
  0045cb8f:	8d 85 6c ff ff ff         	lea    eax,[ebp-0x94]
  0045cb95:	50                        	push   eax
  0045cb96:	c6 45 fc 07               	mov    BYTE PTR [ebp-0x4],0x7
  0045cb9a:	e8 61 07 00 00            	call   0x45d300
  0045cb9f:	56                        	push   esi
  0045cba0:	50                        	push   eax
  0045cba1:	c6 45 fc 08               	mov    BYTE PTR [ebp-0x4],0x8
  0045cba5:	ff 15 48 e5 4d 00         	call   DWORD PTR ds:0x4de548
  0045cbab:	83 c4 08                  	add    esp,0x8
  0045cbae:	6a 01                     	push   0x1
  0045cbb0:	8d 8d 6c ff ff ff         	lea    ecx,[ebp-0x94]
  0045cbb6:	88 45 17                  	mov    BYTE PTR [ebp+0x17],al
  0045cbb9:	c6 45 fc 07               	mov    BYTE PTR [ebp-0x4],0x7
  0045cbbd:	ff 15 14 e5 4d 00         	call   DWORD PTR ds:0x4de514
  0045cbc3:	6a 01                     	push   0x1
  0045cbc5:	8d 8d 3c ff ff ff         	lea    ecx,[ebp-0xc4]
  0045cbcb:	c6 45 fc 06               	mov    BYTE PTR [ebp-0x4],0x6
  0045cbcf:	ff 15 14 e5 4d 00         	call   DWORD PTR ds:0x4de514

; === 0x0045CC20 - 0x0045CCD2 (fin exclue) ===
  0045cc20:	8b 7d bc                  	mov    edi,DWORD PTR [ebp-0x44]
  0045cc23:	8d 85 5c ff ff ff         	lea    eax,[ebp-0xa4]
  0045cc29:	68 0f f0 00 00            	push   0xf00f
  0045cc2e:	50                        	push   eax
  0045cc2f:	e8 ac fb 05 00            	call   0x4bc7e0
  0045cc34:	83 c4 08                  	add    esp,0x8
  0045cc37:	8b f0                     	mov    esi,eax
  0045cc39:	8d 8d 4c ff ff ff         	lea    ecx,[ebp-0xb4]
  0045cc3f:	51                        	push   ecx
  0045cc40:	8b cf                     	mov    ecx,edi
  0045cc42:	c6 45 fc 09               	mov    BYTE PTR [ebp-0x4],0x9
  0045cc46:	e8 b5 06 00 00            	call   0x45d300
  0045cc4b:	56                        	push   esi
  0045cc4c:	50                        	push   eax
  0045cc4d:	c6 45 fc 0a               	mov    BYTE PTR [ebp-0x4],0xa
  0045cc51:	ff 15 48 e5 4d 00         	call   DWORD PTR ds:0x4de548
  0045cc57:	83 c4 08                  	add    esp,0x8
  0045cc5a:	6a 01                     	push   0x1
  0045cc5c:	8d 8d 4c ff ff ff         	lea    ecx,[ebp-0xb4]
  0045cc62:	88 45 17                  	mov    BYTE PTR [ebp+0x17],al
  0045cc65:	c6 45 fc 09               	mov    BYTE PTR [ebp-0x4],0x9
  0045cc69:	ff 15 14 e5 4d 00         	call   DWORD PTR ds:0x4de514
  0045cc6f:	6a 01                     	push   0x1
  0045cc71:	8d 8d 5c ff ff ff         	lea    ecx,[ebp-0xa4]
  0045cc77:	c6 45 fc 06               	mov    BYTE PTR [ebp-0x4],0x6
  0045cc7b:	ff 15 14 e5 4d 00         	call   DWORD PTR ds:0x4de514
  0045cc81:	38 5d 17                  	cmp    BYTE PTR [ebp+0x17],bl
  0045cc84:	74 08                     	je     0x45cc8e
  0045cc86:	89 7d b8                  	mov    DWORD PTR [ebp-0x48],edi
  0045cc89:	e9 28 02 00 00            	jmp    0x45ceb6
  0045cc8e:	8a 55 13                  	mov    dl,BYTE PTR [ebp+0x13]
  0045cc91:	53                        	push   ebx
  0045cc92:	53                        	push   ebx
  0045cc93:	8d 4d d8                  	lea    ecx,[ebp-0x28]
  0045cc96:	88 55 d8                  	mov    BYTE PTR [ebp-0x28],dl
  0045cc99:	e8 f2 10 fd ff            	call   0x42dd90
  0045cc9e:	89 45 dc                  	mov    DWORD PTR [ebp-0x24],eax
  0045cca1:	89 5d e0                  	mov    DWORD PTR [ebp-0x20],ebx
  0045cca4:	8d 47 34                  	lea    eax,[edi+0x34]
  0045cca7:	50                        	push   eax
  0045cca8:	8d 4d d8                  	lea    ecx,[ebp-0x28]
  0045ccab:	c6 45 fc 0b               	mov    BYTE PTR [ebp-0x4],0xb
  0045ccaf:	e8 8c 15 00 00            	call   0x45e240
  0045ccb4:	8b 45 e0                  	mov    eax,DWORD PTR [ebp-0x20]
  0045ccb7:	3b c3                     	cmp    eax,ebx
  0045ccb9:	75 2f                     	jne    0x45ccea
  0045ccbb:	8b 4d dc                  	mov    ecx,DWORD PTR [ebp-0x24]
  0045ccbe:	51                        	push   ecx
  0045ccbf:	8d 95 7c ff ff ff         	lea    edx,[ebp-0x84]
  0045ccc5:	52                        	push   edx
  0045ccc6:	8d 4d d8                  	lea    ecx,[ebp-0x28]
  0045ccc9:	c6 45 fc 06               	mov    BYTE PTR [ebp-0x4],0x6
  0045cccd:	e8 0e 16 00 00            	call   0x45e2e0

; === 0x0045CF50 - 0x0045CF9A (fin exclue) ===
  0045cf50:	04 52                     	add    al,0x52
  0045cf52:	8d 45 10                  	lea    eax,[ebp+0x10]
  0045cf55:	50                        	push   eax
  0045cf56:	8d 4d e4                  	lea    ecx,[ebp-0x1c]
  0045cf59:	89 5d dc                  	mov    DWORD PTR [ebp-0x24],ebx
  0045cf5c:	89 5d e0                  	mov    DWORD PTR [ebp-0x20],ebx
  0045cf5f:	c6 45 fc 05               	mov    BYTE PTR [ebp-0x4],0x5
  0045cf63:	e8 08 0d 00 00            	call   0x45dc70
  0045cf68:	8b 08                     	mov    ecx,DWORD PTR [eax]
  0045cf6a:	51                        	push   ecx
  0045cf6b:	8d 55 08                  	lea    edx,[ebp+0x8]
  0045cf6e:	52                        	push   edx
  0045cf6f:	8d 4d e4                  	lea    ecx,[ebp-0x1c]
  0045cf72:	e8 09 15 00 00            	call   0x45e480
  0045cf77:	8b 45 e8                  	mov    eax,DWORD PTR [ebp-0x18]
  0045cf7a:	50                        	push   eax
  0045cf7b:	e8 e0 50 fe ff            	call   0x442060
  0045cf80:	83 c4 04                  	add    esp,0x4
  0045cf83:	8d 4d c4                  	lea    ecx,[ebp-0x3c]
  0045cf86:	89 5d e8                  	mov    DWORD PTR [ebp-0x18],ebx
  0045cf89:	89 5d ec                  	mov    DWORD PTR [ebp-0x14],ebx
  0045cf8c:	c6 45 fc 03               	mov    BYTE PTR [ebp-0x4],0x3
  0045cf90:	e8 3b 14 00 00            	call   0x45e3d0
  0045cf95:	e9 10 03 00 00            	jmp    0x45d2aa

; === 0x0045D145 - 0x0045D179 (fin exclue) ===
  0045d145:	10 52 8d                  	adc    BYTE PTR [edx-0x73],dl
  0045d148:	4d                        	dec    ebp
  0045d149:	e4 89                     	in     al,0x89
  0045d14b:	5d                        	pop    ebp
  0045d14c:	dc 89 5d e0 c6 45         	fmul   QWORD PTR [ecx+0x45c6e05d]
  0045d152:	fc                        	cld
  0045d153:	05 e8 17 0b 00            	add    eax,0xb17e8
  0045d158:	00 8b 00 50 8d 4d         	add    BYTE PTR [ebx+0x4d8d5000],cl
  0045d15e:	08 e9                     	or     cl,ch
  0045d160:	67 ff                     	addr16 (bad)
  0045d162:	ff                        	(bad)
  0045d163:	ff                        	(bad)
  0045d164:	39 5d b8                  	cmp    DWORD PTR [ebp-0x48],ebx
  0045d167:	0f 85 bb 00 00 00         	jne    0x45d228
  0045d16d:	3b c3                     	cmp    eax,ebx
  0045d16f:	c6 45 fc 05               	mov    BYTE PTR [ebp-0x4],0x5
  0045d173:	75 04                     	jne    0x45d179
  0045d175:	33 c9                     	xor    ecx,ecx
  0045d177:	eb 02                     	jmp    0x45d17b

