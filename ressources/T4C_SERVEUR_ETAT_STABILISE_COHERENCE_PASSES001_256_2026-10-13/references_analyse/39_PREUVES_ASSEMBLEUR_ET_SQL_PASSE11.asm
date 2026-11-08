; Analyse statique de T4C Server(1).exe — preuve passe 11
; SHA256: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; PE32 VA, objdump -d -Mintel (GNU objdump). Aucun serveur execute.
; Les requêtes ci-dessous sont des chaînes bytes extraites directement depuis la section .data du PE.

; Chaine originale VA=0x501acc:
; SELECT UserID,AccountName,wlX,wlY,wlWorld,nClass,CurrentHP,MaxHP,CurrentMana,MaxMana,Strength,Endurance,Agility,Intelligence,Wisdom,CurrentLevel,AttackSkill,DodgeSkill,Gold,Appearance,Corpse,XP,StatPnts,SkillPnts,Karma,Gender,ListingTitle,ListingMisc,MoveExhaust,MentalExhaust,AttackExhaust FROM PlayingCharacters WHERE PlayerName='%s'

; Chaine originale VA=0x501a28:
; SELECT ObjID, EquipPos, ObjType, Qty FROM PlayerItems WHERE OwnerID=%u

; Chaine originale VA=0x5019e8:
; SELECT SkillID, SkillPnts FROM PlayerSkills WHERE OwnerID=%u

; Chaine originale VA=0x501884:
; SELECT SpellID FROM PlayerSpells WHERE OwnerID=%u

; Chaine originale VA=0x501354:
; UPDATE PlayingCharacters SET PlayerName='%s',Strength=%u,Endurance=%u,Agility=%u,Intelligence=%u,Wisdom=%u,AttackSkill=%u,DodgeSkill=%u,XP=%f,CurrentLevel=%u,CurrentHP=%u,MaxHP=%u,CurrentMana=%u,MaxMana=%u,Gold=%u,wlX=%u,wlY=%u,wlWorld=%u,SkillPnts=%u,StatPnts=%u,Corpse=%u,Appearance=%u,Karma=%d,Gender=%u,ListingTitle='%s',ListingMisc='%s',MoveExhaust=%u,MentalExhaust=%u,AttackExhaust=%u WHERE UserID=%u


; ===== A. Format du SELECT principal et lancement =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00414bc9 <.text+0x13bc9>:
  414bc9:	e8 90 ce 0b 00       	call   0x4d1a5e
  414bce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  414bd1:	50                   	push   eax
  414bd2:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  414bd5:	68 cc 1a 50 00       	push   0x501acc
  414bda:	51                   	push   ecx
  414bdb:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  414bdf:	e8 b0 ce 0b 00       	call   0x4d1a94
  414be4:	83 c4 0c             	add    esp,0xc
  414be7:	b9 78 16 51 00       	mov    ecx,0x511678
  414bec:	e8 8f 9d 03 00       	call   0x44e980
  414bf1:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  414bf4:	57                   	push   edi
  414bf5:	52                   	push   edx
  414bf6:	b9 78 16 51 00       	mov    ecx,0x511678
  414bfb:	e8 80 a1 03 00       	call   0x44ed80
  414c00:	68 bc 1a 50 00       	push   0x501abc
  414c05:	68 00 08 00 00       	push   0x800
  414c0a:	e8 31 d1 05 00       	call   0x471d40
  414c0f:	83 c4 08             	add    esp,0x8
  414c12:	b9 78 16 51 00       	mov    ecx,0x511678
  414c17:	e8 44 a1 03 00       	call   0x44ed60
  414c1c:	85 c0                	test   eax,eax
  414c1e:	0f                   	.byte 0xf
  414c1f:	84 55 0f             	test   BYTE PTR [ebp+0xf],dl


