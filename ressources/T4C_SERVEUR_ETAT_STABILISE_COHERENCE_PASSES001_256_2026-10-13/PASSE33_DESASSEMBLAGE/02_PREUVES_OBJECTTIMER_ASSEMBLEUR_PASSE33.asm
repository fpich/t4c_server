; Preuves assembleur T4C Server(1).exe : comparaison octet par octet avec .text.
; Les VA et les octets sont issus de objdump -d -M intel ; ne pas confondre octets verifies et comprehension exhaustive.
; Cette piece est une nouvelle contribution de la passe 33.

; Section : ObjectTimer Create/Destroy/Add/Remove/Verify/Lookup : 0x0044DBF0..0x0044E2C0 (fin exclusive)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0044dbf0 <.text+0x4cbf0>:
  44dbf0:	c3                   	ret
  44dbf1:	90                   	nop
  44dbf2:	90                   	nop
  44dbf3:	90                   	nop
  44dbf4:	90                   	nop
  44dbf5:	90                   	nop
  44dbf6:	90                   	nop
  44dbf7:	90                   	nop
  44dbf8:	90                   	nop
  44dbf9:	90                   	nop
  44dbfa:	90                   	nop
  44dbfb:	90                   	nop
  44dbfc:	90                   	nop
  44dbfd:	90                   	nop
  44dbfe:	90                   	nop
  44dbff:	90                   	nop
  44dc00:	c3                   	ret
  44dc01:	90                   	nop
  44dc02:	90                   	nop
  44dc03:	90                   	nop
  44dc04:	90                   	nop
  44dc05:	90                   	nop
  44dc06:	90                   	nop
  44dc07:	90                   	nop
  44dc08:	90                   	nop
  44dc09:	90                   	nop
  44dc0a:	90                   	nop
  44dc0b:	90                   	nop
  44dc0c:	90                   	nop
  44dc0d:	90                   	nop
  44dc0e:	90                   	nop
  44dc0f:	90                   	nop
  44dc10:	55                   	push   ebp
  44dc11:	8b ec                	mov    ebp,esp
  44dc13:	83 ec 08             	sub    esp,0x8
  44dc16:	56                   	push   esi
  44dc17:	50                   	push   eax
  44dc18:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  44dc1b:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44dc1e:	58                   	pop    eax
  44dc1f:	e8 dc 65 fe ff       	call   0x434200
  44dc24:	8b 10                	mov    edx,DWORD PTR [eax]
  44dc26:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44dc29:	51                   	push   ecx
  44dc2a:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  44dc2d:	68 10 46 51 00       	push   0x514610
  44dc32:	51                   	push   ecx
  44dc33:	8b c8                	mov    ecx,eax
  44dc35:	ff 12                	call   DWORD PTR [edx]
  44dc37:	68 18 46 51 00       	push   0x514618
  44dc3c:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  44dc42:	e8 b9 65 fe ff       	call   0x434200
  44dc47:	8b 10                	mov    edx,DWORD PTR [eax]
  44dc49:	68 14 46 51 00       	push   0x514614
  44dc4e:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44dc51:	51                   	push   ecx
  44dc52:	8b c8                	mov    ecx,eax
  44dc54:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44dc57:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  44dc5a:	8b ce                	mov    ecx,esi
  44dc5c:	e8 0f da 03 00       	call   0x48b670
  44dc61:	3c 03                	cmp    al,0x3
  44dc63:	75 18                	jne    0x44dc7d
  44dc65:	56                   	push   esi
  44dc66:	e8 a5 04 00 00       	call   0x44e110
  44dc6b:	83 c4 04             	add    esp,0x4
  44dc6e:	85 c0                	test   eax,eax
  44dc70:	75 0b                	jne    0x44dc7d
  44dc72:	56                   	push   esi
  44dc73:	b9 38 46 51 00       	mov    ecx,0x514638
  44dc78:	e8 43 06 00 00       	call   0x44e2c0
  44dc7d:	e8 7e 65 fe ff       	call   0x434200
  44dc82:	8b 10                	mov    edx,DWORD PTR [eax]
  44dc84:	68 14 46 51 00       	push   0x514614
  44dc89:	8b c8                	mov    ecx,eax
  44dc8b:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  44dc8e:	68 18 46 51 00       	push   0x514618
  44dc93:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  44dc99:	5e                   	pop    esi
  44dc9a:	8b e5                	mov    esp,ebp
  44dc9c:	5d                   	pop    ebp
  44dc9d:	c3                   	ret
  44dc9e:	90                   	nop
  44dc9f:	90                   	nop
  44dca0:	55                   	push   ebp
  44dca1:	8b ec                	mov    ebp,esp
  44dca3:	83 ec 08             	sub    esp,0x8
  44dca6:	53                   	push   ebx
  44dca7:	56                   	push   esi
  44dca8:	57                   	push   edi
  44dca9:	50                   	push   eax
  44dcaa:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  44dcad:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44dcb0:	58                   	pop    eax
  44dcb1:	e8 4a 65 fe ff       	call   0x434200
  44dcb6:	8b 10                	mov    edx,DWORD PTR [eax]
  44dcb8:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44dcbb:	51                   	push   ecx
  44dcbc:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  44dcbf:	68 10 46 51 00       	push   0x514610
  44dcc4:	51                   	push   ecx
  44dcc5:	8b c8                	mov    ecx,eax
  44dcc7:	ff 12                	call   DWORD PTR [edx]
  44dcc9:	68 18 46 51 00       	push   0x514618
  44dcce:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  44dcd4:	e8 27 65 fe ff       	call   0x434200
  44dcd9:	8b 10                	mov    edx,DWORD PTR [eax]
  44dcdb:	68 14 46 51 00       	push   0x514614
  44dce0:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44dce3:	51                   	push   ecx
  44dce4:	8b c8                	mov    ecx,eax
  44dce6:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44dce9:	8b 35 5c 46 51 00    	mov    esi,DWORD PTR ds:0x51465c
  44dcef:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  44dcf2:	33 ff                	xor    edi,edi
  44dcf4:	33 c9                	xor    ecx,ecx
  44dcf6:	8b c6                	mov    eax,esi
  44dcf8:	33 d2                	xor    edx,edx
  44dcfa:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44dcff:	89 15 78 46 51 00    	mov    DWORD PTR ds:0x514678,edx
  44dd05:	c6 05 6c 46 51 00 08 	mov    BYTE PTR ds:0x51466c,0x8
  44dd0c:	3b d7                	cmp    edx,edi
  44dd0e:	74 09                	je     0x44dd19
  44dd10:	8b 00                	mov    eax,DWORD PTR [eax]
  44dd12:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44dd17:	eb 0b                	jmp    0x44dd24
  44dd19:	ba 01 00 00 00       	mov    edx,0x1
  44dd1e:	89 15 78 46 51 00    	mov    DWORD PTR ds:0x514678,edx
  44dd24:	3b c7                	cmp    eax,edi
  44dd26:	0f 84 04 01 00 00    	je     0x44de30
  44dd2c:	3b cf                	cmp    ecx,edi
  44dd2e:	0f 85 0d 01 00 00    	jne    0x44de41
  44dd34:	39 58 08             	cmp    DWORD PTR [eax+0x8],ebx
  44dd37:	75 d3                	jne    0x44dd0c
  44dd39:	ff 0d 70 46 51 00    	dec    DWORD PTR ds:0x514670
  44dd3f:	8b 0d 60 46 51 00    	mov    ecx,DWORD PTR ds:0x514660
  44dd45:	3b c1                	cmp    eax,ecx
  44dd47:	a3 64 46 51 00       	mov    ds:0x514664,eax
  44dd4c:	74 4d                	je     0x44dd9b
  44dd4e:	3b c6                	cmp    eax,esi
  44dd50:	74 45                	je     0x44dd97
  44dd52:	8b 10                	mov    edx,DWORD PTR [eax]
  44dd54:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  44dd57:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  44dd5a:	a1 58 46 51 00       	mov    eax,ds:0x514658
  44dd5f:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  44dd62:	8b 10                	mov    edx,DWORD PTR [eax]
  44dd64:	89 11                	mov    DWORD PTR [ecx],edx
  44dd66:	a1 78 46 51 00       	mov    eax,ds:0x514678
  44dd6b:	83 f8 01             	cmp    eax,0x1
  44dd6e:	75 13                	jne    0x44dd83
  44dd70:	a1 58 46 51 00       	mov    eax,ds:0x514658
  44dd75:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  44dd78:	89 0d 58 46 51 00    	mov    DWORD PTR ds:0x514658,ecx
  44dd7e:	e9 84 00 00 00       	jmp    0x44de07
  44dd83:	83 f8 02             	cmp    eax,0x2
  44dd86:	75 7f                	jne    0x44de07
  44dd88:	8b 15 58 46 51 00    	mov    edx,DWORD PTR ds:0x514658
  44dd8e:	8b 02                	mov    eax,DWORD PTR [edx]
  44dd90:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44dd95:	eb 70                	jmp    0x44de07
  44dd97:	3b c1                	cmp    eax,ecx
  44dd99:	75 2a                	jne    0x44ddc5
  44dd9b:	3b c6                	cmp    eax,esi
  44dd9d:	74 2a                	je     0x44ddc9
  44dd9f:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  44dda2:	89 39                	mov    DWORD PTR [ecx],edi
  44dda4:	a1 58 46 51 00       	mov    eax,ds:0x514658
  44dda9:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  44ddac:	89 15 60 46 51 00    	mov    DWORD PTR ds:0x514660,edx
  44ddb2:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  44ddb5:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44ddba:	83 3d 78 46 51 00 02 	cmp    DWORD PTR ds:0x514678,0x2
  44ddc1:	75 44                	jne    0x44de07
  44ddc3:	eb 3c                	jmp    0x44de01
  44ddc5:	3b c6                	cmp    eax,esi
  44ddc7:	75 26                	jne    0x44ddef
  44ddc9:	3b c1                	cmp    eax,ecx
  44ddcb:	74 22                	je     0x44ddef
  44ddcd:	8b 08                	mov    ecx,DWORD PTR [eax]
  44ddcf:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  44ddd2:	8b 15 58 46 51 00    	mov    edx,DWORD PTR ds:0x514658
  44ddd8:	8b 02                	mov    eax,DWORD PTR [edx]
  44ddda:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44dddf:	a3 5c 46 51 00       	mov    ds:0x51465c,eax
  44dde4:	83 3d 78 46 51 00 01 	cmp    DWORD PTR ds:0x514678,0x1
  44ddeb:	75 1a                	jne    0x44de07
  44dded:	eb 12                	jmp    0x44de01
  44ddef:	89 3d 58 46 51 00    	mov    DWORD PTR ds:0x514658,edi
  44ddf5:	89 3d 5c 46 51 00    	mov    DWORD PTR ds:0x51465c,edi
  44ddfb:	89 3d 60 46 51 00    	mov    DWORD PTR ds:0x514660,edi
  44de01:	89 3d 78 46 51 00    	mov    DWORD PTR ds:0x514678,edi
  44de07:	a1 64 46 51 00       	mov    eax,ds:0x514664
  44de0c:	50                   	push   eax
  44de0d:	e8 4e 42 ff ff       	call   0x442060
  44de12:	8b 35 5c 46 51 00    	mov    esi,DWORD PTR ds:0x51465c
  44de18:	a1 58 46 51 00       	mov    eax,ds:0x514658
  44de1d:	8b 15 78 46 51 00    	mov    edx,DWORD PTR ds:0x514678
  44de23:	83 c4 04             	add    esp,0x4
  44de26:	b9 01 00 00 00       	mov    ecx,0x1
  44de2b:	e9 dc fe ff ff       	jmp    0x44dd0c
  44de30:	3b d7                	cmp    edx,edi
  44de32:	74 07                	je     0x44de3b
  44de34:	c6 05 6c 46 51 00 07 	mov    BYTE PTR ds:0x51466c,0x7
  44de3b:	89 3d 78 46 51 00    	mov    DWORD PTR ds:0x514678,edi
  44de41:	e8 ba 63 fe ff       	call   0x434200
  44de46:	8b 10                	mov    edx,DWORD PTR [eax]
  44de48:	68 14 46 51 00       	push   0x514614
  44de4d:	8b c8                	mov    ecx,eax
  44de4f:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  44de52:	68 18 46 51 00       	push   0x514618
  44de57:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  44de5d:	5f                   	pop    edi
  44de5e:	5e                   	pop    esi
  44de5f:	5b                   	pop    ebx
  44de60:	8b e5                	mov    esp,ebp
  44de62:	5d                   	pop    ebp
  44de63:	c3                   	ret
  44de64:	90                   	nop
  44de65:	90                   	nop
  44de66:	90                   	nop
  44de67:	90                   	nop
  44de68:	90                   	nop
  44de69:	90                   	nop
  44de6a:	90                   	nop
  44de6b:	90                   	nop
  44de6c:	90                   	nop
  44de6d:	90                   	nop
  44de6e:	90                   	nop
  44de6f:	90                   	nop
  44de70:	55                   	push   ebp
  44de71:	8b ec                	mov    ebp,esp
  44de73:	83 ec 08             	sub    esp,0x8
  44de76:	56                   	push   esi
  44de77:	57                   	push   edi
  44de78:	50                   	push   eax
  44de79:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  44de7c:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44de7f:	58                   	pop    eax
  44de80:	e8 7b 63 fe ff       	call   0x434200
  44de85:	8b 10                	mov    edx,DWORD PTR [eax]
  44de87:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44de8a:	51                   	push   ecx
  44de8b:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  44de8e:	68 10 46 51 00       	push   0x514610
  44de93:	51                   	push   ecx
  44de94:	8b c8                	mov    ecx,eax
  44de96:	ff 12                	call   DWORD PTR [edx]
  44de98:	68 18 46 51 00       	push   0x514618
  44de9d:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  44dea3:	e8 58 63 fe ff       	call   0x434200
  44dea8:	8b 10                	mov    edx,DWORD PTR [eax]
  44deaa:	68 14 46 51 00       	push   0x514614
  44deaf:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44deb2:	51                   	push   ecx
  44deb3:	8b c8                	mov    ecx,eax
  44deb5:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44deb8:	a1 5c 46 51 00       	mov    eax,ds:0x51465c
  44debd:	33 ff                	xor    edi,edi
  44debf:	33 f6                	xor    esi,esi
  44dec1:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44dec6:	89 3d 78 46 51 00    	mov    DWORD PTR ds:0x514678,edi
  44decc:	c6 05 6c 46 51 00 08 	mov    BYTE PTR ds:0x51466c,0x8
  44ded3:	8b 0d 78 46 51 00    	mov    ecx,DWORD PTR ds:0x514678
  44ded9:	3b cf                	cmp    ecx,edi
  44dedb:	74 09                	je     0x44dee6
  44dedd:	8b 00                	mov    eax,DWORD PTR [eax]
  44dedf:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44dee4:	eb 0b                	jmp    0x44def1
  44dee6:	b9 01 00 00 00       	mov    ecx,0x1
  44deeb:	89 0d 78 46 51 00    	mov    DWORD PTR ds:0x514678,ecx
  44def1:	3b c7                	cmp    eax,edi
  44def3:	0f 84 12 01 00 00    	je     0x44e00b
  44def9:	3b f7                	cmp    esi,edi
  44defb:	0f 85 1b 01 00 00    	jne    0x44e01c
  44df01:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  44df04:	e8 f7 d7 03 00       	call   0x48b700
  44df09:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
  44df0c:	a1 58 46 51 00       	mov    eax,ds:0x514658
  44df11:	75 c0                	jne    0x44ded3
  44df13:	8b 35 70 46 51 00    	mov    esi,DWORD PTR ds:0x514670
  44df19:	8b 0d 60 46 51 00    	mov    ecx,DWORD PTR ds:0x514660
  44df1f:	8b 15 5c 46 51 00    	mov    edx,DWORD PTR ds:0x51465c
  44df25:	4e                   	dec    esi
  44df26:	3b c1                	cmp    eax,ecx
  44df28:	a3 64 46 51 00       	mov    ds:0x514664,eax
  44df2d:	89 35 70 46 51 00    	mov    DWORD PTR ds:0x514670,esi
  44df33:	74 49                	je     0x44df7e
  44df35:	3b c2                	cmp    eax,edx
  44df37:	74 45                	je     0x44df7e
  44df39:	8b 10                	mov    edx,DWORD PTR [eax]
  44df3b:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  44df3e:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  44df41:	a1 58 46 51 00       	mov    eax,ds:0x514658
  44df46:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  44df49:	8b 10                	mov    edx,DWORD PTR [eax]
  44df4b:	89 11                	mov    DWORD PTR [ecx],edx
  44df4d:	a1 78 46 51 00       	mov    eax,ds:0x514678
  44df52:	83 f8 01             	cmp    eax,0x1
  44df55:	75 13                	jne    0x44df6a
  44df57:	a1 58 46 51 00       	mov    eax,ds:0x514658
  44df5c:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  44df5f:	89 0d 58 46 51 00    	mov    DWORD PTR ds:0x514658,ecx
  44df65:	e9 84 00 00 00       	jmp    0x44dfee
  44df6a:	83 f8 02             	cmp    eax,0x2
  44df6d:	75 7f                	jne    0x44dfee
  44df6f:	8b 15 58 46 51 00    	mov    edx,DWORD PTR ds:0x514658
  44df75:	8b 02                	mov    eax,DWORD PTR [edx]
  44df77:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44df7c:	eb 70                	jmp    0x44dfee
  44df7e:	3b c1                	cmp    eax,ecx
  44df80:	75 2a                	jne    0x44dfac
  44df82:	3b c2                	cmp    eax,edx
  44df84:	74 2a                	je     0x44dfb0
  44df86:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  44df89:	89 39                	mov    DWORD PTR [ecx],edi
  44df8b:	a1 58 46 51 00       	mov    eax,ds:0x514658
  44df90:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  44df93:	89 15 60 46 51 00    	mov    DWORD PTR ds:0x514660,edx
  44df99:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  44df9c:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44dfa1:	83 3d 78 46 51 00 02 	cmp    DWORD PTR ds:0x514678,0x2
  44dfa8:	75 44                	jne    0x44dfee
  44dfaa:	eb 3c                	jmp    0x44dfe8
  44dfac:	3b c2                	cmp    eax,edx
  44dfae:	75 26                	jne    0x44dfd6
  44dfb0:	3b c1                	cmp    eax,ecx
  44dfb2:	74 22                	je     0x44dfd6
  44dfb4:	8b 08                	mov    ecx,DWORD PTR [eax]
  44dfb6:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  44dfb9:	8b 15 58 46 51 00    	mov    edx,DWORD PTR ds:0x514658
  44dfbf:	8b 02                	mov    eax,DWORD PTR [edx]
  44dfc1:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44dfc6:	a3 5c 46 51 00       	mov    ds:0x51465c,eax
  44dfcb:	83 3d 78 46 51 00 01 	cmp    DWORD PTR ds:0x514678,0x1
  44dfd2:	75 1a                	jne    0x44dfee
  44dfd4:	eb 12                	jmp    0x44dfe8
  44dfd6:	89 3d 58 46 51 00    	mov    DWORD PTR ds:0x514658,edi
  44dfdc:	89 3d 5c 46 51 00    	mov    DWORD PTR ds:0x51465c,edi
  44dfe2:	89 3d 60 46 51 00    	mov    DWORD PTR ds:0x514660,edi
  44dfe8:	89 3d 78 46 51 00    	mov    DWORD PTR ds:0x514678,edi
  44dfee:	a1 64 46 51 00       	mov    eax,ds:0x514664
  44dff3:	50                   	push   eax
  44dff4:	e8 67 40 ff ff       	call   0x442060
  44dff9:	a1 58 46 51 00       	mov    eax,ds:0x514658
  44dffe:	83 c4 04             	add    esp,0x4
  44e001:	be 01 00 00 00       	mov    esi,0x1
  44e006:	e9 c8 fe ff ff       	jmp    0x44ded3
  44e00b:	3b cf                	cmp    ecx,edi
  44e00d:	74 07                	je     0x44e016
  44e00f:	c6 05 6c 46 51 00 07 	mov    BYTE PTR ds:0x51466c,0x7
  44e016:	89 3d 78 46 51 00    	mov    DWORD PTR ds:0x514678,edi
  44e01c:	e8 df 61 fe ff       	call   0x434200
  44e021:	8b 10                	mov    edx,DWORD PTR [eax]
  44e023:	68 14 46 51 00       	push   0x514614
  44e028:	8b c8                	mov    ecx,eax
  44e02a:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  44e02d:	68 18 46 51 00       	push   0x514618
  44e032:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  44e038:	5f                   	pop    edi
  44e039:	5e                   	pop    esi
  44e03a:	8b e5                	mov    esp,ebp
  44e03c:	5d                   	pop    ebp
  44e03d:	c3                   	ret
  44e03e:	90                   	nop
  44e03f:	90                   	nop
  44e040:	55                   	push   ebp
  44e041:	8b ec                	mov    ebp,esp
  44e043:	83 ec 08             	sub    esp,0x8
  44e046:	50                   	push   eax
  44e047:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  44e04a:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44e04d:	58                   	pop    eax
  44e04e:	e8 ad 61 fe ff       	call   0x434200
  44e053:	8b 10                	mov    edx,DWORD PTR [eax]
  44e055:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44e058:	51                   	push   ecx
  44e059:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  44e05c:	68 10 46 51 00       	push   0x514610
  44e061:	51                   	push   ecx
  44e062:	8b c8                	mov    ecx,eax
  44e064:	ff 12                	call   DWORD PTR [edx]
  44e066:	68 18 46 51 00       	push   0x514618
  44e06b:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  44e071:	e8 8a 61 fe ff       	call   0x434200
  44e076:	8b 10                	mov    edx,DWORD PTR [eax]
  44e078:	68 14 46 51 00       	push   0x514614
  44e07d:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44e080:	51                   	push   ecx
  44e081:	8b c8                	mov    ecx,eax
  44e083:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44e086:	a1 5c 46 51 00       	mov    eax,ds:0x51465c
  44e08b:	33 c9                	xor    ecx,ecx
  44e08d:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44e092:	89 0d 78 46 51 00    	mov    DWORD PTR ds:0x514678,ecx
  44e098:	c6 05 6c 46 51 00 08 	mov    BYTE PTR ds:0x51466c,0x8
  44e09f:	85 c9                	test   ecx,ecx
  44e0a1:	74 09                	je     0x44e0ac
  44e0a3:	8b 00                	mov    eax,DWORD PTR [eax]
  44e0a5:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44e0aa:	eb 0b                	jmp    0x44e0b7
  44e0ac:	b9 01 00 00 00       	mov    ecx,0x1
  44e0b1:	89 0d 78 46 51 00    	mov    DWORD PTR ds:0x514678,ecx
  44e0b7:	85 c0                	test   eax,eax
  44e0b9:	74 15                	je     0x44e0d0
  44e0bb:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  44e0be:	e8 6d f2 03 00       	call   0x48d330
  44e0c3:	a1 58 46 51 00       	mov    eax,ds:0x514658
  44e0c8:	8b 0d 78 46 51 00    	mov    ecx,DWORD PTR ds:0x514678
  44e0ce:	eb cf                	jmp    0x44e09f
  44e0d0:	85 c9                	test   ecx,ecx
  44e0d2:	74 07                	je     0x44e0db
  44e0d4:	c6 05 6c 46 51 00 07 	mov    BYTE PTR ds:0x51466c,0x7
  44e0db:	c7 05 78 46 51 00 00 	mov    DWORD PTR ds:0x514678,0x0
  44e0e2:	00 00 00 
  44e0e5:	e8 16 61 fe ff       	call   0x434200
  44e0ea:	8b 10                	mov    edx,DWORD PTR [eax]
  44e0ec:	68 14 46 51 00       	push   0x514614
  44e0f1:	8b c8                	mov    ecx,eax
  44e0f3:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  44e0f6:	68 18 46 51 00       	push   0x514618
  44e0fb:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  44e101:	8b e5                	mov    esp,ebp
  44e103:	5d                   	pop    ebp
  44e104:	c3                   	ret
  44e105:	90                   	nop
  44e106:	90                   	nop
  44e107:	90                   	nop
  44e108:	90                   	nop
  44e109:	90                   	nop
  44e10a:	90                   	nop
  44e10b:	90                   	nop
  44e10c:	90                   	nop
  44e10d:	90                   	nop
  44e10e:	90                   	nop
  44e10f:	90                   	nop
  44e110:	55                   	push   ebp
  44e111:	8b ec                	mov    ebp,esp
  44e113:	83 ec 08             	sub    esp,0x8
  44e116:	56                   	push   esi
  44e117:	50                   	push   eax
  44e118:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  44e11b:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44e11e:	58                   	pop    eax
  44e11f:	e8 dc 60 fe ff       	call   0x434200
  44e124:	8b 10                	mov    edx,DWORD PTR [eax]
  44e126:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44e129:	51                   	push   ecx
  44e12a:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  44e12d:	68 10 46 51 00       	push   0x514610
  44e132:	51                   	push   ecx
  44e133:	8b c8                	mov    ecx,eax
  44e135:	ff 12                	call   DWORD PTR [edx]
  44e137:	68 18 46 51 00       	push   0x514618
  44e13c:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  44e142:	e8 b9 60 fe ff       	call   0x434200
  44e147:	8b 10                	mov    edx,DWORD PTR [eax]
  44e149:	68 14 46 51 00       	push   0x514614
  44e14e:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44e151:	51                   	push   ecx
  44e152:	8b c8                	mov    ecx,eax
  44e154:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44e157:	a1 5c 46 51 00       	mov    eax,ds:0x51465c
  44e15c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  44e15f:	33 f6                	xor    esi,esi
  44e161:	33 c9                	xor    ecx,ecx
  44e163:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44e168:	89 0d 78 46 51 00    	mov    DWORD PTR ds:0x514678,ecx
  44e16e:	c6 05 6c 46 51 00 08 	mov    BYTE PTR ds:0x51466c,0x8
  44e175:	85 c9                	test   ecx,ecx
  44e177:	74 09                	je     0x44e182
  44e179:	8b 00                	mov    eax,DWORD PTR [eax]
  44e17b:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44e180:	eb 0b                	jmp    0x44e18d
  44e182:	b9 01 00 00 00       	mov    ecx,0x1
  44e187:	89 0d 78 46 51 00    	mov    DWORD PTR ds:0x514678,ecx
  44e18d:	85 c0                	test   eax,eax
  44e18f:	74 10                	je     0x44e1a1
  44e191:	85 f6                	test   esi,esi
  44e193:	75 21                	jne    0x44e1b6
  44e195:	39 50 08             	cmp    DWORD PTR [eax+0x8],edx
  44e198:	75 db                	jne    0x44e175
  44e19a:	be 01 00 00 00       	mov    esi,0x1
  44e19f:	eb d4                	jmp    0x44e175
  44e1a1:	85 c9                	test   ecx,ecx
  44e1a3:	74 07                	je     0x44e1ac
  44e1a5:	c6 05 6c 46 51 00 07 	mov    BYTE PTR ds:0x51466c,0x7
  44e1ac:	c7 05 78 46 51 00 00 	mov    DWORD PTR ds:0x514678,0x0
  44e1b3:	00 00 00 
  44e1b6:	e8 45 60 fe ff       	call   0x434200
  44e1bb:	8b 10                	mov    edx,DWORD PTR [eax]
  44e1bd:	68 14 46 51 00       	push   0x514614
  44e1c2:	8b c8                	mov    ecx,eax
  44e1c4:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  44e1c7:	68 18 46 51 00       	push   0x514618
  44e1cc:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  44e1d2:	8b c6                	mov    eax,esi
  44e1d4:	5e                   	pop    esi
  44e1d5:	8b e5                	mov    esp,ebp
  44e1d7:	5d                   	pop    ebp
  44e1d8:	c3                   	ret
  44e1d9:	90                   	nop
  44e1da:	90                   	nop
  44e1db:	90                   	nop
  44e1dc:	90                   	nop
  44e1dd:	90                   	nop
  44e1de:	90                   	nop
  44e1df:	90                   	nop
  44e1e0:	55                   	push   ebp
  44e1e1:	8b ec                	mov    ebp,esp
  44e1e3:	83 ec 08             	sub    esp,0x8
  44e1e6:	56                   	push   esi
  44e1e7:	57                   	push   edi
  44e1e8:	50                   	push   eax
  44e1e9:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  44e1ec:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44e1ef:	58                   	pop    eax
  44e1f0:	e8 0b 60 fe ff       	call   0x434200
  44e1f5:	8b 10                	mov    edx,DWORD PTR [eax]
  44e1f7:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44e1fa:	51                   	push   ecx
  44e1fb:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  44e1fe:	68 10 46 51 00       	push   0x514610
  44e203:	51                   	push   ecx
  44e204:	8b c8                	mov    ecx,eax
  44e206:	ff 12                	call   DWORD PTR [edx]
  44e208:	68 18 46 51 00       	push   0x514618
  44e20d:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  44e213:	e8 e8 5f fe ff       	call   0x434200
  44e218:	8b 10                	mov    edx,DWORD PTR [eax]
  44e21a:	68 14 46 51 00       	push   0x514614
  44e21f:	8d 4d fc             	lea    ecx,[ebp-0x4]
  44e222:	51                   	push   ecx
  44e223:	8b c8                	mov    ecx,eax
  44e225:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44e228:	a1 5c 46 51 00       	mov    eax,ds:0x51465c
  44e22d:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  44e230:	33 f6                	xor    esi,esi
  44e232:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44e237:	89 35 78 46 51 00    	mov    DWORD PTR ds:0x514678,esi
  44e23d:	c6 05 6c 46 51 00 08 	mov    BYTE PTR ds:0x51466c,0x8
  44e244:	eb 05                	jmp    0x44e24b
  44e246:	a1 58 46 51 00       	mov    eax,ds:0x514658
  44e24b:	8b 0d 78 46 51 00    	mov    ecx,DWORD PTR ds:0x514678
  44e251:	85 c9                	test   ecx,ecx
  44e253:	74 09                	je     0x44e25e
  44e255:	8b 00                	mov    eax,DWORD PTR [eax]
  44e257:	a3 58 46 51 00       	mov    ds:0x514658,eax
  44e25c:	eb 0b                	jmp    0x44e269
  44e25e:	b9 01 00 00 00       	mov    ecx,0x1
  44e263:	89 0d 78 46 51 00    	mov    DWORD PTR ds:0x514678,ecx
  44e269:	85 c0                	test   eax,eax
  44e26b:	74 17                	je     0x44e284
  44e26d:	85 f6                	test   esi,esi
  44e26f:	75 28                	jne    0x44e299
  44e271:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  44e274:	e8 87 d4 03 00       	call   0x48b700
  44e279:	3b c7                	cmp    eax,edi
  44e27b:	75 c9                	jne    0x44e246
  44e27d:	be 01 00 00 00       	mov    esi,0x1
  44e282:	eb c2                	jmp    0x44e246
  44e284:	85 c9                	test   ecx,ecx
  44e286:	74 07                	je     0x44e28f
  44e288:	c6 05 6c 46 51 00 07 	mov    BYTE PTR ds:0x51466c,0x7
  44e28f:	c7 05 78 46 51 00 00 	mov    DWORD PTR ds:0x514678,0x0
  44e296:	00 00 00 
  44e299:	e8 62 5f fe ff       	call   0x434200
  44e29e:	8b 10                	mov    edx,DWORD PTR [eax]
  44e2a0:	68 14 46 51 00       	push   0x514614
  44e2a5:	8b c8                	mov    ecx,eax
  44e2a7:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  44e2aa:	68 18 46 51 00       	push   0x514618
  44e2af:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  44e2b5:	5f                   	pop    edi
  44e2b6:	8b c6                	mov    eax,esi
  44e2b8:	5e                   	pop    esi
  44e2b9:	8b e5                	mov    esp,ebp
  44e2bb:	5d                   	pop    ebp
  44e2bc:	c3                   	ret
  44e2bd:	90                   	nop
  44e2be:	90                   	nop
  44e2bf:	90                   	nop

