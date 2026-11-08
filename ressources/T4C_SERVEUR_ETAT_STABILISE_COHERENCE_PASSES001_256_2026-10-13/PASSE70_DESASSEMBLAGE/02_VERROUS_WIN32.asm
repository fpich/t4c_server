; Passe 70 — vérification directe sur le PE SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; VA .text 0x401000 ; sections PE d’après la passe 69 ; aucun octet de padding compté
; Format GNU objdump -d -M intel --insn-width=16.
; 02_VERROUS_WIN32.asm

; prise du verrou, import Kernel32 EnterCriticalSection IAT 0x4DE0F8 [0x00409680,0x00409697) — 23 octets, 12 instructions
  409680:	55                                              	push   ebp
  409681:	8b ec                                           	mov    ebp,esp
  409683:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  409686:	56                                              	push   esi
  409687:	8b f1                                           	mov    esi,ecx
  409689:	50                                              	push   eax
  40968a:	89 06                                           	mov    DWORD PTR [esi],eax
  40968c:	ff 15 f8 e0 4d 00                               	call   DWORD PTR ds:0x4de0f8
  409692:	8b c6                                           	mov    eax,esi
  409694:	5e                                              	pop    esi
  409695:	5d                                              	pop    ebp
  409696:	c2                                              	.byte 0xc2

; libération du verrou, import Kernel32 LeaveCriticalSection IAT 0x4DE0FC [0x004096A0,0x004096AA) — 10 octets, 4 instructions
  4096a0:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  4096a2:	50                                              	push   eax
  4096a3:	ff 15 fc e0 4d 00                               	call   DWORD PTR ds:0x4de0fc
  4096a9:	c3                                              	ret
