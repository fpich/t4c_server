; Preuves de désassemblage T4C Server (1).exe — Passe 36
; SHA256 executable: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Les adresses sont absolues ; stop-address exclusif ; ne pas assimiler les octets vérifiés à une compréhension exhaustive.

; constructeur effet A : capture puis incrémentation: 0x004C3F13 .. 0x004C3F35 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c3f13 <.text+0xc2f13>:
  4c3f13:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c3f16:	8b 8e ac 03 00 00    	mov    ecx,DWORD PTR [esi+0x3ac]
  4c3f1c:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c3f1f:	ff 86 ac 03 00 00    	inc    DWORD PTR [esi+0x3ac]
  4c3f25:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3f28:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3f2f:	5e                   	pop    esi
  4c3f30:	8b e5                	mov    esp,ebp
  4c3f32:	5d                   	pop    ebp
  4c3f33:	c3                   	ret
  4c3f34:	90                   	nop


; constructeur effet B : capture puis incrémentation: 0x004C46E3 .. 0x004C4705 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c46e3 <.text+0xc36e3>:
  4c46e3:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c46e6:	8b 8e ac 03 00 00    	mov    ecx,DWORD PTR [esi+0x3ac]
  4c46ec:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c46ef:	ff 86 ac 03 00 00    	inc    DWORD PTR [esi+0x3ac]
  4c46f5:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c46f8:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c46ff:	5e                   	pop    esi
  4c4700:	8b e5                	mov    esp,ebp
  4c4702:	5d                   	pop    ebp
  4c4703:	c3                   	ret
  4c4704:	90                   	nop


; constructeur effet C : capture puis incrémentation: 0x004C4F83 .. 0x004C4FA5 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c4f83 <.text+0xc3f83>:
  4c4f83:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c4f86:	8b 8e ac 03 00 00    	mov    ecx,DWORD PTR [esi+0x3ac]
  4c4f8c:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c4f8f:	ff 86 ac 03 00 00    	inc    DWORD PTR [esi+0x3ac]
  4c4f95:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c4f98:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c4f9f:	5e                   	pop    esi
  4c4fa0:	8b e5                	mov    esp,ebp
  4c4fa2:	5d                   	pop    ebp
  4c4fa3:	c3                   	ret
  4c4fa4:	90                   	nop


; constructeur effet D : capture puis incrémentation: 0x004C5F43 .. 0x004C5F65 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c5f43 <.text+0xc4f43>:
  4c5f43:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c5f46:	8b 8e ac 03 00 00    	mov    ecx,DWORD PTR [esi+0x3ac]
  4c5f4c:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c5f4f:	ff 86 ac 03 00 00    	inc    DWORD PTR [esi+0x3ac]
  4c5f55:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c5f58:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c5f5f:	5e                   	pop    esi
  4c5f60:	8b e5                	mov    esp,ebp
  4c5f62:	5d                   	pop    ebp
  4c5f63:	c3                   	ret
  4c5f64:	90                   	nop


; constructeur effet E : capture puis incrémentation: 0x004C7023 .. 0x004C7045 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c7023 <.text+0xc6023>:
  4c7023:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c7026:	8b 8e ac 03 00 00    	mov    ecx,DWORD PTR [esi+0x3ac]
  4c702c:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c702f:	ff 86 ac 03 00 00    	inc    DWORD PTR [esi+0x3ac]
  4c7035:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c7038:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c703f:	5e                   	pop    esi
  4c7040:	8b e5                	mov    esp,ebp
  4c7042:	5d                   	pop    ebp
  4c7043:	c3                   	ret
  4c7044:	90                   	nop


; constructeur effet F : capture puis incrémentation: 0x004C7963 .. 0x004C7985 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c7963 <.text+0xc6963>:
  4c7963:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c7966:	8b 8e ac 03 00 00    	mov    ecx,DWORD PTR [esi+0x3ac]
  4c796c:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
  4c796f:	ff 86 ac 03 00 00    	inc    DWORD PTR [esi+0x3ac]
  4c7975:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c7978:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c797f:	5e                   	pop    esi
  4c7980:	8b e5                	mov    esp,ebp
  4c7982:	5d                   	pop    ebp
  4c7983:	c3                   	ret
  4c7984:	90                   	nop


; enregistrement superstructure type 2: 0x004C32D0 .. 0x004C32F0 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c32d0 <.text+0xc22d0>:
  4c32d0:	e9 0b 00 00 00       	jmp    0x4c32e0
  4c32d5:	90                   	nop
  4c32d6:	90                   	nop
  4c32d7:	90                   	nop
  4c32d8:	90                   	nop
  4c32d9:	90                   	nop
  4c32da:	90                   	nop
  4c32db:	90                   	nop
  4c32dc:	90                   	nop
  4c32dd:	90                   	nop
  4c32de:	90                   	nop
  4c32df:	90                   	nop
  4c32e0:	6a 02                	push   0x2
  4c32e2:	68 c0 3e 4c 00       	push   0x4c3ec0
  4c32e7:	e8 e4 d8 f9 ff       	call   0x460bd0
  4c32ec:	83 c4 08             	add    esp,0x8
  4c32ef:	c3                   	ret