; ===== B. Récupération ID / compte / position =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00414c24 <.text+0x13c24>:
  414c24:	8d 45 ec             	lea    eax,[ebp-0x14]
  414c27:	50                   	push   eax
  414c28:	6a 01                	push   0x1
  414c2a:	b9 78 16 51 00       	mov    ecx,0x511678
  414c2f:	e8 dc a2 03 00       	call   0x44ef10
  414c34:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  414c37:	51                   	push   ecx
  414c38:	8b ce                	mov    ecx,esi
  414c3a:	e8 d1 6a 07 00       	call   0x48b710
  414c3f:	6a 14                	push   0x14
  414c41:	8d 95 48 ff ff ff    	lea    edx,[ebp-0xb8]
  414c47:	52                   	push   edx
  414c48:	6a 02                	push   0x2
  414c4a:	b9 78 16 51 00       	mov    ecx,0x511678
  414c4f:	e8 cc a4 03 00       	call   0x44f120
  414c54:	68 ac 1a 50 00       	push   0x501aac
  414c59:	68 00 08 00 00       	push   0x800
  414c5e:	e8 dd d0 05 00       	call   0x471d40
  414c63:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  414c66:	83 c4 08             	add    esp,0x8
  414c69:	8d 45 dc             	lea    eax,[ebp-0x24]
  414c6c:	50                   	push   eax
  414c6d:	e8 9e 21 04 00       	call   0x456e10
  414c72:	8b 00                	mov    eax,DWORD PTR [eax]
  414c74:	50                   	push   eax
  414c75:	8d 8d 48 ff ff ff    	lea    ecx,[ebp-0xb8]
  414c7b:	51                   	push   ecx
  414c7c:	ff 15 e4 e2 4d 00    	call   DWORD PTR ds:0x4de2e4
  414c82:	83 c4 08             	add    esp,0x8
  414c85:	8b d8                	mov    ebx,eax
  414c87:	f7 db                	neg    ebx
  414c89:	1a db                	sbb    bl,bl
  414c8b:	8d 4d dc             	lea    ecx,[ebp-0x24]
  414c8e:	fe c3                	inc    bl
  414c90:	e8 ab cd 0b 00       	call   0x4d1a40
  414c95:	84 db                	test   bl,bl
  414c97:	0f 84 6f 0e 00 00    	je     0x415b0c
  414c9d:	68 94 1a 50 00       	push   0x501a94
  414ca2:	68 00 08 00 00       	push   0x800
  414ca7:	e8 94 d0 05 00       	call   0x471d40
  414cac:	83 c4 08             	add    esp,0x8
  414caf:	8d 55 ec             	lea    edx,[ebp-0x14]
  414cb2:	52                   	push   edx
  414cb3:	6a 03                	push   0x3
  414cb5:	b9 78 16 51 00       	mov    ecx,0x511678
  414cba:	e8 51 a2 03 00       	call   0x44ef10
  414cbf:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
  414cc2:	8d 45 ec             	lea    eax,[ebp-0x14]
  414cc5:	50                   	push   eax
  414cc6:	6a 04                	push   0x4
  414cc8:	b9 78 16 51 00       	mov    ecx,0x511678
  414ccd:	e8 3e a2 03 00       	call   0x44ef10
  414cd2:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  414cd5:	8d 55 ec             	lea    edx,[ebp-0x14]
  414cd8:	52                   	push   edx
  414cd9:	89 8d 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],ecx
  414cdf:	6a 05                	push   0x5
  414ce1:	b9 78 16 51 00       	mov    ecx,0x511678
  414ce6:	e8 25 a2 03 00       	call   0x44ef10
  414ceb:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  414cee:	8b 16                	mov    edx,DWORD PTR [esi]
  414cf0:	83 ec 0c             	sub    esp,0xc
  414cf3:	8b cc                	mov    ecx,esp
  414cf5:	89 19                	mov    DWORD PTR [ecx],ebx
  414cf7:	8b 9d 78 ff ff ff    	mov    ebx,DWORD PTR [ebp-0x88]
  414cfd:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  414d00:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  414d03:	8b ce                	mov    ecx,esi
  414d05:	ff 52 20             	call   DWORD PTR [edx+0x20]
  414d08:	8d 55 ec             	lea    edx,[ebp-0x14]
  414d0b:	52                   	push   edx


