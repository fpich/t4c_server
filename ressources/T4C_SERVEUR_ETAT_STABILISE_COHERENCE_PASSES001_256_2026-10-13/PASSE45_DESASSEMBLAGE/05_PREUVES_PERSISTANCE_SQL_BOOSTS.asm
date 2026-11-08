; T4C Server.exe, passe 45, SHA256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Synthèse requêtes SQL de boosts, chargement, reconstruction et helper de liste
; Extraits analysés et vérifiés sur le PE : données de couverture, pas une preuve d exécution dynamique.

; Unit::SaveBoosts : requêtes INSERT | [0x48eeb0, 0x48f066[
  48eeb0:	55                   	push   ebp
  48eeb1:	8b ec                	mov    ebp,esp
  48eeb3:	6a ff                	push   0xffffffff
  48eeb5:	68 63 a8 4d 00       	push   0x4da863
  48eeba:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48eec0:	50                   	push   eax
  48eec1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48eec8:	83 ec 08             	sub    esp,0x8
  48eecb:	53                   	push   ebx
  48eecc:	8b d9                	mov    ebx,ecx
  48eece:	56                   	push   esi
  48eecf:	8d 4d f0             	lea    ecx,[ebp-0x10]
  48eed2:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  48eed5:	e8 84 2b 04 00       	call   0x4d1a5e
  48eeda:	8b 8b f8 00 00 00    	mov    ecx,DWORD PTR [ebx+0xf8]
  48eee0:	33 f6                	xor    esi,esi
  48eee2:	3b ce                	cmp    ecx,esi
  48eee4:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  48eee7:	0f 84 57 01 00 00    	je     0x48f044
  48eeed:	8b 01                	mov    eax,DWORD PTR [ecx]
  48eeef:	57                   	push   edi
  48eef0:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48eef3:	8b 83 f8 00 00 00    	mov    eax,DWORD PTR [ebx+0xf8]
  48eef9:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48eefc:	89 70 40             	mov    DWORD PTR [eax+0x40],esi
  48eeff:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  48ef02:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48ef05:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48ef09:	8b 83 f8 00 00 00    	mov    eax,DWORD PTR [ebx+0xf8]
  48ef0f:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  48ef12:	85 c9                	test   ecx,ecx
  48ef14:	74 0a                	je     0x48ef20
  48ef16:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48ef19:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48ef1b:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48ef1e:	eb 07                	jmp    0x48ef27
  48ef20:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48ef27:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  48ef2a:	85 c9                	test   ecx,ecx
  48ef2c:	0f 84 f4 00 00 00    	je     0x48f026
  48ef32:	8b 93 f8 00 00 00    	mov    edx,DWORD PTR [ebx+0xf8]
  48ef38:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  48ef3b:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  48ef3e:	8b 5b 78             	mov    ebx,DWORD PTR [ebx+0x78]
  48ef41:	8d 4f 08             	lea    ecx,[edi+0x8]
  48ef44:	e8 97 02 f8 ff       	call   0x40f1e0
  48ef49:	8b 17                	mov    edx,DWORD PTR [edi]
  48ef4b:	33 c9                	xor    ecx,ecx
  48ef4d:	66 8b 4f 04          	mov    cx,WORD PTR [edi+0x4]
  48ef51:	50                   	push   eax
  48ef52:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  48ef55:	51                   	push   ecx
  48ef56:	52                   	push   edx
  48ef57:	50                   	push   eax
  48ef58:	53                   	push   ebx
  48ef59:	8d 4d f0             	lea    ecx,[ebp-0x10]
  48ef5c:	68 f8 e0 50 00       	push   0x50e0f8
  48ef61:	51                   	push   ecx
  48ef62:	e8 2d 2b 04 00       	call   0x4d1a94
  48ef67:	6a 08                	push   0x8
  48ef69:	e8 82 30 fb ff       	call   0x441ff0
  48ef6e:	8b f8                	mov    edi,eax
  48ef70:	83 c4 20             	add    esp,0x20
  48ef73:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
  48ef76:	33 db                	xor    ebx,ebx
  48ef78:	3b fb                	cmp    edi,ebx
  48ef7a:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  48ef7e:	74 0a                	je     0x48ef8a
  48ef80:	8d 4f 04             	lea    ecx,[edi+0x4]
  48ef83:	e8 d6 2a 04 00       	call   0x4d1a5e
  48ef88:	eb 02                	jmp    0x48ef8c
  48ef8a:	33 ff                	xor    edi,edi
  48ef8c:	8d 55 f0             	lea    edx,[ebp-0x10]
  48ef8f:	52                   	push   edx
  48ef90:	8d 4f 04             	lea    ecx,[edi+0x4]
  48ef93:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  48ef97:	e8 aa 2a 04 00       	call   0x4d1a46
  48ef9c:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  48ef9f:	8b 56 38             	mov    edx,DWORD PTR [esi+0x38]
  48efa2:	42                   	inc    edx
  48efa3:	3b c3                	cmp    eax,ebx
  48efa5:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48efa8:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  48efab:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  48efaf:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  48efb2:	89 56 38             	mov    DWORD PTR [esi+0x38],edx
  48efb5:	6a 0c                	push   0xc
  48efb7:	75 34                	jne    0x48efed
  48efb9:	e8 32 30 fb ff       	call   0x441ff0
  48efbe:	83 c4 04             	add    esp,0x4
  48efc1:	3b c3                	cmp    eax,ebx
  48efc3:	74 07                	je     0x48efcc
  48efc5:	89 18                	mov    DWORD PTR [eax],ebx
  48efc7:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48efca:	eb 02                	jmp    0x48efce
  48efcc:	33 c0                	xor    eax,eax
  48efce:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48efd1:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48efd4:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  48efd7:	89 18                	mov    DWORD PTR [eax],ebx
  48efd9:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48efdc:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48efdf:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48efe2:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
  48efe5:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  48efe8:	e9 1c ff ff ff       	jmp    0x48ef09
  48efed:	e8 fe 2f fb ff       	call   0x441ff0
  48eff2:	83 c4 04             	add    esp,0x4
  48eff5:	3b c3                	cmp    eax,ebx
  48eff7:	74 07                	je     0x48f000
  48eff9:	89 18                	mov    DWORD PTR [eax],ebx
  48effb:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48effe:	eb 02                	jmp    0x48f002
  48f000:	33 c0                	xor    eax,eax
  48f002:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48f005:	89 01                	mov    DWORD PTR [ecx],eax
  48f007:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  48f00a:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48f00d:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48f010:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  48f013:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48f016:	89 18                	mov    DWORD PTR [eax],ebx
  48f018:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48f01b:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
  48f01e:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  48f021:	e9 e3 fe ff ff       	jmp    0x48ef09
  48f026:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  48f029:	85 c9                	test   ecx,ecx
  48f02b:	5f                   	pop    edi
  48f02c:	74 04                	je     0x48f032
  48f02e:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48f032:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  48f039:	8b 8b f8 00 00 00    	mov    ecx,DWORD PTR [ebx+0xf8]
  48f03f:	8b 11                	mov    edx,DWORD PTR [ecx]
  48f041:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48f044:	8d 4d f0             	lea    ecx,[ebp-0x10]
  48f047:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48f04e:	e8 ed 29 04 00       	call   0x4d1a40
  48f053:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48f056:	5e                   	pop    esi
  48f057:	33 c0                	xor    eax,eax
  48f059:	5b                   	pop    ebx
  48f05a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48f061:	8b e5                	mov    esp,ebp
  48f063:	5d                   	pop    ebp
  48f064:	c2                   	.byte 0xc2
  48f065:	08                   	.byte 0x8

; Unit::LoadBoosts : SELECT puis reconstruction | [0x48f070, 0x48f1cb[
  48f070:	55                   	push   ebp
  48f071:	8b ec                	mov    ebp,esp
  48f073:	6a ff                	push   0xffffffff
  48f075:	68 80 a8 4d 00       	push   0x4da880
  48f07a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48f080:	50                   	push   eax
  48f081:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48f088:	81 ec 10 01 00 00    	sub    esp,0x110
  48f08e:	53                   	push   ebx
  48f08f:	56                   	push   esi
  48f090:	57                   	push   edi
  48f091:	8b f9                	mov    edi,ecx
  48f093:	8d 4d f0             	lea    ecx,[ebp-0x10]
  48f096:	e8 c3 29 04 00       	call   0x4d1a5e
  48f09b:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48f09e:	8b 47 78             	mov    eax,DWORD PTR [edi+0x78]
  48f0a1:	51                   	push   ecx
  48f0a2:	50                   	push   eax
  48f0a3:	8d 55 f0             	lea    edx,[ebp-0x10]
  48f0a6:	68 50 e1 50 00       	push   0x50e150
  48f0ab:	33 db                	xor    ebx,ebx
  48f0ad:	52                   	push   edx
  48f0ae:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  48f0b1:	e8 de 29 04 00       	call   0x4d1a94
  48f0b6:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48f0bc:	8b 01                	mov    eax,DWORD PTR [ecx]
  48f0be:	83 c4 10             	add    esp,0x10
  48f0c1:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48f0c4:	8b b7 f8 00 00 00    	mov    esi,DWORD PTR [edi+0xf8]
  48f0ca:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  48f0cd:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  48f0d0:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  48f0d3:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  48f0d7:	39 5e 40             	cmp    DWORD PTR [esi+0x40],ebx
  48f0da:	74 0a                	je     0x48f0e6
  48f0dc:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48f0df:	8b 02                	mov    eax,DWORD PTR [edx]
  48f0e1:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48f0e4:	eb 07                	jmp    0x48f0ed
  48f0e6:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  48f0ed:	39 5e 20             	cmp    DWORD PTR [esi+0x20],ebx
  48f0f0:	74 09                	je     0x48f0fb
  48f0f2:	8b ce                	mov    ecx,esi
  48f0f4:	e8 f7 11 00 00       	call   0x4902f0
  48f0f9:	eb dc                	jmp    0x48f0d7
  48f0fb:	39 5e 40             	cmp    DWORD PTR [esi+0x40],ebx
  48f0fe:	74 04                	je     0x48f104
  48f100:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  48f104:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  48f107:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48f10d:	8b 11                	mov    edx,DWORD PTR [ecx]
  48f10f:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48f112:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  48f115:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  48f118:	53                   	push   ebx
  48f119:	50                   	push   eax
  48f11a:	8b ce                	mov    ecx,esi
  48f11c:	e8 5f fc fb ff       	call   0x44ed80
  48f121:	85 c0                	test   eax,eax
  48f123:	0f 84 80 00 00 00    	je     0x48f1a9
  48f129:	8b ce                	mov    ecx,esi
  48f12b:	e8 30 fc fb ff       	call   0x44ed60
  48f130:	85 c0                	test   eax,eax
  48f132:	74 75                	je     0x48f1a9
  48f134:	81 c7 a0 00 00 00    	add    edi,0xa0
  48f13a:	8d 4d ec             	lea    ecx,[ebp-0x14]
  48f13d:	e8 1c 29 04 00       	call   0x4d1a5e
  48f142:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  48f145:	51                   	push   ecx
  48f146:	6a 01                	push   0x1
  48f148:	8b ce                	mov    ecx,esi
  48f14a:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  48f14e:	e8 bd fd fb ff       	call   0x44ef10
  48f153:	8d 55 e8             	lea    edx,[ebp-0x18]
  48f156:	52                   	push   edx
  48f157:	6a 02                	push   0x2
  48f159:	8b ce                	mov    ecx,esi
  48f15b:	e8 90 fe fb ff       	call   0x44eff0
  48f160:	68 00 01 00 00       	push   0x100
  48f165:	8d 85 e4 fe ff ff    	lea    eax,[ebp-0x11c]
  48f16b:	50                   	push   eax
  48f16c:	6a 03                	push   0x3
  48f16e:	8b ce                	mov    ecx,esi
  48f170:	e8 ab ff fb ff       	call   0x44f120
  48f175:	8d 8d e4 fe ff ff    	lea    ecx,[ebp-0x11c]
  48f17b:	51                   	push   ecx
  48f17c:	8d 4d ec             	lea    ecx,[ebp-0x14]
  48f17f:	e8 d4 28 04 00       	call   0x4d1a58
  48f184:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  48f187:	8d 55 e4             	lea    edx,[ebp-0x1c]
  48f18a:	52                   	push   edx
  48f18b:	50                   	push   eax
  48f18c:	8b cf                	mov    ecx,edi
  48f18e:	e8 ed 0d 00 00       	call   0x48ff80
  48f193:	8d 4d ec             	lea    ecx,[ebp-0x14]
  48f196:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  48f199:	e8 a2 28 04 00       	call   0x4d1a40
  48f19e:	8b ce                	mov    ecx,esi
  48f1a0:	e8 bb fb fb ff       	call   0x44ed60
  48f1a5:	85 c0                	test   eax,eax
  48f1a7:	75 91                	jne    0x48f13a
  48f1a9:	8d 4d f0             	lea    ecx,[ebp-0x10]
  48f1ac:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48f1b3:	e8 88 28 04 00       	call   0x4d1a40
  48f1b8:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48f1bb:	5f                   	pop    edi
  48f1bc:	5e                   	pop    esi
  48f1bd:	5b                   	pop    ebx
  48f1be:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48f1c5:	8b e5                	mov    esp,ebp
  48f1c7:	5d                   	pop    ebp
  48f1c8:	c2 08 00             	ret    0x8

; Conteneur interne : insertion et copie structurelle | [0x48ff80, 0x4900a3[
  48ff80:	55                   	push   ebp
  48ff81:	8b ec                	mov    ebp,esp
  48ff83:	6a ff                	push   0xffffffff
  48ff85:	68 6a a9 4d 00       	push   0x4da96a
  48ff8a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48ff90:	50                   	push   eax
  48ff91:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48ff98:	83 ec 40             	sub    esp,0x40
  48ff9b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  48ff9e:	53                   	push   ebx
  48ff9f:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
  48ffa2:	56                   	push   esi
  48ffa3:	57                   	push   edi
  48ffa4:	8b f9                	mov    edi,ecx
  48ffa6:	89 65 f0             	mov    DWORD PTR [ebp-0x10],esp
  48ffa9:	6a 14                	push   0x14
  48ffab:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48ffae:	e8 3d 20 fb ff       	call   0x441ff0
  48ffb3:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  48ffb6:	8b f0                	mov    esi,eax
  48ffb8:	83 c4 04             	add    esp,0x4
  48ffbb:	85 c9                	test   ecx,ecx
  48ffbd:	89 75 e8             	mov    DWORD PTR [ebp-0x18],esi
  48ffc0:	8b c1                	mov    eax,ecx
  48ffc2:	75 02                	jne    0x48ffc6
  48ffc4:	8b c6                	mov    eax,esi
  48ffc6:	85 db                	test   ebx,ebx
  48ffc8:	89 06                	mov    DWORD PTR [esi],eax
  48ffca:	8b c3                	mov    eax,ebx
  48ffcc:	75 02                	jne    0x48ffd0
  48ffce:	8b c6                	mov    eax,esi
  48ffd0:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  48ffd3:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  48ffd6:	ba 55 55 55 15       	mov    edx,0x15555555
  48ffdb:	2b d0                	sub    edx,eax
  48ffdd:	83 fa 01             	cmp    edx,0x1
  48ffe0:	73 50                	jae    0x490032
  48ffe2:	8a 45 0b             	mov    al,BYTE PTR [ebp+0xb]
  48ffe5:	6a 00                	push   0x0
  48ffe7:	8d 4d d0             	lea    ecx,[ebp-0x30]
  48ffea:	88 45 d0             	mov    BYTE PTR [ebp-0x30],al
  48ffed:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  48fff3:	83 c9 ff             	or     ecx,0xffffffff
  48fff6:	33 c0                	xor    eax,eax
  48fff8:	bf ec 2a 50 00       	mov    edi,0x502aec
  48fffd:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  48ffff:	f7 d1                	not    ecx
  490001:	49                   	dec    ecx
  490002:	51                   	push   ecx
  490003:	68 ec 2a 50 00       	push   0x502aec
  490008:	8d 4d d0             	lea    ecx,[ebp-0x30]
  49000b:	ff 15 f4 e4 4d 00    	call   DWORD PTR ds:0x4de4f4
  490011:	8d 4d d0             	lea    ecx,[ebp-0x30]
  490014:	51                   	push   ecx
  490015:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  490018:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  49001f:	e8 fc 53 f7 ff       	call   0x405420
  490024:	68 e8 0a 4e 00       	push   0x4e0ae8
  490029:	8d 55 b4             	lea    edx,[ebp-0x4c]
  49002c:	52                   	push   edx
  49002d:	e8 24 1d 04 00       	call   0x4d1d56
  490032:	40                   	inc    eax
  490033:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
  490036:	8d 46 08             	lea    eax,[esi+0x8]
  490039:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  490040:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  490043:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  490046:	85 c0                	test   eax,eax
  490048:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  49004c:	74 1e                	je     0x49006c
  49004e:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  490051:	8b 11                	mov    edx,DWORD PTR [ecx]
  490053:	89 10                	mov    DWORD PTR [eax],edx
  490055:	66 8b 51 04          	mov    dx,WORD PTR [ecx+0x4]
  490059:	83 c1 08             	add    ecx,0x8
  49005c:	51                   	push   ecx
  49005d:	8d 48 08             	lea    ecx,[eax+0x8]
  490060:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  490064:	e8 e3 19 04 00       	call   0x4d1a4c
  490069:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  49006c:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
  49006f:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  490072:	89 31                	mov    DWORD PTR [ecx],esi
  490074:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  490077:	5f                   	pop    edi
  490078:	5e                   	pop    esi
  490079:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  490080:	5b                   	pop    ebx
  490081:	8b e5                	mov    esp,ebp
  490083:	5d                   	pop    ebp
  490084:	c2 08 00             	ret    0x8
  490087:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  49008a:	ff 48 08             	dec    DWORD PTR [eax+0x8]
  49008d:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  490090:	50                   	push   eax
  490091:	e8 ca 1f fb ff       	call   0x442060
  490096:	83 c4 04             	add    esp,0x4
  490099:	6a 00                	push   0x0
  49009b:	6a 00                	push   0x0
  49009d:	e8 b4 1c 04 00       	call   0x4d1d56
  4900a2:	90                   	nop
