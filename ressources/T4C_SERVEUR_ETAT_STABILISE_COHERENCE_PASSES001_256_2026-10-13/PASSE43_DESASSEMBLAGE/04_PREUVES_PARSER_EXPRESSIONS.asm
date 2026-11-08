; PASSE43 // preuve binaire PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions x86 Intel extraites du binaire serveur (preuve non suffisante de semantique a elle seule).

; Analyse de formule 409900 : preparation et construction: VA 0x409900..0x409c0a (extraits disassembles, PAS un dump de fonctions arbitraires)
  409900:	55                   	push   ebp
  409901:	8b ec                	mov    ebp,esp
  409903:	6a ff                	push   0xffffffff
  409905:	68 68 36 4d 00       	push   0x4d3668
  40990a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  409910:	50                   	push   eax
  409911:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  409918:	83 ec 0c             	sub    esp,0xc
  40991b:	53                   	push   ebx
  40991c:	56                   	push   esi
  40991d:	57                   	push   edi
  40991e:	8b f1                	mov    esi,ecx
  409920:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  409923:	8b 40 f8             	mov    eax,DWORD PTR [eax-0x8]
  409926:	33 db                	xor    ebx,ebx
  409928:	3b c3                	cmp    eax,ebx
  40992a:	bf 01 00 00 00       	mov    edi,0x1
  40992f:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  409932:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
  409935:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  409938:	0f 84 aa 01 00 00    	je     0x409ae8
  40993e:	53                   	push   ebx
  40993f:	8d 4d 08             	lea    ecx,[ebp+0x8]
  409942:	e8 29 81 0c 00       	call   0x4d1a70
  409947:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  40994a:	3b cf                	cmp    ecx,edi
  40994c:	8b d8                	mov    ebx,eax
  40994e:	7e 55                	jle    0x4099a5
  409950:	8a 04 1f             	mov    al,BYTE PTR [edi+ebx*1]
  409953:	3c 64                	cmp    al,0x64
  409955:	74 04                	je     0x40995b
  409957:	3c 44                	cmp    al,0x44
  409959:	75 45                	jne    0x4099a0
  40995b:	0f be 4c 1f 01       	movsx  ecx,BYTE PTR [edi+ebx*1+0x1]
  409960:	51                   	push   ecx
  409961:	ff 15 54 e3 4d 00    	call   DWORD PTR ds:0x4de354
  409967:	83 c4 04             	add    esp,0x4
  40996a:	85 c0                	test   eax,eax
  40996c:	75 0c                	jne    0x40997a
  40996e:	8a 44 1f 01          	mov    al,BYTE PTR [edi+ebx*1+0x1]
  409972:	3c 20                	cmp    al,0x20
  409974:	74 04                	je     0x40997a
  409976:	3c 28                	cmp    al,0x28
  409978:	75 23                	jne    0x40999d
  40997a:	0f be 54 1f ff       	movsx  edx,BYTE PTR [edi+ebx*1-0x1]
  40997f:	52                   	push   edx
  409980:	ff 15 54 e3 4d 00    	call   DWORD PTR ds:0x4de354
  409986:	83 c4 04             	add    esp,0x4
  409989:	85 c0                	test   eax,eax
  40998b:	75 0c                	jne    0x409999
  40998d:	8a 44 1f ff          	mov    al,BYTE PTR [edi+ebx*1-0x1]
  409991:	3c 20                	cmp    al,0x20
  409993:	74 04                	je     0x409999
  409995:	3c 29                	cmp    al,0x29
  409997:	75 04                	jne    0x40999d
  409999:	c6 04 1f 40          	mov    BYTE PTR [edi+ebx*1],0x40
  40999d:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  4099a0:	47                   	inc    edi
  4099a1:	3b f9                	cmp    edi,ecx
  4099a3:	7c ab                	jl     0x409950
  4099a5:	33 d2                	xor    edx,edx
  4099a7:	33 c0                	xor    eax,eax
  4099a9:	85 c9                	test   ecx,ecx
  4099ab:	7e 0c                	jle    0x4099b9
  4099ad:	80 3c 18 20          	cmp    BYTE PTR [eax+ebx*1],0x20
  4099b1:	75 01                	jne    0x4099b4
  4099b3:	42                   	inc    edx
  4099b4:	40                   	inc    eax
  4099b5:	3b c1                	cmp    eax,ecx
  4099b7:	7c f4                	jl     0x4099ad
  4099b9:	2b ca                	sub    ecx,edx
  4099bb:	41                   	inc    ecx
  4099bc:	51                   	push   ecx
  4099bd:	e8 3e 4b 0c 00       	call   0x4ce500
  4099c2:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  4099c5:	83 c4 04             	add    esp,0x4
  4099c8:	33 ff                	xor    edi,edi
  4099ca:	33 d2                	xor    edx,edx
  4099cc:	85 c9                	test   ecx,ecx
  4099ce:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  4099d1:	7e 14                	jle    0x4099e7
  4099d3:	8a 0c 1a             	mov    cl,BYTE PTR [edx+ebx*1]
  4099d6:	80 f9 20             	cmp    cl,0x20
  4099d9:	74 04                	je     0x4099df
  4099db:	88 0c 38             	mov    BYTE PTR [eax+edi*1],cl
  4099de:	47                   	inc    edi
  4099df:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  4099e2:	42                   	inc    edx
  4099e3:	3b d1                	cmp    edx,ecx
  4099e5:	7c ec                	jl     0x4099d3
  4099e7:	8d 4e 28             	lea    ecx,[esi+0x28]
  4099ea:	50                   	push   eax
  4099eb:	c6 04 38 00          	mov    BYTE PTR [eax+edi*1],0x0
  4099ef:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  4099f2:	e8 61 80 0c 00       	call   0x4d1a58
  4099f7:	6a ff                	push   0xffffffff
  4099f9:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4099fc:	e8 69 80 0c 00       	call   0x4d1a6a
  409a01:	8d 5e 08             	lea    ebx,[esi+0x8]
  409a04:	33 c0                	xor    eax,eax
  409a06:	b9 08 00 00 00       	mov    ecx,0x8
  409a0b:	8b fb                	mov    edi,ebx
  409a0d:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  409a0f:	8d 7e 2c             	lea    edi,[esi+0x2c]
  409a12:	c6 46 18 01          	mov    BYTE PTR [esi+0x18],0x1
  409a16:	8b 47 24             	mov    eax,DWORD PTR [edi+0x24]
  409a19:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  409a1c:	c7 47 40 00 00 00 00 	mov    DWORD PTR [edi+0x40],0x0
  409a23:	c6 47 34 08          	mov    BYTE PTR [edi+0x34],0x8
  409a27:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
  409a2a:	85 c0                	test   eax,eax
  409a2c:	74 0a                	je     0x409a38
  409a2e:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  409a31:	8b 11                	mov    edx,DWORD PTR [ecx]
  409a33:	89 57 20             	mov    DWORD PTR [edi+0x20],edx
  409a36:	eb 07                	jmp    0x409a3f
  409a38:	c7 47 40 01 00 00 00 	mov    DWORD PTR [edi+0x40],0x1
  409a3f:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  409a42:	85 c0                	test   eax,eax
  409a44:	74 09                	je     0x409a4f
  409a46:	8b cf                	mov    ecx,edi
  409a48:	e8 53 5f 00 00       	call   0x40f9a0
  409a4d:	eb d8                	jmp    0x409a27
  409a4f:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
  409a52:	85 c0                	test   eax,eax
  409a54:	74 04                	je     0x409a5a
  409a56:	c6 47 34 07          	mov    BYTE PTR [edi+0x34],0x7
  409a5a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  409a5d:	53                   	push   ebx
  409a5e:	50                   	push   eax
  409a5f:	8b ce                	mov    ecx,esi
  409a61:	c7 47 40 00 00 00 00 	mov    DWORD PTR [edi+0x40],0x0
  409a68:	e8 93 29 00 00       	call   0x40c400
  409a6d:	85 c0                	test   eax,eax
  409a6f:	75 66                	jne    0x409ad7
  409a71:	8b 4f 24             	mov    ecx,DWORD PTR [edi+0x24]
  409a74:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  409a77:	89 4f 20             	mov    DWORD PTR [edi+0x20],ecx
  409a7a:	89 47 40             	mov    DWORD PTR [edi+0x40],eax
  409a7d:	c6 47 34 08          	mov    BYTE PTR [edi+0x34],0x8
  409a81:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
  409a84:	85 c0                	test   eax,eax
  409a86:	74 0a                	je     0x409a92
  409a88:	8b 57 20             	mov    edx,DWORD PTR [edi+0x20]
  409a8b:	8b 02                	mov    eax,DWORD PTR [edx]
  409a8d:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  409a90:	eb 07                	jmp    0x409a99
  409a92:	c7 47 40 01 00 00 00 	mov    DWORD PTR [edi+0x40],0x1
  409a99:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  409a9c:	85 c0                	test   eax,eax
  409a9e:	74 09                	je     0x409aa9
  409aa0:	8b cf                	mov    ecx,edi
  409aa2:	e8 f9 5e 00 00       	call   0x40f9a0
  409aa7:	eb d8                	jmp    0x409a81
  409aa9:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
  409aac:	85 c0                	test   eax,eax
  409aae:	74 04                	je     0x409ab4
  409ab0:	c6 47 34 07          	mov    BYTE PTR [edi+0x34],0x7
  409ab4:	c7 47 40 00 00 00 00 	mov    DWORD PTR [edi+0x40],0x0
  409abb:	33 c0                	xor    eax,eax
  409abd:	b9 08 00 00 00       	mov    ecx,0x8
  409ac2:	8b fb                	mov    edi,ebx
  409ac4:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  409ac6:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  409ac9:	68 b4 06 50 00       	push   0x5006b4
  409ace:	c6 46 18 01          	mov    BYTE PTR [esi+0x18],0x1
  409ad2:	e8 81 7f 0c 00       	call   0x4d1a58
  409ad7:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  409ada:	51                   	push   ecx
  409adb:	e8 80 85 03 00       	call   0x442060
  409ae0:	83 c4 04             	add    esp,0x4
  409ae3:	e9 fe 00 00 00       	jmp    0x409be6
  409ae8:	8b 56 50             	mov    edx,DWORD PTR [esi+0x50]
  409aeb:	89 56 4c             	mov    DWORD PTR [esi+0x4c],edx
  409aee:	89 5e 6c             	mov    DWORD PTR [esi+0x6c],ebx
  409af1:	c6 46 60 08          	mov    BYTE PTR [esi+0x60],0x8
  409af5:	39 5e 6c             	cmp    DWORD PTR [esi+0x6c],ebx
  409af8:	74 0a                	je     0x409b04
  409afa:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  409afd:	8b 08                	mov    ecx,DWORD PTR [eax]
  409aff:	89 4e 4c             	mov    DWORD PTR [esi+0x4c],ecx
  409b02:	eb 03                	jmp    0x409b07
  409b04:	89 7e 6c             	mov    DWORD PTR [esi+0x6c],edi
  409b07:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  409b0a:	3b c3                	cmp    eax,ebx
  409b0c:	0f 84 b8 00 00 00    	je     0x409bca
  409b12:	8b 4e 54             	mov    ecx,DWORD PTR [esi+0x54]
  409b15:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  409b18:	ff 4e 64             	dec    DWORD PTR [esi+0x64]
  409b1b:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  409b1e:	3b c1                	cmp    eax,ecx
  409b20:	74 3c                	je     0x409b5e
  409b22:	3b 46 50             	cmp    eax,DWORD PTR [esi+0x50]
  409b25:	74 33                	je     0x409b5a
  409b27:	8b 10                	mov    edx,DWORD PTR [eax]
  409b29:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  409b2c:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  409b2f:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  409b32:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  409b35:	8b 10                	mov    edx,DWORD PTR [eax]
  409b37:	89 11                	mov    DWORD PTR [ecx],edx
  409b39:	8b 46 6c             	mov    eax,DWORD PTR [esi+0x6c]
  409b3c:	3b c7                	cmp    eax,edi
  409b3e:	75 0b                	jne    0x409b4b
  409b40:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  409b43:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  409b46:	89 4e 4c             	mov    DWORD PTR [esi+0x4c],ecx
  409b49:	eb 62                	jmp    0x409bad
  409b4b:	83 f8 02             	cmp    eax,0x2
  409b4e:	75 5d                	jne    0x409bad
  409b50:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  409b53:	8b 02                	mov    eax,DWORD PTR [edx]
  409b55:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  409b58:	eb 53                	jmp    0x409bad
  409b5a:	3b c1                	cmp    eax,ecx
  409b5c:	75 23                	jne    0x409b81
  409b5e:	3b 46 50             	cmp    eax,DWORD PTR [esi+0x50]
  409b61:	74 23                	je     0x409b86
  409b63:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  409b66:	89 19                	mov    DWORD PTR [ecx],ebx
  409b68:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  409b6b:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  409b6e:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  409b71:	83 7e 6c 02          	cmp    DWORD PTR [esi+0x6c],0x2
  409b75:	8b ca                	mov    ecx,edx
  409b77:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  409b7a:	89 56 4c             	mov    DWORD PTR [esi+0x4c],edx
  409b7d:	75 2e                	jne    0x409bad
  409b7f:	eb 29                	jmp    0x409baa
  409b81:	3b 46 50             	cmp    eax,DWORD PTR [esi+0x50]
  409b84:	75 1b                	jne    0x409ba1
  409b86:	3b c1                	cmp    eax,ecx
  409b88:	74 17                	je     0x409ba1
  409b8a:	8b 00                	mov    eax,DWORD PTR [eax]
  409b8c:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  409b8f:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  409b92:	8b 01                	mov    eax,DWORD PTR [ecx]
  409b94:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  409b97:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  409b9a:	39 7e 6c             	cmp    DWORD PTR [esi+0x6c],edi
  409b9d:	75 0e                	jne    0x409bad
  409b9f:	eb 09                	jmp    0x409baa
  409ba1:	89 5e 4c             	mov    DWORD PTR [esi+0x4c],ebx
  409ba4:	89 5e 50             	mov    DWORD PTR [esi+0x50],ebx
  409ba7:	89 5e 54             	mov    DWORD PTR [esi+0x54],ebx
  409baa:	89 5e 6c             	mov    DWORD PTR [esi+0x6c],ebx
  409bad:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  409bb0:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  409bb3:	50                   	push   eax
  409bb4:	e8 a7 84 03 00       	call   0x442060
  409bb9:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  409bbc:	51                   	push   ecx
  409bbd:	e8 9e 84 03 00       	call   0x442060
  409bc2:	83 c4 08             	add    esp,0x8
  409bc5:	e9 2b ff ff ff       	jmp    0x409af5
  409bca:	39 5e 6c             	cmp    DWORD PTR [esi+0x6c],ebx
  409bcd:	74 04                	je     0x409bd3
  409bcf:	c6 46 60 07          	mov    BYTE PTR [esi+0x60],0x7
  409bd3:	89 5e 6c             	mov    DWORD PTR [esi+0x6c],ebx
  409bd6:	b9 08 00 00 00       	mov    ecx,0x8
  409bdb:	33 c0                	xor    eax,eax
  409bdd:	8d 7e 08             	lea    edi,[esi+0x8]
  409be0:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  409be2:	c6 46 18 01          	mov    BYTE PTR [esi+0x18],0x1
  409be6:	8d 4d 08             	lea    ecx,[ebp+0x8]
  409be9:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  409bf0:	e8 4b 7e 0c 00       	call   0x4d1a40
  409bf5:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409bf8:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  409bfb:	5f                   	pop    edi
  409bfc:	5e                   	pop    esi
  409bfd:	5b                   	pop    ebx
  409bfe:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409c05:	8b e5                	mov    esp,ebp
  409c07:	5d                   	pop    ebp
  409c08:	c2 04 00             	ret    0x4

