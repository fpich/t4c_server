; T4C Server (1).exe, passe 35 — preuve objdump x86, vérifier octets en .text; séquences décrites sans inférer les règles métier complètes.

; enregistrement statique code 17: 0x004BD8A0..0x004BD955 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004bd8a0 <.text+0xbc8a0>:
  4bd8a0:	55                   	push   ebp
  4bd8a1:	8b ec                	mov    ebp,esp
  4bd8a3:	6a ff                	push   0xffffffff
  4bd8a5:	68 18 d4 4d 00       	push   0x4dd418
  4bd8aa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4bd8b0:	50                   	push   eax
  4bd8b1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4bd8b8:	51                   	push   ecx
  4bd8b9:	56                   	push   esi
  4bd8ba:	8b f1                	mov    esi,ecx
  4bd8bc:	8d 46 40             	lea    eax,[esi+0x40]
  4bd8bf:	50                   	push   eax
  4bd8c0:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4bd8c3:	c7 46 38 8c e5 4d 00 	mov    DWORD PTR [esi+0x38],0x4de58c
  4bd8ca:	c7 46 3c ff ff ff ff 	mov    DWORD PTR [esi+0x3c],0xffffffff
  4bd8d1:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  4bd8d7:	33 c0                	xor    eax,eax
  4bd8d9:	89 46 5c             	mov    DWORD PTR [esi+0x5c],eax
  4bd8dc:	89 46 60             	mov    DWORD PTR [esi+0x60],eax
  4bd8df:	89 46 64             	mov    DWORD PTR [esi+0x64],eax
  4bd8e2:	89 46 68             	mov    DWORD PTR [esi+0x68],eax
  4bd8e5:	c7 46 38 6c e8 4d 00 	mov    DWORD PTR [esi+0x38],0x4de86c
  4bd8ec:	89 46 78             	mov    DWORD PTR [esi+0x78],eax
  4bd8ef:	c6 46 6c 08          	mov    BYTE PTR [esi+0x6c],0x8
  4bd8f3:	89 46 70             	mov    DWORD PTR [esi+0x70],eax
  4bd8f6:	b9 14 00 00 00       	mov    ecx,0x14
  4bd8fb:	68 70 d9 4b 00       	push   0x4bd970
  4bd900:	6a 11                	push   0x11
  4bd902:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  4bd905:	c7 06 ff ff ff ff    	mov    DWORD PTR [esi],0xffffffff
  4bd90b:	c7 46 04 28 00 00 00 	mov    DWORD PTR [esi+0x4],0x28
  4bd912:	c7 46 08 0c 00 00 00 	mov    DWORD PTR [esi+0x8],0xc
  4bd919:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  4bd91c:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  4bd91f:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  4bd922:	89 4e 18             	mov    DWORD PTR [esi+0x18],ecx
  4bd925:	89 4e 1c             	mov    DWORD PTR [esi+0x1c],ecx
  4bd928:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4bd92b:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  4bd92e:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  4bd931:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  4bd934:	89 46 34             	mov    DWORD PTR [esi+0x34],eax
  4bd937:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  4bd93a:	e8 d1 31 fd ff       	call   0x490b10
  4bd93f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4bd942:	83 c4 08             	add    esp,0x8
  4bd945:	8b c6                	mov    eax,esi
  4bd947:	5e                   	pop    esi
  4bd948:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4bd94f:	8b e5                	mov    esp,ebp
  4bd951:	5d                   	pop    ebp
  4bd952:	c3                   	ret
  4bd953:	90                   	nop
  4bd954:	90                   	nop