; ===== C. Fin lecture PlayingCharacters, chargement Flags =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00414ff1 <.text+0x13ff1>:
  414ff1:	78 16                	js     0x415009
  414ff3:	51                   	push   ecx
  414ff4:	00 89 96 88 00 00    	add    BYTE PTR [ecx+0x8896],cl
  414ffa:	00 e8                	add    al,ch
  414ffc:	10 9f 03 00 8b 4d    	adc    BYTE PTR [edi+0x4d8b0003],bl
  415002:	ec                   	in     al,dx
  415003:	89 8e 90 00 00 00    	mov    DWORD PTR [esi+0x90],ecx
  415009:	b9 78 16 51 00       	mov    ecx,0x511678
  41500e:	e8 5d 9d 03 00       	call   0x44ed70
  415013:	8b ce                	mov    ecx,esi
  415015:	e8 06 d4 ff ff       	call   0x412420
  41501a:	68 84 1a 50 00       	push   0x501a84
  41501f:	68 00 08 00 00       	push   0x800
  415024:	e8 17 cd 05 00       	call   0x471d40
  415029:	83 c4 08             	add    esp,0x8
  41502c:	8b ce                	mov    ecx,esi
  41502e:	e8 cd 66 07 00       	call   0x48b700
  415033:	50                   	push   eax
  415034:	68 78 16 51 00       	push   0x511678
  415039:	8b ce                	mov    ecx,esi
  41503b:	e8 30 a3 07 00       	call   0x48f370
  415040:	8b 16                	mov    edx,DWORD PTR [esi]
  415042:	57                   	push   edi
  415043:	68 45 4e 00 00       	push   0x4e45
  415048:	8b ce                	mov    ecx,esi
  41504a:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  41504d:	85 c0                	test   eax,eax
  41504f:	75 11                	jne    0x415062
  415051:	8b 06                	mov    eax,DWORD PTR [esi]
  415053:	68 24 13 00 00       	push   0x1324
  415058:	68 45 4e 00 00       	push   0x4e45
  41505d:	8b ce                	mov    ecx,esi
  41505f:	ff 50 04             	call   DWORD PTR [eax+0x4]
  415062:	b9 78 16 51 00       	mov    ecx,0x511678
  415067:	e8 04 9d 03 00       	call   0x44ed70
  41506c:	8d 4d 9c             	lea    ecx,[ebp-0x64]
  41506f:	51                   	push   ecx
  415070:	c7                   	.byte 0xc7
  415071:	45                   	inc    ebp
  415072:	94                   	xchg   esp,eax
  415073:	8c                   	.byte 0x8c


; ===== D. Requête objets, itération et accès aux 4 champs =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004150b7 <.text+0x140b7>:
  4150b7:	8b ce                	mov    ecx,esi
  4150b9:	e8 42 66 07 00       	call   0x48b700
  4150be:	50                   	push   eax
  4150bf:	8d 55 e4             	lea    edx,[ebp-0x1c]
  4150c2:	68 28 1a 50 00       	push   0x501a28
  4150c7:	52                   	push   edx
  4150c8:	e8 c7 c9 0b 00       	call   0x4d1a94
  4150cd:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  4150d0:	83 c4 0c             	add    esp,0xc
  4150d3:	57                   	push   edi
  4150d4:	50                   	push   eax
  4150d5:	b9 78 16 51 00       	mov    ecx,0x511678
  4150da:	e8 a1 9c 03 00       	call   0x44ed80
  4150df:	85 c0                	test   eax,eax
  4150e1:	0f 84 c0 03 00 00    	je     0x4154a7
  4150e7:	b9 78 16 51 00       	mov    ecx,0x511678
  4150ec:	e8 6f 9c 03 00       	call   0x44ed60
  4150f1:	85 c0                	test   eax,eax
  4150f3:	0f 84 f0 00 00 00    	je     0x4151e9
  4150f9:	6a 40                	push   0x40
  4150fb:	e8 f0 ce 02 00       	call   0x441ff0
  415100:	8b f8                	mov    edi,eax
  415102:	83 c4 04             	add    esp,0x4
  415105:	8d 4f 04             	lea    ecx,[edi+0x4]
  415108:	51                   	push   ecx
  415109:	6a 01                	push   0x1
  41510b:	b9 78 16 51 00       	mov    ecx,0x511678
  415110:	e8 fb 9d 03 00       	call   0x44ef10
  415115:	57                   	push   edi
  415116:	6a 02                	push   0x2
  415118:	b9 78 16 51 00       	mov    ecx,0x511678
  41511d:	e8 2e 9f 03 00       	call   0x44f050
  415122:	6a 32                	push   0x32
  415124:	8d 57 0c             	lea    edx,[edi+0xc]
  415127:	52                   	push   edx
  415128:	6a 03                	push   0x3
  41512a:	b9 78 16 51 00       	mov    ecx,0x511678
  41512f:	e8 ec 9f 03 00       	call   0x44f120
  415134:	8d 5f 08             	lea    ebx,[edi+0x8]
  415137:	53                   	push   ebx
  415138:	6a 04                	push   0x4
  41513a:	b9 78 16 51 00       	mov    ecx,0x511678
  41513f:	e8 cc 9d 03 00       	call   0x44ef10
  415144:	83 3b 00             	cmp    DWORD PTR [ebx],0x0
  415147:	75 06                	jne    0x41514f
  415149:	c7 03 01 00 00 00    	mov    DWORD PTR [ebx],0x1


