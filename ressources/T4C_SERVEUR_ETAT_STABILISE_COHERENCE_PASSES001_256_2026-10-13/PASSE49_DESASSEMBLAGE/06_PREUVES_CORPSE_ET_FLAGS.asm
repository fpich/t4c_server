; PASSE 49 — Nettoyage de cadavre et etat mort
; Serveur original SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Chaque octet x86 est recoupe directement avec la section .text de T4C Server(1).exe.
; Les plages suivent des blocs fonctionnels identifies; les annotations ne substituent pas les appels indirects.

; Unit::CleanCorpse — 0x48B040..0x48B0B1 exclu
; Obtient WorldMap, remove_world_unit puis BCObjectRemoved si monde connu. Ne suppose pas forme universelle de timer.
  48b040:	55                   	push   ebp
  48b041:	8b ec                	mov    ebp,esp
  48b043:	83 ec 0c             	sub    esp,0xc
  48b046:	56                   	push   esi
  48b047:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  48b04a:	8b 06                	mov    eax,DWORD PTR [esi]
  48b04c:	8d 4d f4             	lea    ecx,[ebp-0xc]
  48b04f:	51                   	push   ecx
  48b050:	8b ce                	mov    ecx,esi
  48b052:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  48b055:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  48b058:	52                   	push   edx
  48b059:	e8 62 6e fe ff       	call   0x471ec0
  48b05e:	83 c4 04             	add    esp,0x4
  48b061:	85 c0                	test   eax,eax
  48b063:	74 47                	je     0x48b0ac
  48b065:	8b 4e 78             	mov    ecx,DWORD PTR [esi+0x78]
  48b068:	51                   	push   ecx
  48b069:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48b06c:	83 ec 0c             	sub    esp,0xc
  48b06f:	8b d4                	mov    edx,esp
  48b071:	89 0a                	mov    DWORD PTR [edx],ecx
  48b073:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  48b076:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  48b079:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  48b07c:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  48b07f:	8b c8                	mov    ecx,eax
  48b081:	e8 0a 60 02 00       	call   0x4b1090
  48b086:	8b 56 78             	mov    edx,DWORD PTR [esi+0x78]
  48b089:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48b08c:	6a 00                	push   0x0
  48b08e:	52                   	push   edx
  48b08f:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
  48b092:	6a 14                	push   0x14
  48b094:	83 ec 0c             	sub    esp,0xc
  48b097:	8b c4                	mov    eax,esp
  48b099:	89 08                	mov    DWORD PTR [eax],ecx
  48b09b:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  48b09e:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  48b0a1:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  48b0a4:	e8 57 4b f8 ff       	call   0x40fc00
  48b0a9:	83 c4 18             	add    esp,0x18
  48b0ac:	5e                   	pop    esi
  48b0ad:	8b e5                	mov    esp,ebp
  48b0af:	5d                   	pop    ebp
  48b0b0:	c3                   	ret

; Unit::Death de base — 0x48B850..0x48B853 exclu
; Simple ret 8 ; implementation de base sans traitement du monde.
  48b850:	c2 08 00             	ret    0x8

; Unit::IsDead — 0x463500..0x463507 exclu
; Retourne directement le drapeau +0xB0.
  463500:	8a 81 b0 00 00 00    	mov    al,BYTE PTR [ecx+0xb0]
  463506:	c3                   	ret

; Unit::ResetDeath — 0x463510..0x463518 exclu
; Remet le drapeau +0xB0 a 0.
  463510:	c6 81 b0 00 00 00 00 	mov    BYTE PTR [ecx+0xb0],0x0
  463517:	c3                   	ret

; Unit::KillCreature — 0x463550..0x463558 exclu
; Ecrit 1 dans le flag +0xB0 puis retourne; n appelle pas DeleteUnit.
  463550:	c6 81 b0 00 00 00 01 	mov    BYTE PTR [ecx+0xb0],0x1
  463557:	c3                   	ret