; enregistrement statique code 1: 0x004C2CA0..0x004C2D55 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c2ca0 <.text+0xc1ca0>:
  4c2ca0:	55                   	push   ebp
  4c2ca1:	8b ec                	mov    ebp,esp
  4c2ca3:	6a ff                	push   0xffffffff
  4c2ca5:	68 28 d5 4d 00       	push   0x4dd528
  4c2caa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c2cb0:	50                   	push   eax
  4c2cb1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c2cb8:	51                   	push   ecx
  4c2cb9:	56                   	push   esi
  4c2cba:	8b f1                	mov    esi,ecx
  4c2cbc:	8d 46 40             	lea    eax,[esi+0x40]
  4c2cbf:	50                   	push   eax
  4c2cc0:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4c2cc3:	c7 46 38 8c e5 4d 00 	mov    DWORD PTR [esi+0x38],0x4de58c
  4c2cca:	c7 46 3c ff ff ff ff 	mov    DWORD PTR [esi+0x3c],0xffffffff
  4c2cd1:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  4c2cd7:	33 c0                	xor    eax,eax
  4c2cd9:	89 46 5c             	mov    DWORD PTR [esi+0x5c],eax
  4c2cdc:	89 46 60             	mov    DWORD PTR [esi+0x60],eax
  4c2cdf:	89 46 64             	mov    DWORD PTR [esi+0x64],eax
  4c2ce2:	89 46 68             	mov    DWORD PTR [esi+0x68],eax
  4c2ce5:	c7 46 38 6c e8 4d 00 	mov    DWORD PTR [esi+0x38],0x4de86c
  4c2cec:	89 46 78             	mov    DWORD PTR [esi+0x78],eax
  4c2cef:	c6 46 6c 08          	mov    BYTE PTR [esi+0x6c],0x8
  4c2cf3:	89 46 70             	mov    DWORD PTR [esi+0x70],eax
  4c2cf6:	b9 19 00 00 00       	mov    ecx,0x19
  4c2cfb:	68 60 2e 4c 00       	push   0x4c2e60
  4c2d00:	6a 01                	push   0x1
  4c2d02:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  4c2d05:	89 06                	mov    DWORD PTR [esi],eax
  4c2d07:	c7 46 04 05 00 00 00 	mov    DWORD PTR [esi+0x4],0x5
  4c2d0e:	c7 46 08 03 00 00 00 	mov    DWORD PTR [esi+0x8],0x3
  4c2d15:	c7 46 0c 14 00 00 00 	mov    DWORD PTR [esi+0xc],0x14
  4c2d1c:	89 4e 10             	mov    DWORD PTR [esi+0x10],ecx
  4c2d1f:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  4c2d22:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  4c2d25:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  4c2d28:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4c2d2b:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  4c2d2e:	89 4e 28             	mov    DWORD PTR [esi+0x28],ecx
  4c2d31:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  4c2d34:	89 46 34             	mov    DWORD PTR [esi+0x34],eax
  4c2d37:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  4c2d3a:	e8 d1 dd fc ff       	call   0x490b10
  4c2d3f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c2d42:	83 c4 08             	add    esp,0x8
  4c2d45:	8b c6                	mov    eax,esi
  4c2d47:	5e                   	pop    esi
  4c2d48:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c2d4f:	8b e5                	mov    esp,ebp
  4c2d51:	5d                   	pop    ebp
  4c2d52:	c3                   	ret
  4c2d53:	90                   	nop
  4c2d54:	90                   	nop


; enregistrement dynamique callback 0x4c3b70: 0x004C3EC0..0x004C3F17 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c3ec0 <.text+0xc2ec0>:
  4c3ec0:	55                   	push   ebp
  4c3ec1:	8b ec                	mov    ebp,esp
  4c3ec3:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c3ec9:	6a ff                	push   0xffffffff
  4c3ecb:	68 bb d5 4d 00       	push   0x4dd5bb
  4c3ed0:	50                   	push   eax
  4c3ed1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c3ed8:	56                   	push   esi
  4c3ed9:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c3edc:	8b 86 ac 03 00 00    	mov    eax,DWORD PTR [esi+0x3ac]
  4c3ee2:	68 70 3b 4c 00       	push   0x4c3b70
  4c3ee7:	50                   	push   eax
  4c3ee8:	e8 23 cc fc ff       	call   0x490b10
  4c3eed:	68 88 00 00 00       	push   0x88
  4c3ef2:	e8 f9 e0 f7 ff       	call   0x441ff0
  4c3ef7:	83 c4 0c             	add    esp,0xc
  4c3efa:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c3efd:	85 c0                	test   eax,eax
  4c3eff:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c3f06:	74 09                	je     0x4c3f11
  4c3f08:	8b c8                	mov    ecx,eax
  4c3f0a:	e8 51 f3 ff ff       	call   0x4c3260
  4c3f0f:	eb 02                	jmp    0x4c3f13
  4c3f11:	33 c0                	xor    eax,eax
  4c3f13:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c3f16:	8b                   	.byte 0x8b