; ===== E. Traitement/equipement des objets =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0041526b <.text+0x1426b>:
  41526b:	e8 60 50 07 00       	call   0x48a2d0
  415270:	8b 17                	mov    edx,DWORD PTR [edi]
  415272:	83 c4 0c             	add    esp,0xc
  415275:	8b cf                	mov    ecx,edi
  415277:	25 ff ff 00 00       	and    eax,0xffff
  41527c:	50                   	push   eax
  41527d:	6a 03                	push   0x3
  41527f:	ff 52 18             	call   DWORD PTR [edx+0x18]
  415282:	85 c0                	test   eax,eax
  415284:	0f 84 36 01 00 00    	je     0x4153c0
  41528a:	8b cf                	mov    ecx,edi
  41528c:	e8 6f 64 07 00       	call   0x48b700
  415291:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  415294:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  415297:	50                   	push   eax
  415298:	8b cf                	mov    ecx,edi
  41529a:	e8 71 64 07 00       	call   0x48b710
  41529f:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  4152a2:	51                   	push   ecx
  4152a3:	8b cf                	mov    ecx,edi
  4152a5:	e8 56 71 03 00       	call   0x44c400
  4152aa:	8b 17                	mov    edx,DWORD PTR [edi]
  4152ac:	8d 45 e8             	lea    eax,[ebp-0x18]
  4152af:	50                   	push   eax
  4152b0:	6a 00                	push   0x0
  4152b2:	6a 00                	push   0x0
  4152b4:	6a 00                	push   0x0
  4152b6:	6a 00                	push   0x0
  4152b8:	6a 14                	push   0x14
  4152ba:	8b cf                	mov    ecx,edi
  4152bc:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
  4152c3:	ff 52 24             	call   DWORD PTR [edx+0x24]
  4152c6:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  4152c9:	33 c0                	xor    eax,eax
  4152cb:	85 c9                	test   ecx,ecx
  4152cd:	74 0d                	je     0x4152dc
  4152cf:	8b 91 38 01 00 00    	mov    edx,DWORD PTR [ecx+0x138]
  4152d5:	85 d2                	test   edx,edx
  4152d7:	7d 03                	jge    0x4152dc
  4152d9:	83 c8 ff             	or     eax,0xffffffff
  4152dc:	8b 17                	mov    edx,DWORD PTR [edi]
  4152de:	50                   	push   eax
  4152df:	6a 1b                	push   0x1b
  4152e1:	8b cf                	mov    ecx,edi
  4152e3:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4152e6:	8b ce                	mov    ecx,esi
  4152e8:	e8 13 64 07 00       	call   0x48b700
  4152ed:	50                   	push   eax
  4152ee:	68 78 16 51 00       	push   0x511678
  4152f3:	8b cf                	mov    ecx,edi
  4152f5:	e8 76 a0 07 00       	call   0x48f370
  4152fa:	b9 78 16 51 00       	mov    ecx,0x511678
  4152ff:	e8 6c 9a 03 00       	call   0x44ed70
  415304:	8b cf                	mov    ecx,edi
  415306:	e8 f5 71 03 00       	call   0x44c500
  41530b:	84 c0                	test   al,al
  41530d:	75 0b                	jne    0x41531a
  41530f:	8b 07                	mov    eax,DWORD PTR [edi]
  415311:	6a 01                	push   0x1
  415313:	6a 1b                	push   0x1b
  415315:	8b cf                	mov    ecx,edi
  415317:	ff 50 04             	call   DWORD PTR [eax+0x4]
  41531a:	8b ce                	mov    ecx,esi
  41531c:	e8 df 63 07 00       	call   0x48b700
  415321:	50                   	push   eax
  415322:	68 78 16 51 00       	push   0x511678
  415327:	8b cf                	mov    ecx,edi
  415329:	e8 42 9d 07 00       	call   0x48f070
  41532e:	b9 78 16 51 00       	mov    ecx,0x511678
  415333:	e8 38 9a 03 00       	call   0x44ed70
  415338:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
  41533b:	51                   	push   ecx
  41533c:	8b cf                	mov    ecx,edi
  41533e:	e8 cd 63 07 00       	call   0x48b710
  415343:	8a 03                	mov    al,BYTE PTR [ebx]
  415345:	84 c0                	test   al,al
  415347:	75 0a                	jne    0x415353
  415349:	57                   	push   edi
  41534a:	8b ce                	mov    ecx,esi
  41534c:	e8 cf b9 00 00       	call   0x420d20
  415351:	eb 77                	jmp    0x4153ca
  415353:	3c 10                	cmp    al,0x10
  415355:	77 73                	ja     0x4153ca
  415357:	25 ff 00 00 00       	and    eax,0xff
  41535c:	8d 50 ff             	lea    edx,[eax-0x1]


