; PASSE 49 — Combat magique monstre: succes du declenchement et notification distincte
; Serveur original SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Chaque octet x86 est recoupe directement avec la section .text de T4C Server(1).exe.
; Les plages suivent des blocs fonctionnels identifies; les annotations ne substituent pas les appels indirects.

; MONSTER_SPELL_ATTACK::Attack — 0x432EC0..0x433014 exclu
; Compare GetRound au seuil; distingue cible nulle/non nulle dans le journal; appelle SpellMessageHandler::ActivateSpell a 0x432FF7. Sans formule de resistance dans cette routine.
  432ec0:	55                   	push   ebp
  432ec1:	8b ec                	mov    ebp,esp
  432ec3:	6a ff                	push   0xffffffff
  432ec5:	68 d8 51 4d 00       	push   0x4d51d8
  432eca:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  432ed0:	50                   	push   eax
  432ed1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  432ed8:	83 ec 24             	sub    esp,0x24
  432edb:	53                   	push   ebx
  432edc:	56                   	push   esi
  432edd:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  432ee0:	8b 06                	mov    eax,DWORD PTR [esi]
  432ee2:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  432ee5:	57                   	push   edi
  432ee6:	8d 4d d0             	lea    ecx,[ebp-0x30]
  432ee9:	51                   	push   ecx
  432eea:	8b ce                	mov    ecx,esi
  432eec:	ff 50 70             	call   DWORD PTR [eax+0x70]
  432eef:	e8 9c f3 03 00       	call   0x472290
  432ef4:	39 45 dc             	cmp    DWORD PTR [ebp-0x24],eax
  432ef7:	0f 87 02 01 00 00    	ja     0x432fff
  432efd:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  432f00:	85 ff                	test   edi,edi
  432f02:	74 72                	je     0x432f76
  432f04:	8b 1f                	mov    ebx,DWORD PTR [edi]
  432f06:	e8 55 ab 00 00       	call   0x43da60
  432f0b:	8d 55 ec             	lea    edx,[ebp-0x14]
  432f0e:	8b cf                	mov    ecx,edi
  432f10:	50                   	push   eax
  432f11:	52                   	push   edx
  432f12:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  432f15:	8b 00                	mov    eax,DWORD PTR [eax]
  432f17:	8b 1e                	mov    ebx,DWORD PTR [esi]
  432f19:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  432f20:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  432f23:	e8 38 ab 00 00       	call   0x43da60
  432f28:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  432f2b:	50                   	push   eax
  432f2c:	51                   	push   ecx
  432f2d:	8b ce                	mov    ecx,esi
  432f2f:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  432f32:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
  432f35:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  432f38:	8b 00                	mov    eax,DWORD PTR [eax]
  432f3a:	33 c9                	xor    ecx,ecx
  432f3c:	66 8b 8b 88 00 00 00 	mov    cx,WORD PTR [ebx+0x88]
  432f43:	57                   	push   edi
  432f44:	52                   	push   edx
  432f45:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  432f49:	51                   	push   ecx
  432f4a:	56                   	push   esi
  432f4b:	50                   	push   eax
  432f4c:	68 9c 2e 50 00       	push   0x502e9c
  432f51:	68 00 08 00 00       	push   0x800
  432f56:	e8 e5 ed 03 00       	call   0x471d40
  432f5b:	83 c4 1c             	add    esp,0x1c
  432f5e:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  432f61:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  432f65:	e8 d6 ea 09 00       	call   0x4d1a40
  432f6a:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  432f71:	8d 4d ec             	lea    ecx,[ebp-0x14]
  432f74:	eb 44                	jmp    0x432fba
  432f76:	8b 1e                	mov    ebx,DWORD PTR [esi]
  432f78:	e8 e3 aa 00 00       	call   0x43da60
  432f7d:	8d 55 08             	lea    edx,[ebp+0x8]
  432f80:	8b ce                	mov    ecx,esi
  432f82:	50                   	push   eax
  432f83:	52                   	push   edx
  432f84:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  432f87:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
  432f8a:	8b 00                	mov    eax,DWORD PTR [eax]
  432f8c:	33 c9                	xor    ecx,ecx
  432f8e:	66 8b 8b 88 00 00 00 	mov    cx,WORD PTR [ebx+0x88]
  432f95:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  432f9c:	51                   	push   ecx
  432f9d:	50                   	push   eax
  432f9e:	68 68 2e 50 00       	push   0x502e68
  432fa3:	68 00 08 00 00       	push   0x800
  432fa8:	e8 93 ed 03 00       	call   0x471d40
  432fad:	83 c4 10             	add    esp,0x10
  432fb0:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  432fb7:	8d 4d 08             	lea    ecx,[ebp+0x8]
  432fba:	e8 81 ea 09 00       	call   0x4d1a40
  432fbf:	8b 16                	mov    edx,DWORD PTR [esi]
  432fc1:	8b ce                	mov    ecx,esi
  432fc3:	ff 92 d8 01 00 00    	call   DWORD PTR [edx+0x1d8]
  432fc9:	8b 07                	mov    eax,DWORD PTR [edi]
  432fcb:	8d 4d e0             	lea    ecx,[ebp-0x20]
  432fce:	51                   	push   ecx
  432fcf:	8b cf                	mov    ecx,edi
  432fd1:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  432fd4:	8b 08                	mov    ecx,DWORD PTR [eax]
  432fd6:	83 ec 0c             	sub    esp,0xc
  432fd9:	8b d4                	mov    edx,esp
  432fdb:	89 0a                	mov    DWORD PTR [edx],ecx
  432fdd:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  432fe0:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  432fe3:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  432fe6:	33 c9                	xor    ecx,ecx
  432fe8:	66 8b 8b 88 00 00 00 	mov    cx,WORD PTR [ebx+0x88]
  432fef:	57                   	push   edi
  432ff0:	6a 00                	push   0x0
  432ff2:	56                   	push   esi
  432ff3:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  432ff6:	51                   	push   ecx
  432ff7:	e8 64 e5 02 00       	call   0x461560
  432ffc:	83 c4 1c             	add    esp,0x1c
  432fff:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  433002:	5f                   	pop    edi
  433003:	5e                   	pop    esi
  433004:	33 c0                	xor    eax,eax
  433006:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  43300d:	5b                   	pop    ebx
  43300e:	8b e5                	mov    esp,ebp
  433010:	5d                   	pop    ebp
  433011:	c2 08 00             	ret    0x8