; Pont evaluation 40c350->409c10: VA 0x40c350..0x40c383 (extraits disassembles, PAS un dump de fonctions arbitraires)
  40c350:	55                   	push   ebp
  40c351:	8b ec                	mov    ebp,esp
  40c353:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  40c356:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  40c359:	50                   	push   eax
  40c35a:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  40c35d:	52                   	push   edx
  40c35e:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  40c361:	50                   	push   eax
  40c362:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  40c365:	52                   	push   edx
  40c366:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  40c369:	50                   	push   eax
  40c36a:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  40c36d:	52                   	push   edx
  40c36e:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  40c371:	50                   	push   eax
  40c372:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40c375:	52                   	push   edx
  40c376:	50                   	push   eax
  40c377:	8d 51 08             	lea    edx,[ecx+0x8]
  40c37a:	52                   	push   edx
  40c37b:	e8 90 d8 ff ff       	call   0x409c10
  40c380:	5d                   	pop    ebp
  40c381:	c2 24 00             	ret    0x24

; Equilibrage parentheses / detection EOF: VA 0x40c390..0x40c3f4 (extraits disassembles, PAS un dump de fonctions arbitraires)
  40c390:	55                   	push   ebp
  40c391:	8b ec                	mov    ebp,esp
  40c393:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c396:	8b 02                	mov    eax,DWORD PTR [edx]
  40c398:	53                   	push   ebx
  40c399:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40c39c:	56                   	push   esi
  40c39d:	57                   	push   edi
  40c39e:	bf 01 00 00 00       	mov    edi,0x1
  40c3a3:	33 f6                	xor    esi,esi
  40c3a5:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  40c3a8:	8b 0a                	mov    ecx,DWORD PTR [edx]
  40c3aa:	8a 04 19             	mov    al,BYTE PTR [ecx+ebx*1]
  40c3ad:	3c 28                	cmp    al,0x28
  40c3af:	75 03                	jne    0x40c3b4
  40c3b1:	46                   	inc    esi
  40c3b2:	eb 12                	jmp    0x40c3c6
  40c3b4:	3c 29                	cmp    al,0x29
  40c3b6:	75 08                	jne    0x40c3c0
  40c3b8:	81 c6 ff ff 00 00    	add    esi,0xffff
  40c3be:	eb 06                	jmp    0x40c3c6
  40c3c0:	84 c0                	test   al,al
  40c3c2:	75 02                	jne    0x40c3c6
  40c3c4:	33 ff                	xor    edi,edi
  40c3c6:	41                   	inc    ecx
  40c3c7:	66 85 f6             	test   si,si
  40c3ca:	89 0a                	mov    DWORD PTR [edx],ecx
  40c3cc:	74 06                	je     0x40c3d4
  40c3ce:	85 ff                	test   edi,edi
  40c3d0:	75 d6                	jne    0x40c3a8
  40c3d2:	eb 04                	jmp    0x40c3d8
  40c3d4:	85 ff                	test   edi,edi
  40c3d6:	75 14                	jne    0x40c3ec
  40c3d8:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  40c3db:	53                   	push   ebx
  40c3dc:	51                   	push   ecx
  40c3dd:	68 0c 07 50 00       	push   0x50070c
  40c3e2:	6a 08                	push   0x8
  40c3e4:	e8 57 59 06 00       	call   0x471d40
  40c3e9:	83 c4 10             	add    esp,0x10
  40c3ec:	8b c7                	mov    eax,edi
  40c3ee:	5f                   	pop    edi
  40c3ef:	5e                   	pop    esi
  40c3f0:	5b                   	pop    ebx
  40c3f1:	5d                   	pop    ebp
  40c3f2:	c2 08 00             	ret    0x8