; ===== F. Requête et lecture des compétences =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00415550 <.text+0x14550>:
  415550:	8b ce                	mov    ecx,esi
  415552:	e8 a9 61 07 00       	call   0x48b700
  415557:	50                   	push   eax
  415558:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  41555b:	68 e8 19 50 00       	push   0x5019e8
  415560:	51                   	push   ecx
  415561:	e8 2e c5 0b 00       	call   0x4d1a94
  415566:	83 c4 0c             	add    esp,0xc
  415569:	68 d8 19 50 00       	push   0x5019d8
  41556e:	68 00 08 00 00       	push   0x800
  415573:	e8 c8 c7 05 00       	call   0x471d40
  415578:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  41557b:	83 c4 08             	add    esp,0x8
  41557e:	57                   	push   edi
  41557f:	52                   	push   edx
  415580:	b9 78 16 51 00       	mov    ecx,0x511678
  415585:	e8 f6 97 03 00       	call   0x44ed80
  41558a:	85 c0                	test   eax,eax
  41558c:	0f 84 4c 01 00 00    	je     0x4156de
  415592:	b9 78 16 51 00       	mov    ecx,0x511678
  415597:	e8 c4 97 03 00       	call   0x44ed60
  41559c:	85 c0                	test   eax,eax
  41559e:	0f 84 3a 01 00 00    	je     0x4156de
  4155a4:	66 8b 86 e0 01 00 00 	mov    ax,WORD PTR [esi+0x1e0]
  4155ab:	8d 4d dc             	lea    ecx,[ebp-0x24]
  4155ae:	51                   	push   ecx
  4155af:	6a 01                	push   0x1
  4155b1:	b9 78 16 51 00       	mov    ecx,0x511678
  4155b6:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
  4155b9:	89 7d d8             	mov    DWORD PTR [ebp-0x28],edi
  4155bc:	66 89 45 e0          	mov    WORD PTR [ebp-0x20],ax
  4155c0:	e8 2b 9a 03 00       	call   0x44eff0
  4155c5:	8d 55 d8             	lea    edx,[ebp-0x28]
  4155c8:	52                   	push   edx
  4155c9:	6a 02                	push   0x2
  4155cb:	b9 78 16 51 00       	mov    ecx,0x511678
  4155d0:	e8 1b 9a 03 00       	call   0x44eff0
  4155d5:	8d 4d e8             	lea    ecx,[ebp-0x18]
  4155d8:	66 c7 86 e0 01 00 00 	mov    WORD PTR [esi+0x1e0],0xffff
  4155df:	ff ff 
  4155e1:	e8 78 c4 0b 00       	call   0x4d1a5e
  4155e6:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  4155e9:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  4155ec:	8d 45 e8             	lea    eax,[ebp-0x18]
  4155ef:	50                   	push   eax
  4155f0:	57                   	push   edi
  4155f1:	51                   	push   ecx
  4155f2:	81 e2 ff ff 00 00    	and    edx,0xffff
  4155f8:	52                   	push   edx
  4155f9:	8b ce                	mov    ecx,esi
  4155fb:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  4155ff:	e8 bc 8a 00 00       	call   0x41e0c0


