; PASSE 48 — Effets spatiaux complementaires: condition et Teleport
; SHA-256 du serveur: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Seules instructions x86 dont les octets correspondent a la section PE .text
; Extraction statique. Aucune execution du programme ne permet de conclure sur les chemins reels.

; AreaSensitiveEffect::Create — [0x405CA0,0x405CF9[
; Stocke limites, code de traitement, copie donnees de taille variable.
  405ca0:	55                   	push   ebp
  405ca1:	8b ec                	mov    ebp,esp
  405ca3:	53                   	push   ebx
  405ca4:	8b d9                	mov    ebx,ecx
  405ca6:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  405ca9:	85 c0                	test   eax,eax
  405cab:	56                   	push   esi
  405cac:	74 09                	je     0x405cb7
  405cae:	50                   	push   eax
  405caf:	e8 ac c3 03 00       	call   0x442060
  405cb4:	83 c4 04             	add    esp,0x4
  405cb7:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  405cba:	85 f6                	test   esi,esi
  405cbc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  405cbf:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  405cc2:	66 8b 55 10          	mov    dx,WORD PTR [ebp+0x10]
  405cc6:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  405cc9:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
  405ccc:	66 89 53 0c          	mov    WORD PTR [ebx+0xc],dx
  405cd0:	74 23                	je     0x405cf5
  405cd2:	57                   	push   edi
  405cd3:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  405cd6:	57                   	push   edi
  405cd7:	e8 24 88 0c 00       	call   0x4ce500
  405cdc:	8b cf                	mov    ecx,edi
  405cde:	89 43 10             	mov    DWORD PTR [ebx+0x10],eax
  405ce1:	8b f8                	mov    edi,eax
  405ce3:	8b c1                	mov    eax,ecx
  405ce5:	c1 e9 02             	shr    ecx,0x2
  405ce8:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  405cea:	83 c4 04             	add    esp,0x4
  405ced:	8b c8                	mov    ecx,eax
  405cef:	83 e1 03             	and    ecx,0x3
  405cf2:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  405cf4:	5f                   	pop    edi
  405cf5:	5e                   	pop    esi
  405cf6:	5b                   	pop    ebx
  405cf7:	5d                   	pop    ebp
  405cf8:	c2 14 00             	ret    0x14

; AreaSensitiveEffect::QueryEffect — [0x405D00,0x405D26[
; Compare une coordonnee a [this+4] et [this+8] puis declenche Execute.
  405d00:	55                   	push   ebp
  405d01:	8b ec                	mov    ebp,esp
  405d03:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  405d06:	3b 41 04             	cmp    eax,DWORD PTR [ecx+0x4]
  405d09:	7c 17                	jl     0x405d22
  405d0b:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  405d0e:	7d 12                	jge    0x405d22
  405d10:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  405d13:	50                   	push   eax
  405d14:	e8 17 00 00 00       	call   0x405d30
  405d19:	b8 01 00 00 00       	mov    eax,0x1
  405d1e:	5d                   	pop    ebp
  405d1f:	c2 10 00             	ret    0x10
  405d22:	33 c0                	xor    eax,eax
  405d24:	5d                   	pop    ebp
  405d25:	c2 10 00             	ret    0x10

; AreaSensitiveEffect::Execute — [0x405D30,0x405D73[
; Pour type 0xA001 et type de cible 1 appelle slot +0x10C (Teleport) avec position 12 octets.
  405d30:	55                   	push   ebp
  405d31:	8b ec                	mov    ebp,esp
  405d33:	66 81 79 0c 01 a0    	cmp    WORD PTR [ecx+0xc],0xa001
  405d39:	56                   	push   esi
  405d3a:	57                   	push   edi
  405d3b:	75 32                	jne    0x405d6f
  405d3d:	8b 71 10             	mov    esi,DWORD PTR [ecx+0x10]
  405d40:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  405d43:	8b cf                	mov    ecx,edi
  405d45:	e8 26 59 08 00       	call   0x48b670
  405d4a:	3c 01                	cmp    al,0x1
  405d4c:	75 21                	jne    0x405d6f
  405d4e:	8b 16                	mov    edx,DWORD PTR [esi]
  405d50:	8b 07                	mov    eax,DWORD PTR [edi]
  405d52:	6a 00                	push   0x0
  405d54:	83 ec 0c             	sub    esp,0xc
  405d57:	8b cc                	mov    ecx,esp
  405d59:	89 11                	mov    DWORD PTR [ecx],edx
  405d5b:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  405d5e:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  405d61:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  405d64:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  405d67:	8b cf                	mov    ecx,edi
  405d69:	ff 90 0c 01 00 00    	call   DWORD PTR [eax+0x10c]
  405d6f:	5f                   	pop    edi
  405d70:	5e                   	pop    esi
  405d71:	5d                   	pop    ebp
  405d72:	c2 04 00             	ret    0x4

; Unit::GetType — [0x48B670,0x48B674[
; Lit octet +0x73; qualifie une condition du traitement de zone.
  48b670:	8a 41 73             	mov    al,BYTE PTR [ecx+0x73]
  48b673:	c3                   	ret