; enregistrement dynamique callback 0x4c43c0: 0x004C4690..0x004C46E7 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c4690 <.text+0xc3690>:
  4c4690:	55                   	push   ebp
  4c4691:	8b ec                	mov    ebp,esp
  4c4693:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c4699:	6a ff                	push   0xffffffff
  4c469b:	68 3b d6 4d 00       	push   0x4dd63b
  4c46a0:	50                   	push   eax
  4c46a1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c46a8:	56                   	push   esi
  4c46a9:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c46ac:	8b 86 ac 03 00 00    	mov    eax,DWORD PTR [esi+0x3ac]
  4c46b2:	68 c0 43 4c 00       	push   0x4c43c0
  4c46b7:	50                   	push   eax
  4c46b8:	e8 53 c4 fc ff       	call   0x490b10
  4c46bd:	68 80 00 00 00       	push   0x80
  4c46c2:	e8 29 d9 f7 ff       	call   0x441ff0
  4c46c7:	83 c4 0c             	add    esp,0xc
  4c46ca:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c46cd:	85 c0                	test   eax,eax
  4c46cf:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c46d6:	74 09                	je     0x4c46e1
  4c46d8:	8b c8                	mov    ecx,eax
  4c46da:	e8 91 fb ff ff       	call   0x4c4270
  4c46df:	eb 02                	jmp    0x4c46e3
  4c46e1:	33 c0                	xor    eax,eax
  4c46e3:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c46e6:	8b                   	.byte 0x8b


; enregistrement dynamique callback 0x4c4c60: 0x004C4F30..0x004C4F87 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c4f30 <.text+0xc3f30>:
  4c4f30:	55                   	push   ebp
  4c4f31:	8b ec                	mov    ebp,esp
  4c4f33:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c4f39:	6a ff                	push   0xffffffff
  4c4f3b:	68 bb d6 4d 00       	push   0x4dd6bb
  4c4f40:	50                   	push   eax
  4c4f41:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c4f48:	56                   	push   esi
  4c4f49:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c4f4c:	8b 86 ac 03 00 00    	mov    eax,DWORD PTR [esi+0x3ac]
  4c4f52:	68 60 4c 4c 00       	push   0x4c4c60
  4c4f57:	50                   	push   eax
  4c4f58:	e8 b3 bb fc ff       	call   0x490b10
  4c4f5d:	68 80 00 00 00       	push   0x80
  4c4f62:	e8 89 d0 f7 ff       	call   0x441ff0
  4c4f67:	83 c4 0c             	add    esp,0xc
  4c4f6a:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c4f6d:	85 c0                	test   eax,eax
  4c4f6f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c4f76:	74 09                	je     0x4c4f81
  4c4f78:	8b c8                	mov    ecx,eax
  4c4f7a:	e8 b1 f7 ff ff       	call   0x4c4730
  4c4f7f:	eb 02                	jmp    0x4c4f83
  4c4f81:	33 c0                	xor    eax,eax
  4c4f83:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c4f86:	8b                   	.byte 0x8b