; ===== G. Compétence par défaut 35 / 15 points =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004156de <.text+0x146de>:
  4156de:	8b 16                	mov    edx,DWORD PTR [esi]
  4156e0:	6a 23                	push   0x23
  4156e2:	8b ce                	mov    ecx,esi
  4156e4:	ff 92 70 01 00 00    	call   DWORD PTR [edx+0x170]
  4156ea:	3b c7                	cmp    eax,edi
  4156ec:	0f 85 d3 00 00 00    	jne    0x4157c5
  4156f2:	8b 1e                	mov    ebx,DWORD PTR [esi]
  4156f4:	e8 67 83 02 00       	call   0x43da60
  4156f9:	8b ce                	mov    ecx,esi
  4156fb:	50                   	push   eax
  4156fc:	8d 45 e0             	lea    eax,[ebp-0x20]
  4156ff:	50                   	push   eax
  415700:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  415703:	8b 18                	mov    ebx,DWORD PTR [eax]
  415705:	8b ce                	mov    ecx,esi
  415707:	c6 45 fc 09          	mov    BYTE PTR [ebp-0x4],0x9
  41570b:	e8 f0 5f 07 00       	call   0x48b700
  415710:	50                   	push   eax
  415711:	53                   	push   ebx
  415712:	6a 23                	push   0x23
  415714:	68 f8 18 50 00       	push   0x5018f8
  415719:	68 00 02 00 00       	push   0x200
  41571e:	e8 1d c6 05 00       	call   0x471d40
  415723:	83 c4 14             	add    esp,0x14
  415726:	8d 4d e0             	lea    ecx,[ebp-0x20]
  415729:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  41572d:	e8 0e c3 0b 00       	call   0x4d1a40
  415732:	8d 4d e8             	lea    ecx,[ebp-0x18]
  415735:	e8 24 c3 0b 00       	call   0x4d1a5e
  41573a:	66 8b 8e e0 01 00 00 	mov    cx,WORD PTR [esi+0x1e0]
  415741:	8d 55 e8             	lea    edx,[ebp-0x18]
  415744:	52                   	push   edx
  415745:	57                   	push   edi
  415746:	6a 0f                	push   0xf
  415748:	66 89 4d 90          	mov    WORD PTR [ebp-0x70],cx
  41574c:	6a 23                	push   0x23
  41574e:	8b ce                	mov    ecx,esi
  415750:	c6 45 fc 0a          	mov    BYTE PTR [ebp-0x4],0xa
  415754:	66 c7 86 e0 01 00 00 	mov    WORD PTR [esi+0x1e0],0xffff
  41575b:	ff ff 
  41575d:	e8 5e 89 00 00       	call   0x41e0c0
  415762:	3b c7                	cmp    eax,edi
  415764:	74 09                	je     0x41576f
  415766:	c7 40 04 0f 00 00 00 	mov    DWORD PTR [eax+0x4],0xf
  41576d:	eb 3f                	jmp    0x4157ae
  41576f:	8b 1e                	mov    ebx,DWORD PTR [esi]
  415771:	e8                   	.byte 0xe8