; Tokenizer / grammaire : branche operateurs: VA 0x40c400..0x40c6b2 (extraits disassembles, PAS un dump de fonctions arbitraires)
  40c400:	55                   	push   ebp
  40c401:	8b ec                	mov    ebp,esp
  40c403:	6a ff                	push   0xffffffff
  40c405:	68 c3 36 4d 00       	push   0x4d36c3
  40c40a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  40c410:	50                   	push   eax
  40c411:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  40c418:	83 ec 18             	sub    esp,0x18
  40c41b:	53                   	push   ebx
  40c41c:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
  40c41f:	56                   	push   esi
  40c420:	83 c9 ff             	or     ecx,0xffffffff
  40c423:	57                   	push   edi
  40c424:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  40c427:	33 c0                	xor    eax,eax
  40c429:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
  40c42c:	32 db                	xor    bl,bl
  40c42e:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  40c430:	f7 d1                	not    ecx
  40c432:	49                   	dec    ecx
  40c433:	8b f9                	mov    edi,ecx
  40c435:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  40c438:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  40c43b:	be 00 01 00 00       	mov    esi,0x100
  40c440:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
  40c443:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  40c446:	85 c0                	test   eax,eax
  40c448:	75 3c                	jne    0x40c486
  40c44a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40c44d:	80 38 28             	cmp    BYTE PTR [eax],0x28
  40c450:	75 34                	jne    0x40c486
  40c452:	8b c8                	mov    ecx,eax
  40c454:	51                   	push   ecx
  40c455:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  40c458:	8d 55 f0             	lea    edx,[ebp-0x10]
  40c45b:	52                   	push   edx
  40c45c:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  40c463:	e8 28 ff ff ff       	call   0x40c390
  40c468:	85 c0                	test   eax,eax
  40c46a:	75 07                	jne    0x40c473
  40c46c:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40c473:	39 7d f0             	cmp    DWORD PTR [ebp-0x10],edi
  40c476:	75 0e                	jne    0x40c486
  40c478:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40c47b:	4f                   	dec    edi
  40c47c:	c6 04 07 00          	mov    BYTE PTR [edi+eax*1],0x0
  40c480:	40                   	inc    eax
  40c481:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  40c484:	eb bd                	jmp    0x40c443
  40c486:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c489:	33 c0                	xor    eax,eax
  40c48b:	85 ff                	test   edi,edi
  40c48d:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
  40c490:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c493:	0f 8e 1a 02 00 00    	jle    0x40c6b3
  40c499:	0f be 0c 10          	movsx  ecx,BYTE PTR [eax+edx*1]
  40c49d:	8d 79 d8             	lea    edi,[ecx-0x28]
  40c4a0:	83 ff 36             	cmp    edi,0x36
  40c4a3:	0f 87 3c 01 00 00    	ja     0x40c5e5
  40c4a9:	33 c9                	xor    ecx,ecx
  40c4ab:	8a 8f 4c f1 40 00    	mov    cl,BYTE PTR [edi+0x40f14c]
  40c4b1:	ff 24 8d 20 f1 40 00 	jmp    DWORD PTR [ecx*4+0x40f120]
  40c4b8:	83 fe 0c             	cmp    esi,0xc
  40c4bb:	0f 8e 24 01 00 00    	jle    0x40c5e5
  40c4c1:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c4c4:	be 0c 00 00 00       	mov    esi,0xc
  40c4c9:	b3 02                	mov    bl,0x2
  40c4cb:	e9 15 01 00 00       	jmp    0x40c5e5
  40c4d0:	83 fe 0b             	cmp    esi,0xb
  40c4d3:	0f 8e 0c 01 00 00    	jle    0x40c5e5
  40c4d9:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c4dc:	be 0b 00 00 00       	mov    esi,0xb
  40c4e1:	b3 01                	mov    bl,0x1
  40c4e3:	e9 fd 00 00 00       	jmp    0x40c5e5
  40c4e8:	83 fe 0e             	cmp    esi,0xe
  40c4eb:	0f 8e f4 00 00 00    	jle    0x40c5e5
  40c4f1:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c4f4:	be 0d 00 00 00       	mov    esi,0xd
  40c4f9:	b3 04                	mov    bl,0x4
  40c4fb:	e9 e5 00 00 00       	jmp    0x40c5e5
  40c500:	83 fe 0d             	cmp    esi,0xd
  40c503:	0f 8e dc 00 00 00    	jle    0x40c5e5
  40c509:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c50c:	be 0d 00 00 00       	mov    esi,0xd
  40c511:	b3 03                	mov    bl,0x3
  40c513:	e9 cd 00 00 00       	jmp    0x40c5e5
  40c518:	83 fe 0f             	cmp    esi,0xf
  40c51b:	0f 8e c4 00 00 00    	jle    0x40c5e5
  40c521:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c524:	be 0e 00 00 00       	mov    esi,0xe
  40c529:	b3 05                	mov    bl,0x5
  40c52b:	e9 b5 00 00 00       	jmp    0x40c5e5
  40c530:	83 fe 05             	cmp    esi,0x5
  40c533:	0f 8e ac 00 00 00    	jle    0x40c5e5
  40c539:	8a 4c 10 01          	mov    cl,BYTE PTR [eax+edx*1+0x1]
  40c53d:	80 f9 3d             	cmp    cl,0x3d
  40c540:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c543:	75 14                	jne    0x40c559
  40c545:	b3 0c                	mov    bl,0xc
  40c547:	40                   	inc    eax
  40c548:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [ebp-0x24],0x1
  40c54f:	be 05 00 00 00       	mov    esi,0x5
  40c554:	e9 8c 00 00 00       	jmp    0x40c5e5
  40c559:	80 f9 3e             	cmp    cl,0x3e
  40c55c:	75 11                	jne    0x40c56f
  40c55e:	b3 08                	mov    bl,0x8
  40c560:	40                   	inc    eax
  40c561:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [ebp-0x24],0x1
  40c568:	be 05 00 00 00       	mov    esi,0x5
  40c56d:	eb 76                	jmp    0x40c5e5
  40c56f:	b3 0b                	mov    bl,0xb
  40c571:	be 05 00 00 00       	mov    esi,0x5
  40c576:	eb 6d                	jmp    0x40c5e5
  40c578:	83 fe 05             	cmp    esi,0x5
  40c57b:	7e 68                	jle    0x40c5e5
  40c57d:	80 7c 10 01 3d       	cmp    BYTE PTR [eax+edx*1+0x1],0x3d
  40c582:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c585:	75 11                	jne    0x40c598
  40c587:	b3 0a                	mov    bl,0xa
  40c589:	40                   	inc    eax
  40c58a:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [ebp-0x24],0x1
  40c591:	be 05 00 00 00       	mov    esi,0x5
  40c596:	eb 4d                	jmp    0x40c5e5
  40c598:	b3 09                	mov    bl,0x9
  40c59a:	be 05 00 00 00       	mov    esi,0x5
  40c59f:	eb 44                	jmp    0x40c5e5
  40c5a1:	83 fe 05             	cmp    esi,0x5
  40c5a4:	7e 3f                	jle    0x40c5e5
  40c5a6:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c5a9:	b3 07                	mov    bl,0x7
  40c5ab:	be 05 00 00 00       	mov    esi,0x5
  40c5b0:	eb 33                	jmp    0x40c5e5
  40c5b2:	83 fe 10             	cmp    esi,0x10
  40c5b5:	7e 2e                	jle    0x40c5e5
  40c5b7:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c5ba:	be 0f 00 00 00       	mov    esi,0xf
  40c5bf:	b3 06                	mov    bl,0x6
  40c5c1:	eb 22                	jmp    0x40c5e5
  40c5c3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c5c6:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  40c5c9:	52                   	push   edx
  40c5ca:	8d 45 f0             	lea    eax,[ebp-0x10]
  40c5cd:	50                   	push   eax
  40c5ce:	e8 bd fd ff ff       	call   0x40c390
  40c5d3:	85 c0                	test   eax,eax
  40c5d5:	75 07                	jne    0x40c5de
  40c5d7:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40c5de:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40c5e1:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c5e4:	48                   	dec    eax
  40c5e5:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  40c5e8:	40                   	inc    eax
  40c5e9:	3b c1                	cmp    eax,ecx
  40c5eb:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c5ee:	0f 8c a5 fe ff ff    	jl     0x40c499
  40c5f4:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  40c5f7:	83 f8 ff             	cmp    eax,0xffffffff
  40c5fa:	0f 84 b3 00 00 00    	je     0x40c6b3
  40c600:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c603:	8b c8                	mov    ecx,eax
  40c605:	6a 20                	push   0x20
  40c607:	c6 04 11 00          	mov    BYTE PTR [ecx+edx*1],0x0
  40c60b:	e8 e0 59 03 00       	call   0x441ff0
  40c610:	6a 20                	push   0x20
  40c612:	8b f0                	mov    esi,eax
  40c614:	e8 d7 59 03 00       	call   0x441ff0
  40c619:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  40c61c:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  40c61f:	83 c4 08             	add    esp,0x8
  40c622:	8d 78 2c             	lea    edi,[eax+0x2c]
  40c625:	56                   	push   esi
  40c626:	8b cf                	mov    ecx,edi
  40c628:	e8 d3 32 00 00       	call   0x40f900
  40c62d:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  40c630:	51                   	push   ecx
  40c631:	8b cf                	mov    ecx,edi
  40c633:	e8 c8 32 00 00       	call   0x40f900
  40c638:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
  40c63b:	33 c0                	xor    eax,eax
  40c63d:	b9 08 00 00 00       	mov    ecx,0x8
  40c642:	8b fe                	mov    edi,esi
  40c644:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40c646:	8b fa                	mov    edi,edx
  40c648:	b9 08 00 00 00       	mov    ecx,0x8
  40c64d:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40c64f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40c652:	33 c9                	xor    ecx,ecx
  40c654:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  40c657:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
  40c65a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c65d:	56                   	push   esi
  40c65e:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  40c661:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  40c664:	52                   	push   edx
  40c665:	88 18                	mov    BYTE PTR [eax],bl
  40c667:	89 70 18             	mov    DWORD PTR [eax+0x18],esi
  40c66a:	e8 91 fd ff ff       	call   0x40c400
  40c66f:	85 c0                	test   eax,eax
  40c671:	74 2b                	je     0x40c69e
  40c673:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  40c676:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  40c679:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
  40c67c:	50                   	push   eax
  40c67d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40c680:	03 ca                	add    ecx,edx
  40c682:	8d 4c 01 01          	lea    ecx,[ecx+eax*1+0x1]
  40c686:	51                   	push   ecx
  40c687:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  40c68a:	e8 71 fd ff ff       	call   0x40c400
  40c68f:	85 c0                	test   eax,eax
  40c691:	74 0b                	je     0x40c69e
  40c693:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  40c696:	85 c0                	test   eax,eax
  40c698:	0f 84 69 2a 00 00    	je     0x40f107
  40c69e:	5f                   	pop    edi
  40c69f:	5e                   	pop    esi
  40c6a0:	33 c0                	xor    eax,eax
  40c6a2:	5b                   	pop    ebx
  40c6a3:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40c6a6:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40c6ad:	8b e5                	mov    esp,ebp
  40c6af:	5d                   	pop    ebp
  40c6b0:	c2 08 00             	ret    0x8