; enregistrement dynamique callback 0x4c5c90: 0x004C5EF0..0x004C5F4B (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c5ef0 <.text+0xc4ef0>:
  4c5ef0:	55                   	push   ebp
  4c5ef1:	8b ec                	mov    ebp,esp
  4c5ef3:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c5ef9:	6a ff                	push   0xffffffff
  4c5efb:	68 9b d8 4d 00       	push   0x4dd89b
  4c5f00:	50                   	push   eax
  4c5f01:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c5f08:	56                   	push   esi
  4c5f09:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c5f0c:	8b 86 ac 03 00 00    	mov    eax,DWORD PTR [esi+0x3ac]
  4c5f12:	68 90 5c 4c 00       	push   0x4c5c90
  4c5f17:	50                   	push   eax
  4c5f18:	e8 f3 ab fc ff       	call   0x490b10
  4c5f1d:	68 88 00 00 00       	push   0x88
  4c5f22:	e8 c9 c0 f7 ff       	call   0x441ff0
  4c5f27:	83 c4 0c             	add    esp,0xc
  4c5f2a:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c5f2d:	85 c0                	test   eax,eax
  4c5f2f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c5f36:	74 09                	je     0x4c5f41
  4c5f38:	8b c8                	mov    ecx,eax
  4c5f3a:	e8 f1 fb ff ff       	call   0x4c5b30
  4c5f3f:	eb 02                	jmp    0x4c5f43
  4c5f41:	33 c0                	xor    eax,eax
  4c5f43:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c5f46:	8b                   	.byte 0x8b
  4c5f47:	8e                   	.byte 0x8e
  4c5f48:	ac                   	lods   al,BYTE PTR ds:[esi]
  4c5f49:	03 00                	add    eax,DWORD PTR [eax]


; enregistrement dynamique callback 0x4c6be0: 0x004C6FD0..0x004C7027 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c6fd0 <.text+0xc5fd0>:
  4c6fd0:	55                   	push   ebp
  4c6fd1:	8b ec                	mov    ebp,esp
  4c6fd3:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c6fd9:	6a ff                	push   0xffffffff
  4c6fdb:	68 fb d9 4d 00       	push   0x4dd9fb
  4c6fe0:	50                   	push   eax
  4c6fe1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c6fe8:	56                   	push   esi
  4c6fe9:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c6fec:	8b 86 ac 03 00 00    	mov    eax,DWORD PTR [esi+0x3ac]
  4c6ff2:	68 e0 6b 4c 00       	push   0x4c6be0
  4c6ff7:	50                   	push   eax
  4c6ff8:	e8 13 9b fc ff       	call   0x490b10
  4c6ffd:	68 88 00 00 00       	push   0x88
  4c7002:	e8 e9 af f7 ff       	call   0x441ff0
  4c7007:	83 c4 0c             	add    esp,0xc
  4c700a:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c700d:	85 c0                	test   eax,eax
  4c700f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c7016:	74 09                	je     0x4c7021
  4c7018:	8b c8                	mov    ecx,eax
  4c701a:	e8 41 f9 ff ff       	call   0x4c6960
  4c701f:	eb 02                	jmp    0x4c7023
  4c7021:	33 c0                	xor    eax,eax
  4c7023:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c7026:	8b                   	.byte 0x8b


; enregistrement dynamique callback 0x4c7990: 0x004C7910..0x004C7967 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c7910 <.text+0xc6910>:
  4c7910:	55                   	push   ebp
  4c7911:	8b ec                	mov    ebp,esp
  4c7913:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c7919:	6a ff                	push   0xffffffff
  4c791b:	68 1b db 4d 00       	push   0x4ddb1b
  4c7920:	50                   	push   eax
  4c7921:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c7928:	56                   	push   esi
  4c7929:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c792c:	8b 86 ac 03 00 00    	mov    eax,DWORD PTR [esi+0x3ac]
  4c7932:	68 90 79 4c 00       	push   0x4c7990
  4c7937:	50                   	push   eax
  4c7938:	e8 d3 91 fc ff       	call   0x490b10
  4c793d:	68 f8 00 00 00       	push   0xf8
  4c7942:	e8 a9 a6 f7 ff       	call   0x441ff0
  4c7947:	83 c4 0c             	add    esp,0xc
  4c794a:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c794d:	85 c0                	test   eax,eax
  4c794f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c7956:	74 09                	je     0x4c7961
  4c7958:	8b c8                	mov    ecx,eax
  4c795a:	e8 11 fb ff ff       	call   0x4c7470
  4c795f:	eb 02                	jmp    0x4c7963
  4c7961:	33 c0                	xor    eax,eax
  4c7963:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c7966:	8b                   	.byte 0x8b

