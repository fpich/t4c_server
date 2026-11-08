; Passe 38, analyse statique de T4C Server(1).exe SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Adresses x86, cote stop exclusif; preuves selectionnees pour des contrats documentes, pas des dumps aveugles.

; Cle WORD 2, cible fabrique 0x004C3EC0 : appel direct RegisterSuperstructure  [0x4C32E0,0x4C32EF)  4 instructions
  4c32e0:	6a 02                	push   0x2
  4c32e2:	68 c0 3e 4c 00       	push   0x4c3ec0
  4c32e7:	e8 e4 d8 f9 ff       	call   0x460bd0
  4c32ec:	83 c4 08             	add    esp,0x8

; Cle WORD 6, cible fabrique 0x004C4230 : appel direct RegisterSuperstructure  [0x4C3FB0,0x4C3FBF)  4 instructions
  4c3fb0:	6a 06                	push   0x6
  4c3fb2:	68 30 42 4c 00       	push   0x4c4230
  4c3fb7:	e8 14 cc f9 ff       	call   0x460bd0
  4c3fbc:	83 c4 08             	add    esp,0x8

; Cle WORD 17, cible fabrique 0x004C4690 : appel direct RegisterSuperstructure  [0x4C42E0,0x4C42EF)  4 instructions
  4c42e0:	6a 11                	push   0x11
  4c42e2:	68 90 46 4c 00       	push   0x4c4690
  4c42e7:	e8 e4 c8 f9 ff       	call   0x460bd0
  4c42ec:	83 c4 08             	add    esp,0x8

; Cle WORD 16, cible fabrique 0x004C4F30 : appel direct RegisterSuperstructure  [0x4C4720,0x4C472F)  4 instructions
  4c4720:	6a 10                	push   0x10
  4c4722:	68 30 4f 4c 00       	push   0x4c4f30
  4c4727:	e8 a4 c4 f9 ff       	call   0x460bd0
  4c472c:	83 c4 08             	add    esp,0x8

; Cle WORD 13, cible fabrique 0x004C52A0 : appel direct RegisterSuperstructure  [0x4C4FC0,0x4C4FCF)  4 instructions
  4c4fc0:	6a 0d                	push   0xd
  4c4fc2:	68 a0 52 4c 00       	push   0x4c52a0
  4c4fc7:	e8 04 bc f9 ff       	call   0x460bd0
  4c4fcc:	83 c4 08             	add    esp,0x8

; Cle WORD 10, cible fabrique 0x004C5630 : appel direct RegisterSuperstructure  [0x4C54A0,0x4C54AF)  4 instructions
  4c54a0:	6a 0a                	push   0xa
  4c54a2:	68 30 56 4c 00       	push   0x4c5630
  4c54a7:	e8 24 b7 f9 ff       	call   0x460bd0
  4c54ac:	83 c4 08             	add    esp,0x8

; Cle WORD 14, cible fabrique 0x004C5AD0 : appel direct RegisterSuperstructure  [0x4C5870,0x4C587F)  4 instructions
  4c5870:	6a 0e                	push   0xe
  4c5872:	68 d0 5a 4c 00       	push   0x4c5ad0
  4c5877:	e8 54 b3 f9 ff       	call   0x460bd0
  4c587c:	83 c4 08             	add    esp,0x8

; Cle WORD 3, cible fabrique 0x004C5EF0 : appel direct RegisterSuperstructure  [0x4C5BB0,0x4C5BBF)  6 instructions
  4c5bb0:	6a 03                	push   0x3
  4c5bb2:	68 f0 5e 4c 00       	push   0x4c5ef0
  4c5bb7:	e8 14 b0 f9 ff       	call   0x460bd0
  4c5bbc:	b8                   	.byte 0xb8
  4c5bbd:	d0                   	.byte 0xd0
  4c5bbe:	5b                   	pop    ebx

; Cle WORD 1, cible fabrique 0x004C68E0 : appel direct RegisterSuperstructure  [0x4C5F80,0x4C5F8F)  4 instructions
  4c5f80:	6a 01                	push   0x1
  4c5f82:	68 e0 68 4c 00       	push   0x4c68e0
  4c5f87:	e8 44 ac f9 ff       	call   0x460bd0
  4c5f8c:	83 c4 08             	add    esp,0x8

; Cle WORD 15, cible fabrique 0x004C6FD0 : appel direct RegisterSuperstructure  [0x4C6950,0x4C695F)  4 instructions
  4c6950:	6a 0f                	push   0xf
  4c6952:	68 d0 6f 4c 00       	push   0x4c6fd0
  4c6957:	e8 74 a2 f9 ff       	call   0x460bd0
  4c695c:	83 c4 08             	add    esp,0x8

; Cle WORD 7, cible fabrique 0x004C72D0 : appel direct RegisterSuperstructure  [0x4C7170,0x4C717F)  4 instructions
  4c7170:	6a 07                	push   0x7
  4c7172:	68 d0 72 4c 00       	push   0x4c72d0
  4c7177:	e8 54 9a f9 ff       	call   0x460bd0
  4c717c:	83 c4 08             	add    esp,0x8

; Cle WORD 11, cible fabrique 0x004C7430 : appel direct RegisterSuperstructure  [0x4C7390,0x4C739F)  4 instructions
  4c7390:	6a 0b                	push   0xb
  4c7392:	68 30 74 4c 00       	push   0x4c7430
  4c7397:	e8 34 98 f9 ff       	call   0x460bd0
  4c739c:	83 c4 08             	add    esp,0x8

; Cle WORD 9, cible fabrique 0x004C7910 : appel direct RegisterSuperstructure  [0x4C7590,0x4C759F)  4 instructions
  4c7590:	6a 09                	push   0x9
  4c7592:	68 10 79 4c 00       	push   0x4c7910
  4c7597:	e8 34 96 f9 ff       	call   0x460bd0
  4c759c:	83 c4 08             	add    esp,0x8

; Cle WORD 12, cible fabrique 0x004C7DF0 : appel direct RegisterSuperstructure  [0x4C7CA0,0x4C7CAF)  4 instructions
  4c7ca0:	6a 0c                	push   0xc
  4c7ca2:	68 f0 7d 4c 00       	push   0x4c7df0
  4c7ca7:	e8 24 8f f9 ff       	call   0x460bd0
  4c7cac:	83 c4 08             	add    esp,0x8