; Tokenizer : chiffres decimaux et symboles: VA 0x40c6b3..0x40c809 (extraits disassembles, PAS un dump de fonctions arbitraires)
  40c6b3:	8a 02                	mov    al,BYTE PTR [edx]
  40c6b5:	84 c0                	test   al,al
  40c6b7:	75 11                	jne    0x40c6ca
  40c6b9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40c6bc:	33 c9                	xor    ecx,ecx
  40c6be:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  40c6c1:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  40c6c4:	c6 40 10 01          	mov    BYTE PTR [eax+0x10],0x1
  40c6c8:	eb c9                	jmp    0x40c693
  40c6ca:	8b 3d 54 e3 4d 00    	mov    edi,DWORD PTR ds:0x4de354
  40c6d0:	0f be d0             	movsx  edx,al
  40c6d3:	52                   	push   edx
  40c6d4:	ff d7                	call   edi
  40c6d6:	83 c4 04             	add    esp,0x4
  40c6d9:	85 c0                	test   eax,eax
  40c6db:	0f 84 c3 00 00 00    	je     0x40c7a4
  40c6e1:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40c6e4:	33 c0                	xor    eax,eax
  40c6e6:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  40c6e9:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  40c6ec:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c6ef:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40c6f2:	0f be 08             	movsx  ecx,BYTE PTR [eax]
  40c6f5:	51                   	push   ecx
  40c6f6:	ff d7                	call   edi
  40c6f8:	83 c4 04             	add    esp,0x4
  40c6fb:	85 c0                	test   eax,eax
  40c6fd:	74 38                	je     0x40c737
  40c6ff:	dd 46 08             	fld    QWORD PTR [esi+0x8]
  40c702:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40c705:	dc 0d 28 e6 4d 00    	fmul   QWORD PTR ds:0x4de628
  40c70b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  40c70e:	dd 56 08             	fst    QWORD PTR [esi+0x8]
  40c711:	0f be 14 08          	movsx  edx,BYTE PTR [eax+ecx*1]
  40c715:	83 ea 30             	sub    edx,0x30
  40c718:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
  40c71b:	40                   	inc    eax
  40c71c:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c71f:	db 45 0c             	fild   DWORD PTR [ebp+0xc]
  40c722:	d8 c1                	fadd   st,st(1)
  40c724:	dd 5e 08             	fstp   QWORD PTR [esi+0x8]
  40c727:	0f be 04 08          	movsx  eax,BYTE PTR [eax+ecx*1]
  40c72b:	50                   	push   eax
  40c72c:	dd d8                	fstp   st(0)
  40c72e:	ff d7                	call   edi
  40c730:	83 c4 04             	add    esp,0x4
  40c733:	85 c0                	test   eax,eax
  40c735:	75 c8                	jne    0x40c6ff
  40c737:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40c73a:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  40c73d:	80 3c 18 2e          	cmp    BYTE PTR [eax+ebx*1],0x2e
  40c741:	75 58                	jne    0x40c79b
  40c743:	40                   	inc    eax
  40c744:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c747:	0f be 0c 18          	movsx  ecx,BYTE PTR [eax+ebx*1]
  40c74b:	51                   	push   ecx
  40c74c:	ff d7                	call   edi
  40c74e:	83 c4 04             	add    esp,0x4
  40c751:	85 c0                	test   eax,eax
  40c753:	74 46                	je     0x40c79b
  40c755:	c7 45 0c ff ff ff ff 	mov    DWORD PTR [ebp+0xc],0xffffffff
  40c75c:	dd 05 28 e6 4d 00    	fld    QWORD PTR ds:0x4de628
  40c762:	db 45 0c             	fild   DWORD PTR [ebp+0xc]
  40c765:	e8 16 56 0c 00       	call   0x4d1d80
  40c76a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40c76d:	0f be 14 18          	movsx  edx,BYTE PTR [eax+ebx*1]
  40c771:	83 ea 30             	sub    edx,0x30
  40c774:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
  40c777:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  40c77a:	40                   	inc    eax
  40c77b:	db 45 08             	fild   DWORD PTR [ebp+0x8]
  40c77e:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c781:	4a                   	dec    edx
  40c782:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
  40c785:	de c9                	fmulp  st(1),st
  40c787:	dc 46 08             	fadd   QWORD PTR [esi+0x8]
  40c78a:	dd 5e 08             	fstp   QWORD PTR [esi+0x8]
  40c78d:	0f be 04 18          	movsx  eax,BYTE PTR [eax+ebx*1]
  40c791:	50                   	push   eax
  40c792:	ff d7                	call   edi
  40c794:	83 c4 04             	add    esp,0x4
  40c797:	85 c0                	test   eax,eax
  40c799:	75 c1                	jne    0x40c75c
  40c79b:	c6 46 10 01          	mov    BYTE PTR [esi+0x10],0x1
  40c79f:	e9 ef fe ff ff       	jmp    0x40c693
  40c7a4:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  40c7a7:	0f be 0e             	movsx  ecx,BYTE PTR [esi]
  40c7aa:	8b 3d 48 e3 4d 00    	mov    edi,DWORD PTR ds:0x4de348
  40c7b0:	51                   	push   ecx
  40c7b1:	ff d7                	call   edi
  40c7b3:	83 c4 04             	add    esp,0x4
  40c7b6:	85 c0                	test   eax,eax
  40c7b8:	0f 84 31 29 00 00    	je     0x40f0ef
  40c7be:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40c7c1:	e8 98 52 0c 00       	call   0x4d1a5e
  40c7c6:	33 c0                	xor    eax,eax
  40c7c8:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  40c7cb:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c7ce:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  40c7d1:	33 c0                	xor    eax,eax
  40c7d3:	8a 04 32             	mov    al,BYTE PTR [edx+esi*1]
  40c7d6:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40c7d9:	50                   	push   eax
  40c7da:	e8 af 52 0c 00       	call   0x4d1a8e
  40c7df:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40c7e2:	40                   	inc    eax
  40c7e3:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c7e6:	0f be 0c 30          	movsx  ecx,BYTE PTR [eax+esi*1]
  40c7ea:	51                   	push   ecx
  40c7eb:	ff d7                	call   edi
  40c7ed:	83 c4 04             	add    esp,0x4
  40c7f0:	85 c0                	test   eax,eax
  40c7f2:	75 da                	jne    0x40c7ce
  40c7f4:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  40c7f7:	8a 04 32             	mov    al,BYTE PTR [edx+esi*1]
  40c7fa:	3c 2e                	cmp    al,0x2e
  40c7fc:	74 d0                	je     0x40c7ce
  40c7fe:	3c 5f                	cmp    al,0x5f
  40c800:	74 cc                	je     0x40c7ce
  40c802:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40c805:	e8 7e 52 0c 00       	call   0x4d1a88