; Routine voisine: notification 0x44 — 0x433020..0x43310A exclu
; Methode interne voisine distincte; SendUnitMessage(20) puis TFCPacket(0x44) avec ID et plusieurs words/fields de structure.
  433020:	55                   	push   ebp
  433021:	8b ec                	mov    ebp,esp
  433023:	51                   	push   ecx
  433024:	57                   	push   edi
  433025:	8b f9                	mov    edi,ecx
  433027:	8b 07                	mov    eax,DWORD PTR [edi]
  433029:	8d 4d fc             	lea    ecx,[ebp-0x4]
  43302c:	51                   	push   ecx
  43302d:	6a 00                	push   0x0
  43302f:	6a 00                	push   0x0
  433031:	6a 00                	push   0x0
  433033:	57                   	push   edi
  433034:	6a 14                	push   0x14
  433036:	8b cf                	mov    ecx,edi
  433038:	ff 50 24             	call   DWORD PTR [eax+0x24]
  43303b:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  43303e:	85 c0                	test   eax,eax
  433040:	0f 84 c4 00 00 00    	je     0x43310a
  433046:	56                   	push   esi
  433047:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  43304a:	6a 44                	push   0x44
  43304c:	8b ce                	mov    ecx,esi
  43304e:	e8 fd 30 05 00       	call   0x486150
  433053:	8b cf                	mov    ecx,edi
  433055:	e8 a6 86 05 00       	call   0x48b700
  43305a:	50                   	push   eax
  43305b:	8b ce                	mov    ecx,esi
  43305d:	e8 8e 31 05 00       	call   0x4861f0
  433062:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  433065:	33 c0                	xor    eax,eax
  433067:	66 8b 82 0c 01 00 00 	mov    ax,WORD PTR [edx+0x10c]
  43306e:	8b ce                	mov    ecx,esi
  433070:	50                   	push   eax
  433071:	e8 da 30 05 00       	call   0x486150
  433076:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  433079:	33 d2                	xor    edx,edx
  43307b:	66 8b 91 0e 01 00 00 	mov    dx,WORD PTR [ecx+0x10e]
  433082:	8b ce                	mov    ecx,esi
  433084:	52                   	push   edx
  433085:	e8 c6 30 05 00       	call   0x486150
  43308a:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  43308d:	33 c9                	xor    ecx,ecx
  43308f:	66 8b 88 10 01 00 00 	mov    cx,WORD PTR [eax+0x110]
  433096:	51                   	push   ecx
  433097:	8b ce                	mov    ecx,esi
  433099:	e8 b2 30 05 00       	call   0x486150
  43309e:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  4330a1:	33 c0                	xor    eax,eax
  4330a3:	66 8b 82 12 01 00 00 	mov    ax,WORD PTR [edx+0x112]
  4330aa:	8b ce                	mov    ecx,esi
  4330ac:	50                   	push   eax
  4330ad:	e8 9e 30 05 00       	call   0x486150
  4330b2:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  4330b5:	33 d2                	xor    edx,edx
  4330b7:	66 8b 91 14 01 00 00 	mov    dx,WORD PTR [ecx+0x114]
  4330be:	8b ce                	mov    ecx,esi
  4330c0:	52                   	push   edx
  4330c1:	e8 8a 30 05 00       	call   0x486150
  4330c6:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  4330c9:	33 c9                	xor    ecx,ecx
  4330cb:	66 8b 88 16 01 00 00 	mov    cx,WORD PTR [eax+0x116]
  4330d2:	51                   	push   ecx
  4330d3:	8b ce                	mov    ecx,esi
  4330d5:	e8 76 30 05 00       	call   0x486150
  4330da:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  4330dd:	33 c0                	xor    eax,eax
  4330df:	66 8b 82 18 01 00 00 	mov    ax,WORD PTR [edx+0x118]
  4330e6:	8b ce                	mov    ecx,esi
  4330e8:	50                   	push   eax
  4330e9:	e8 62 30 05 00       	call   0x486150
  4330ee:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  4330f1:	33 d2                	xor    edx,edx
  4330f3:	66 8b 91 1a 01 00 00 	mov    dx,WORD PTR [ecx+0x11a]
  4330fa:	8b ce                	mov    ecx,esi
  4330fc:	52                   	push   edx
  4330fd:	e8 4e 30 05 00       	call   0x486150
  433102:	5e                   	pop    esi
  433103:	5f                   	pop    edi
  433104:	8b e5                	mov    esp,ebp
  433106:	5d                   	pop    ebp
  433107:	c2 04 00             	ret    0x4
