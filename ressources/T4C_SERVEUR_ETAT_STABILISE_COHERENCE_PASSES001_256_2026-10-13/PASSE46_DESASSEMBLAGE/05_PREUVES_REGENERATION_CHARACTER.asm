; PASSE46 — régénération du personnage et callbacks
; Binaire serveur SHA-256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Séquences disassemblées de .text et vérifiées octet par octet.
; Attention : preuve statique, non une exécution instrumentée.

; Character::Regenerate | [0x41e020, 0x41e0b6[
; Appelle HPregen et ManaRegen puis parcourt liste interne de réactions avec code 0x40.
  41e020:	56                   	push   esi
  41e021:	8b f1                	mov    esi,ecx
  41e023:	56                   	push   esi
  41e024:	e8 47 a7 01 00       	call   0x438770
  41e029:	56                   	push   esi
  41e02a:	e8 01 a8 01 00       	call   0x438830
  41e02f:	8b 86 a0 03 00 00    	mov    eax,DWORD PTR [esi+0x3a0]
  41e035:	83 c4 08             	add    esp,0x8
  41e038:	89 86 9c 03 00 00    	mov    DWORD PTR [esi+0x39c],eax
  41e03e:	c7 86 bc 03 00 00 00 	mov    DWORD PTR [esi+0x3bc],0x0
  41e045:	00 00 00 
  41e048:	c6 86 b0 03 00 00 08 	mov    BYTE PTR [esi+0x3b0],0x8
  41e04f:	8b 86 bc 03 00 00    	mov    eax,DWORD PTR [esi+0x3bc]
  41e055:	85 c0                	test   eax,eax
  41e057:	74 10                	je     0x41e069
  41e059:	8b 8e 9c 03 00 00    	mov    ecx,DWORD PTR [esi+0x39c]
  41e05f:	8b 11                	mov    edx,DWORD PTR [ecx]
  41e061:	89 96 9c 03 00 00    	mov    DWORD PTR [esi+0x39c],edx
  41e067:	eb 0a                	jmp    0x41e073
  41e069:	c7 86 bc 03 00 00 01 	mov    DWORD PTR [esi+0x3bc],0x1
  41e070:	00 00 00 
  41e073:	8b 86 9c 03 00 00    	mov    eax,DWORD PTR [esi+0x39c]
  41e079:	85 c0                	test   eax,eax
  41e07b:	74 1c                	je     0x41e099
  41e07d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  41e080:	8b 08                	mov    ecx,DWORD PTR [eax]
  41e082:	50                   	push   eax
  41e083:	6a 00                	push   0x0
  41e085:	6a 00                	push   0x0
  41e087:	6a 00                	push   0x0
  41e089:	6a 00                	push   0x0
  41e08b:	56                   	push   esi
  41e08c:	6a 40                	push   0x40
  41e08e:	51                   	push   ecx
  41e08f:	e8 6c 1f 04 00       	call   0x460000
  41e094:	83 c4 20             	add    esp,0x20
  41e097:	eb b6                	jmp    0x41e04f
  41e099:	8b 86 bc 03 00 00    	mov    eax,DWORD PTR [esi+0x3bc]
  41e09f:	85 c0                	test   eax,eax
  41e0a1:	74 07                	je     0x41e0aa
  41e0a3:	c6 86 b0 03 00 00 07 	mov    BYTE PTR [esi+0x3b0],0x7
  41e0aa:	c7 86 bc 03 00 00 00 	mov    DWORD PTR [esi+0x3bc],0x0
  41e0b1:	00 00 00 
  41e0b4:	5e                   	pop    esi
  41e0b5:	c3                   	ret