; Evaluateur : dispatch op arithmetiques: VA 0x409c10..0x409d1e (extraits disassembles, PAS un dump de fonctions arbitraires)
  409c10:	55                   	push   ebp
  409c11:	8b ec                	mov    ebp,esp
  409c13:	6a ff                	push   0xffffffff
  409c15:	68 a1 36 4d 00       	push   0x4d36a1
  409c1a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  409c20:	50                   	push   eax
  409c21:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  409c28:	83 ec 58             	sub    esp,0x58
  409c2b:	dd 05 30 e6 4d 00    	fld    QWORD PTR ds:0x4de630
  409c31:	53                   	push   ebx
  409c32:	56                   	push   esi
  409c33:	dd 55 e0             	fst    QWORD PTR [ebp-0x20]
  409c36:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  409c39:	8a 06                	mov    al,BYTE PTR [esi]
  409c3b:	33 db                	xor    ebx,ebx
  409c3d:	3a c3                	cmp    al,bl
  409c3f:	57                   	push   edi
  409c40:	8b f9                	mov    edi,ecx
  409c42:	0f 84 15 03 00 00    	je     0x409f5d
  409c48:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  409c4b:	3b c3                	cmp    eax,ebx
  409c4d:	0f 84 72 01 00 00    	je     0x409dc5
  409c53:	39 5e 1c             	cmp    DWORD PTR [esi+0x1c],ebx
  409c56:	0f 84 69 01 00 00    	je     0x409dc5
  409c5c:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  409c5f:	dd d8                	fstp   st(0)
  409c61:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  409c64:	51                   	push   ecx
  409c65:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  409c68:	52                   	push   edx
  409c69:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  409c6c:	51                   	push   ecx
  409c6d:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  409c70:	52                   	push   edx
  409c71:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  409c74:	51                   	push   ecx
  409c75:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  409c78:	52                   	push   edx
  409c79:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  409c7c:	51                   	push   ecx
  409c7d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  409c80:	52                   	push   edx
  409c81:	51                   	push   ecx
  409c82:	50                   	push   eax
  409c83:	8b cf                	mov    ecx,edi
  409c85:	e8 86 ff ff ff       	call   0x409c10
  409c8a:	dd 5d ec             	fstp   QWORD PTR [ebp-0x14]
  409c8d:	8b 55 2c             	mov    edx,DWORD PTR [ebp+0x2c]
  409c90:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  409c93:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  409c96:	52                   	push   edx
  409c97:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  409c9a:	50                   	push   eax
  409c9b:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  409c9e:	51                   	push   ecx
  409c9f:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  409ca2:	52                   	push   edx
  409ca3:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  409ca6:	50                   	push   eax
  409ca7:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  409caa:	51                   	push   ecx
  409cab:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  409cae:	52                   	push   edx
  409caf:	8b 56 1c             	mov    edx,DWORD PTR [esi+0x1c]
  409cb2:	50                   	push   eax
  409cb3:	51                   	push   ecx
  409cb4:	52                   	push   edx
  409cb5:	8b cf                	mov    ecx,edi
  409cb7:	e8 54 ff ff ff       	call   0x409c10
  409cbc:	dd 5d 14             	fstp   QWORD PTR [ebp+0x14]
  409cbf:	33 c0                	xor    eax,eax
  409cc1:	8a 06                	mov    al,BYTE PTR [esi]
  409cc3:	48                   	dec    eax
  409cc4:	83 f8 0b             	cmp    eax,0xb
  409cc7:	0f 87 f5 00 00 00    	ja     0x409dc2
  409ccd:	ff 24 85 14 c1 40 00 	jmp    DWORD PTR [eax*4+0x40c114]
  409cd4:	dd 45 14             	fld    QWORD PTR [ebp+0x14]
  409cd7:	5f                   	pop    edi
  409cd8:	dc 45 ec             	fadd   QWORD PTR [ebp-0x14]
  409cdb:	5e                   	pop    esi
  409cdc:	5b                   	pop    ebx
  409cdd:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409ce0:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409ce7:	8b e5                	mov    esp,ebp
  409ce9:	5d                   	pop    ebp
  409cea:	c2 28 00             	ret    0x28
  409ced:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409cf0:	5f                   	pop    edi
  409cf1:	dc 65 14             	fsub   QWORD PTR [ebp+0x14]
  409cf4:	5e                   	pop    esi
  409cf5:	5b                   	pop    ebx
  409cf6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409cf9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409d00:	8b e5                	mov    esp,ebp
  409d02:	5d                   	pop    ebp
  409d03:	c2 28 00             	ret    0x28
  409d06:	dd 45 14             	fld    QWORD PTR [ebp+0x14]
  409d09:	5f                   	pop    edi
  409d0a:	dc 4d ec             	fmul   QWORD PTR [ebp-0x14]
  409d0d:	5e                   	pop    esi
  409d0e:	5b                   	pop    ebx
  409d0f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409d12:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409d19:	8b e5                	mov    esp,ebp
  409d1b:	5d                   	pop    ebp
  409d1c:	c2 28 00             	ret    0x28