; ===== H. Requête et lecture des sorts =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00415938 <.text+0x14938>:
  415938:	8b ce                	mov    ecx,esi
  41593a:	89 be 00 04 00 00    	mov    DWORD PTR [esi+0x400],edi
  415940:	e8 bb 5d 07 00       	call   0x48b700
  415945:	50                   	push   eax
  415946:	8d 55 e4             	lea    edx,[ebp-0x1c]
  415949:	68 84 18 50 00       	push   0x501884
  41594e:	52                   	push   edx
  41594f:	e8 40 c1 0b 00       	call   0x4d1a94
  415954:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  415957:	83 c4 0c             	add    esp,0xc
  41595a:	57                   	push   edi
  41595b:	50                   	push   eax
  41595c:	b9 78 16 51 00       	mov    ecx,0x511678
  415961:	e8 1a 94 03 00       	call   0x44ed80
  415966:	85 c0                	test   eax,eax
  415968:	0f 84 fd 00 00 00    	je     0x415a6b
  41596e:	b9 78 16 51 00       	mov    ecx,0x511678
  415973:	e8 e8 93 03 00       	call   0x44ed60
  415978:	85 c0                	test   eax,eax
  41597a:	0f 84 eb 00 00 00    	je     0x415a6b
  415980:	6a 08                	push   0x8
  415982:	e8 69 c6 02 00       	call   0x441ff0
  415987:	8b d8                	mov    ebx,eax
  415989:	33 c9                	xor    ecx,ecx
  41598b:	83 c4 04             	add    esp,0x4
  41598e:	8b d3                	mov    edx,ebx
  415990:	89 0a                	mov    DWORD PTR [edx],ecx
  415992:	8d 45 e8             	lea    eax,[ebp-0x18]
  415995:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  415998:	50                   	push   eax
  415999:	6a 01                	push   0x1
  41599b:	b9 78 16 51 00       	mov    ecx,0x511678
  4159a0:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
  4159a3:	e8 68 95 03 00       	call   0x44ef10
  4159a8:	89 7b 04             	mov    DWORD PTR [ebx+0x4],edi
  4159ab:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  4159ae:	89 0b                	mov    DWORD PTR [ebx],ecx
  4159b0:	8b 86 e8 03 00 00    	mov    eax,DWORD PTR [esi+0x3e8]
  4159b6:	8b 96 f8 03 00 00    	mov    edx,DWORD PTR [esi+0x3f8]
  4159bc:	42                   	inc    edx
  4159bd:	3b c7                	cmp    eax,edi
  4159bf:	89 86 e0 03 00 00    	mov    DWORD PTR [esi+0x3e0],eax
  4159c5:	89 be 00 04 00 00    	mov    DWORD PTR [esi+0x400],edi
  4159cb:	c6 86 f4 03 00 00 08 	mov    BYTE PTR [esi+0x3f4],0x8
  4159d2:	89 86 ec 03 00 00    	mov    DWORD PTR [esi+0x3ec],eax
  4159d8:	89                   	.byte 0x89
  4159d9:	96                   	xchg   esi,eax
  4159da:	f8                   	clc
  4159db:	03                   	.byte 0x3


; ===== I. Transitions vers LoadEffects/LoadBoosts et retour =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00415a55 <.text+0x14a55>:
  415a55:	00 89 59 08 b9 78    	add    BYTE PTR [ecx+0x78b90859],cl
  415a5b:	16                   	push   ss
  415a5c:	51                   	push   ecx
  415a5d:	00 e8                	add    al,ch
  415a5f:	fd                   	std
  415a60:	92                   	xchg   edx,eax
  415a61:	03 00                	add    eax,DWORD PTR [eax]
  415a63:	85 c0                	test   eax,eax
  415a65:	0f 85 15 ff ff ff    	jne    0x415980
  415a6b:	b9 78 16 51 00       	mov    ecx,0x511678
  415a70:	e8 fb 92 03 00       	call   0x44ed70
  415a75:	8b ce                	mov    ecx,esi
  415a77:	e8 84 5c 07 00       	call   0x48b700
  415a7c:	50                   	push   eax
  415a7d:	68 78 16 51 00       	push   0x511678
  415a82:	8b ce                	mov    ecx,esi
  415a84:	e8 17 8e 07 00       	call   0x48e8a0
  415a89:	b9 78 16 51 00       	mov    ecx,0x511678
  415a8e:	e8 dd 92 03 00       	call   0x44ed70
  415a93:	8b ce                	mov    ecx,esi
  415a95:	e8 66 5c 07 00       	call   0x48b700
  415a9a:	50                   	push   eax
  415a9b:	68 78 16 51 00       	push   0x511678
  415aa0:	8b ce                	mov    ecx,esi
  415aa2:	e8 c9 95 07 00       	call   0x48f070
  415aa7:	68 6c 18 50 00       	push   0x50186c
  415aac:	68 00 08 00 00       	push   0x800
  415ab1:	e8 8a c2 05 00       	call   0x471d40
  415ab6:	83 c4 08             	add    esp,0x8
  415ab9:	b9 78 16 51 00       	mov    ecx,0x511678
  415abe:	e8 ad 92 03 00       	call   0x44ed70
  415ac3:	b9 78 16 51 00       	mov    ecx,0x511678
  415ac8:	e8 03 8f 03 00       	call   0x44e9d0
  415acd:	8d 8d 5c ff ff ff    	lea    ecx,[ebp-0xa4]
  415ad3:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  415ad7:	e8 a4 03 07 00       	call   0x485e80
  415adc:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  415adf:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  415ae3:	e8 58 bf 0b 00       	call   0x4d1a40
  415ae8:	8d 4d 08             	lea    ecx,[ebp+0x8]
  415aeb:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  415af2:	e8 49 bf 0b 00       	call   0x4d1a40
  415af7:	33 c0                	xor    eax,eax
  415af9:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  415afc:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  415b03:	5f                   	pop    edi
  415b04:	5e                   	pop    esi
  415b05:	5b                   	pop    ebx
  415b06:	8b e5                	mov    esp,ebp
  415b08:	5d                   	pop    ebp
  415b09:	c2                   	.byte 0xc2


