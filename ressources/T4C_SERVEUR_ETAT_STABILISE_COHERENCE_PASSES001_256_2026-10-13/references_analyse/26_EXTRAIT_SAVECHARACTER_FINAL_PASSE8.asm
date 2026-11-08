
/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004149a0 <.text+0x139a0>:
  4149a0:	4d                   	dec    ebp
  4149a1:	cc                   	int3
  4149a2:	8d 55 ec             	lea    edx,[ebp-0x14]
  4149a5:	25 ff ff 00 00       	and    eax,0xffff
  4149aa:	50                   	push   eax
  4149ab:	51                   	push   ecx
  4149ac:	68 54 13 50 00       	push   0x501354
  4149b1:	52                   	push   edx
  4149b2:	e8 dd d0 0b 00       	call   0x4d1a94
  4149b7:	81 c4 84 00 00 00    	add    esp,0x84
  4149bd:	8d 4d c8             	lea    ecx,[ebp-0x38]
  4149c0:	c6 45 fc 0f          	mov    BYTE PTR [ebp-0x4],0xf
  4149c4:	e8 77 d0 0b 00       	call   0x4d1a40
  4149c9:	6a 08                	push   0x8
  4149cb:	e8 20 d6 02 00       	call   0x441ff0
  4149d0:	8b d8                	mov    ebx,eax
  4149d2:	83 c4 04             	add    esp,0x4
  4149d5:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  4149d8:	85 db                	test   ebx,ebx
  4149da:	c6 45 fc 11          	mov    BYTE PTR [ebp-0x4],0x11
  4149de:	74 0d                	je     0x4149ed
  4149e0:	8d 4b 04             	lea    ecx,[ebx+0x4]
  4149e3:	e8 76 d0 0b 00       	call   0x4d1a5e
  4149e8:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  4149eb:	eb 07                	jmp    0x4149f4
  4149ed:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  4149f4:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  4149f7:	8d 45 ec             	lea    eax,[ebp-0x14]
  4149fa:	50                   	push   eax
  4149fb:	83 c1 04             	add    ecx,0x4
  4149fe:	c6 45 fc 0f          	mov    BYTE PTR [ebp-0x4],0xf
  414a02:	e8 3f d0 0b 00       	call   0x4d1a46
  414a07:	8b 47 28             	mov    eax,DWORD PTR [edi+0x28]
  414a0a:	8b 57 38             	mov    edx,DWORD PTR [edi+0x38]
  414a0d:	33 db                	xor    ebx,ebx
  414a0f:	42                   	inc    edx
  414a10:	3b c3                	cmp    eax,ebx
  414a12:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  414a15:	89 5f 40             	mov    DWORD PTR [edi+0x40],ebx
  414a18:	c6 47 34 08          	mov    BYTE PTR [edi+0x34],0x8
  414a1c:	89 47 2c             	mov    DWORD PTR [edi+0x2c],eax
  414a1f:	89 57 38             	mov    DWORD PTR [edi+0x38],edx
  414a22:	6a 0c                	push   0xc
  414a24:	75 28                	jne    0x414a4e
  414a26:	e8 c5 d5 02 00       	call   0x441ff0
  414a2b:	83 c4 04             	add    esp,0x4
  414a2e:	3b c3                	cmp    eax,ebx
  414a30:	74 07                	je     0x414a39
  414a32:	89 18                	mov    DWORD PTR [eax],ebx
  414a34:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  414a37:	eb 02                	jmp    0x414a3b
  414a39:	33 c0                	xor    eax,eax
  414a3b:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  414a3e:	89 47 28             	mov    DWORD PTR [edi+0x28],eax
  414a41:	89 47 24             	mov    DWORD PTR [edi+0x24],eax
  414a44:	89 18                	mov    DWORD PTR [eax],ebx
  414a46:	8b 57 20             	mov    edx,DWORD PTR [edi+0x20]
  414a49:	89 5a 04             	mov    DWORD PTR [edx+0x4],ebx
  414a4c:	eb 2b                	jmp    0x414a79
  414a4e:	e8 9d d5 02 00       	call   0x441ff0
  414a53:	83 c4 04             	add    esp,0x4
  414a56:	3b c3                	cmp    eax,ebx
  414a58:	74 07                	je     0x414a61
  414a5a:	89 18                	mov    DWORD PTR [eax],ebx
  414a5c:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  414a5f:	eb 02                	jmp    0x414a63
  414a61:	33 c0                	xor    eax,eax
  414a63:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  414a66:	89 01                	mov    DWORD PTR [ecx],eax
  414a68:	8b 57 2c             	mov    edx,DWORD PTR [edi+0x2c]
  414a6b:	89 47 28             	mov    DWORD PTR [edi+0x28],eax
  414a6e:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  414a71:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  414a74:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  414a77:	89 18                	mov    DWORD PTR [eax],ebx
  414a79:	39 5d 08             	cmp    DWORD PTR [ebp+0x8],ebx
  414a7c:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  414a7f:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  414a82:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  414a85:	74 4c                	je     0x414ad3
  414a87:	68 30 13 50 00       	push   0x501330
  414a8c:	68 00 08 00 00       	push   0x800
  414a91:	e8 aa d2 05 00       	call   0x471d40
  414a96:	83 c4 08             	add    esp,0x8
  414a99:	8d 45 08             	lea    eax,[ebp+0x8]
  414a9c:	50                   	push   eax
  414a9d:	8b ce                	mov    ecx,esi
  414a9f:	e8 ac 8f 00 00       	call   0x41da50
  414aa4:	8b 00                	mov    eax,DWORD PTR [eax]
  414aa6:	50                   	push   eax
  414aa7:	68 04 13 50 00       	push   0x501304
  414aac:	6a 04                	push   0x4
  414aae:	c6 45 fc 12          	mov    BYTE PTR [ebp-0x4],0x12
  414ab2:	e8 89 d2 05 00       	call   0x471d40
  414ab7:	83 c4 0c             	add    esp,0xc
  414aba:	8d 4d 08             	lea    ecx,[ebp+0x8]
  414abd:	c6 45 fc 0f          	mov    BYTE PTR [ebp-0x4],0xf
  414ac1:	e8 7a cf 0b 00       	call   0x4d1a40
  414ac6:	68 f4 12 50 00       	push   0x5012f4
  414acb:	56                   	push   esi
  414acc:	68 a0 3c 41 00       	push   0x413ca0
  414ad1:	eb 46                	jmp    0x414b19
  414ad3:	68 cc 12 50 00       	push   0x5012cc
  414ad8:	68 00 08 00 00       	push   0x800
  414add:	e8 5e d2 05 00       	call   0x471d40
  414ae2:	83 c4 08             	add    esp,0x8
  414ae5:	8d 4d 08             	lea    ecx,[ebp+0x8]
  414ae8:	51                   	push   ecx
  414ae9:	8b ce                	mov    ecx,esi
  414aeb:	e8 60 8f 00 00       	call   0x41da50
  414af0:	8b 00                	mov    eax,DWORD PTR [eax]
  414af2:	50                   	push   eax
  414af3:	68 a0 12 50 00       	push   0x5012a0
  414af8:	6a 04                	push   0x4
  414afa:	c6 45 fc 13          	mov    BYTE PTR [ebp-0x4],0x13
  414afe:	e8 3d d2 05 00       	call   0x471d40
  414b03:	83 c4 0c             	add    esp,0xc
  414b06:	8d 4d 08             	lea    ecx,[ebp+0x8]
  414b09:	c6 45 fc 0f          	mov    BYTE PTR [ebp-0x4],0xf
  414b0d:	e8 2e cf 0b 00       	call   0x4d1a40
  414b12:	68 f4 12 50 00       	push   0x5012f4
  414b17:	56                   	push   esi
  414b18:	53                   	push   ebx
  414b19:	57                   	push   edi
  414b1a:	b9 78 14 51 00       	mov    ecx,0x511478
  414b1f:	e8 cc a6 03 00       	call   0x44f1f0
  414b24:	8b 4d c4             	mov    ecx,DWORD PTR [ebp-0x3c]
  414b27:	8b 11                	mov    edx,DWORD PTR [ecx]
  414b29:	ff 52 08             	call   DWORD PTR [edx+0x8]
  414b2c:	8d 4d d0             	lea    ecx,[ebp-0x30]
  414b2f:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  414b33:	e8 08 cf 0b 00       	call   0x4d1a40
  414b38:	8d 4d c0             	lea    ecx,[ebp-0x40]
  414b3b:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  414b3f:	e8 fc ce 0b 00       	call   0x4d1a40
  414b44:	8d 4d ec             	lea    ecx,[ebp-0x14]
  414b47:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  414b4e:	e8 ed ce 0b 00       	call   0x4d1a40
  414b53:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  414b56:	5f                   	pop    edi
  414b57:	5e                   	pop    esi
  414b58:	33 c0                	xor    eax,eax
  414b5a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  414b61:	5b                   	pop    ebx
  414b62:	8b e5                	mov    esp,ebp
  414b64:	5d                   	pop    ebp
  414b65:	c2 04 00             	ret    0x4
  414b68:	90                   	nop
  414b69:	90                   	nop
  414b6a:	90                   	nop
  414b6b:	90                   	nop
  414b6c:	90                   	nop
  414b6d:	90                   	nop
  414b6e:	90                   	nop
  414b6f:	90                   	nop
