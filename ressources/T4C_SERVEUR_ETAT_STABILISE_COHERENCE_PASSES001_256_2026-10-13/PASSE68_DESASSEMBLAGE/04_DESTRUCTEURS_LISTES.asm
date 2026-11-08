; Passe 68 - preuves du binaire original ; SHA256=13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; section .text ; VA de base 0x401000 ; seuls les octets concordants sont comptés

; === 0x0045DC10 - 0x0045DC65 (fin exclue) ===
  0045dc10:	53                        	push   ebx
  0045dc11:	56                        	push   esi
  0045dc12:	57                        	push   edi
  0045dc13:	8b f9                     	mov    edi,ecx
  0045dc15:	8b 5f 04                  	mov    ebx,DWORD PTR [edi+0x4]
  0045dc18:	85 db                     	test   ebx,ebx
  0045dc1a:	75 04                     	jne    0x45dc20
  0045dc1c:	33 f6                     	xor    esi,esi
  0045dc1e:	eb 02                     	jmp    0x45dc22
  0045dc20:	8b 33                     	mov    esi,DWORD PTR [ebx]
  0045dc22:	3b f3                     	cmp    esi,ebx
  0045dc24:	74 27                     	je     0x45dc4d
  0045dc26:	8b c6                     	mov    eax,esi
  0045dc28:	8b 48 04                  	mov    ecx,DWORD PTR [eax+0x4]
  0045dc2b:	8b 10                     	mov    edx,DWORD PTR [eax]
  0045dc2d:	8b 36                     	mov    esi,DWORD PTR [esi]
  0045dc2f:	89 11                     	mov    DWORD PTR [ecx],edx
  0045dc31:	8b 08                     	mov    ecx,DWORD PTR [eax]
  0045dc33:	8b 50 04                  	mov    edx,DWORD PTR [eax+0x4]
  0045dc36:	50                        	push   eax
  0045dc37:	89 51 04                  	mov    DWORD PTR [ecx+0x4],edx
  0045dc3a:	e8 21 44 fe ff            	call   0x442060
  0045dc3f:	8b 4f 08                  	mov    ecx,DWORD PTR [edi+0x8]
  0045dc42:	83 c4 04                  	add    esp,0x4
  0045dc45:	49                        	dec    ecx
  0045dc46:	3b f3                     	cmp    esi,ebx
  0045dc48:	89 4f 08                  	mov    DWORD PTR [edi+0x8],ecx
  0045dc4b:	75 d9                     	jne    0x45dc26
  0045dc4d:	8b 47 04                  	mov    eax,DWORD PTR [edi+0x4]
  0045dc50:	50                        	push   eax
  0045dc51:	e8 0a 44 fe ff            	call   0x442060
  0045dc56:	83 c4 04                  	add    esp,0x4
  0045dc59:	33 c0                     	xor    eax,eax
  0045dc5b:	89 47 04                  	mov    DWORD PTR [edi+0x4],eax
  0045dc5e:	89 47 08                  	mov    DWORD PTR [edi+0x8],eax
  0045dc61:	5f                        	pop    edi
  0045dc62:	5e                        	pop    esi
  0045dc63:	5b                        	pop    ebx
  0045dc64:	c3                        	ret

; === 0x0045E1D0 - 0x0045E23D (fin exclue) ===
  0045e1d0:	55                        	push   ebp
  0045e1d1:	8b ec                     	mov    ebp,esp
  0045e1d3:	51                        	push   ecx
  0045e1d4:	53                        	push   ebx
  0045e1d5:	8b d9                     	mov    ebx,ecx
  0045e1d7:	8b 43 04                  	mov    eax,DWORD PTR [ebx+0x4]
  0045e1da:	85 c0                     	test   eax,eax
  0045e1dc:	57                        	push   edi
  0045e1dd:	89 45 fc                  	mov    DWORD PTR [ebp-0x4],eax
  0045e1e0:	75 04                     	jne    0x45e1e6
  0045e1e2:	33 ff                     	xor    edi,edi
  0045e1e4:	eb 02                     	jmp    0x45e1e8
  0045e1e6:	8b 38                     	mov    edi,DWORD PTR [eax]
  0045e1e8:	3b f8                     	cmp    edi,eax
  0045e1ea:	74 37                     	je     0x45e223
  0045e1ec:	56                        	push   esi
  0045e1ed:	8b f7                     	mov    esi,edi
  0045e1ef:	8b 46 04                  	mov    eax,DWORD PTR [esi+0x4]
  0045e1f2:	8b 0e                     	mov    ecx,DWORD PTR [esi]
  0045e1f4:	8b 3f                     	mov    edi,DWORD PTR [edi]
  0045e1f6:	89 08                     	mov    DWORD PTR [eax],ecx
  0045e1f8:	8b 16                     	mov    edx,DWORD PTR [esi]
  0045e1fa:	8b 46 04                  	mov    eax,DWORD PTR [esi+0x4]
  0045e1fd:	6a 01                     	push   0x1
  0045e1ff:	8d 4e 08                  	lea    ecx,[esi+0x8]
  0045e202:	89 42 04                  	mov    DWORD PTR [edx+0x4],eax
  0045e205:	ff 15 14 e5 4d 00         	call   DWORD PTR ds:0x4de514
  0045e20b:	56                        	push   esi
  0045e20c:	e8 4f 3e fe ff            	call   0x442060
  0045e211:	8b 4b 08                  	mov    ecx,DWORD PTR [ebx+0x8]
  0045e214:	8b 45 fc                  	mov    eax,DWORD PTR [ebp-0x4]
  0045e217:	83 c4 04                  	add    esp,0x4
  0045e21a:	49                        	dec    ecx
  0045e21b:	3b f8                     	cmp    edi,eax
  0045e21d:	89 4b 08                  	mov    DWORD PTR [ebx+0x8],ecx
  0045e220:	75 cb                     	jne    0x45e1ed
  0045e222:	5e                        	pop    esi
  0045e223:	8b 4b 04                  	mov    ecx,DWORD PTR [ebx+0x4]
  0045e226:	51                        	push   ecx
  0045e227:	e8 34 3e fe ff            	call   0x442060
  0045e22c:	83 c4 04                  	add    esp,0x4
  0045e22f:	33 c0                     	xor    eax,eax
  0045e231:	5f                        	pop    edi
  0045e232:	89 43 04                  	mov    DWORD PTR [ebx+0x4],eax
  0045e235:	89 43 08                  	mov    DWORD PTR [ebx+0x8],eax
  0045e238:	5b                        	pop    ebx
  0045e239:	8b e5                     	mov    esp,ebp
  0045e23b:	5d                        	pop    ebp
  0045e23c:	c3                        	ret