; ===== J. Retours alternatifs 10 et 6 =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00415b0c <.text+0x14b0c>:
  415b0c:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  415b0f:	8d 55 e0             	lea    edx,[ebp-0x20]
  415b12:	52                   	push   edx
  415b13:	e8 f8 12 04 00       	call   0x456e10
  415b18:	8d 4d e0             	lea    ecx,[ebp-0x20]
  415b1b:	e8 20 bf 0b 00       	call   0x4d1a40
  415b20:	68 54 18 50 00       	push   0x501854
  415b25:	68 00 08 00 00       	push   0x800
  415b2a:	e8 11 c2 05 00       	call   0x471d40
  415b2f:	83 c4 08             	add    esp,0x8
  415b32:	b9 78 16 51 00       	mov    ecx,0x511678
  415b37:	e8 34 92 03 00       	call   0x44ed70
  415b3c:	b9 78 16 51 00       	mov    ecx,0x511678
  415b41:	e8 8a 8e 03 00       	call   0x44e9d0
  415b46:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  415b49:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  415b4d:	e8 ee be 0b 00       	call   0x4d1a40
  415b52:	8d 4d 08             	lea    ecx,[ebp+0x8]
  415b55:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  415b5c:	e8 df be 0b 00       	call   0x4d1a40
  415b61:	b8 0a 00 00 00       	mov    eax,0xa
  415b66:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  415b69:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  415b70:	5f                   	pop    edi
  415b71:	5e                   	pop    esi
  415b72:	5b                   	pop    ebx
  415b73:	8b e5                	mov    esp,ebp
  415b75:	5d                   	pop    ebp
  415b76:	c2 04 00             	ret    0x4
  415b79:	b9 78 16 51 00       	mov    ecx,0x511678
  415b7e:	e8 ed 91 03 00       	call   0x44ed70
  415b83:	b9 78 16 51 00       	mov    ecx,0x511678
  415b88:	e8 43 8e 03 00       	call   0x44e9d0
  415b8d:	68 3c 18 50 00       	push   0x50183c
  415b92:	68 00 08 00 00       	push   0x800
  415b97:	e8 a4 c1 05 00       	call   0x471d40
  415b9c:	83 c4 08             	add    esp,0x8
  415b9f:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  415ba2:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  415ba6:	e8 95 be 0b 00       	call   0x4d1a40
  415bab:	8d 4d 08             	lea    ecx,[ebp+0x8]
  415bae:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  415bb5:	e8 86 be 0b 00       	call   0x4d1a40
  415bba:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  415bbd:	5f                   	pop    edi
  415bbe:	5e                   	pop    esi
  415bbf:	b8 06 00 00 00       	mov    eax,0x6
  415bc4:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  415bcb:	5b                   	pop    ebx
  415bcc:	8b e5                	mov    esp,ebp
  415bce:	5d                   	pop    ebp
  415bcf:	c2                   	.byte 0xc2

