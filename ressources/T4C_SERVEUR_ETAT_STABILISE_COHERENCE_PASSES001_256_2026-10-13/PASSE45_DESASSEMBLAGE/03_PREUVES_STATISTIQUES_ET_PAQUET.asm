; T4C Server.exe, passe 45, SHA256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Calcul des caractéristiques visibles et distinction getters véritables et getters modifiés
; Extraits analysés et vérifiés sur le PE : données de couverture, pas une preuve d exécution dynamique.

; Unit::GetSTR/GetINT/GetEND/GetAGI/GetWIS/GetATTACK/GetDODGE | [0x48e150, 0x48e230[
  48e150:	56                   	push   esi
  48e151:	33 f6                	xor    esi,esi
  48e153:	66 8b 71 64          	mov    si,WORD PTR [ecx+0x64]
  48e157:	6a 03                	push   0x3
  48e159:	e8 02 fd ff ff       	call   0x48de60
  48e15e:	03 f0                	add    esi,eax
  48e160:	b8 00 00 00 00       	mov    eax,0x0
  48e165:	0f 98 c0             	sets   al
  48e168:	48                   	dec    eax
  48e169:	23 c6                	and    eax,esi
  48e16b:	5e                   	pop    esi
  48e16c:	c3                   	ret
  48e16d:	90                   	nop
  48e16e:	90                   	nop
  48e16f:	90                   	nop
  48e170:	56                   	push   esi
  48e171:	33 f6                	xor    esi,esi
  48e173:	66 8b 71 60          	mov    si,WORD PTR [ecx+0x60]
  48e177:	6a 01                	push   0x1
  48e179:	e8 e2 fc ff ff       	call   0x48de60
  48e17e:	03 f0                	add    esi,eax
  48e180:	b8 00 00 00 00       	mov    eax,0x0
  48e185:	0f 98 c0             	sets   al
  48e188:	48                   	dec    eax
  48e189:	23 c6                	and    eax,esi
  48e18b:	5e                   	pop    esi
  48e18c:	c3                   	ret
  48e18d:	90                   	nop
  48e18e:	90                   	nop
  48e18f:	90                   	nop
  48e190:	56                   	push   esi
  48e191:	33 f6                	xor    esi,esi
  48e193:	66 8b 71 62          	mov    si,WORD PTR [ecx+0x62]
  48e197:	6a 02                	push   0x2
  48e199:	e8 c2 fc ff ff       	call   0x48de60
  48e19e:	03 f0                	add    esi,eax
  48e1a0:	b8 00 00 00 00       	mov    eax,0x0
  48e1a5:	0f 98 c0             	sets   al
  48e1a8:	48                   	dec    eax
  48e1a9:	23 c6                	and    eax,esi
  48e1ab:	5e                   	pop    esi
  48e1ac:	c3                   	ret
  48e1ad:	90                   	nop
  48e1ae:	90                   	nop
  48e1af:	90                   	nop
  48e1b0:	56                   	push   esi
  48e1b1:	33 f6                	xor    esi,esi
  48e1b3:	66 8b 71 66          	mov    si,WORD PTR [ecx+0x66]
  48e1b7:	6a 06                	push   0x6
  48e1b9:	e8 a2 fc ff ff       	call   0x48de60
  48e1be:	03 f0                	add    esi,eax
  48e1c0:	b8 00 00 00 00       	mov    eax,0x0
  48e1c5:	0f 98 c0             	sets   al
  48e1c8:	48                   	dec    eax
  48e1c9:	23 c6                	and    eax,esi
  48e1cb:	5e                   	pop    esi
  48e1cc:	c3                   	ret
  48e1cd:	90                   	nop
  48e1ce:	90                   	nop
  48e1cf:	90                   	nop
  48e1d0:	56                   	push   esi
  48e1d1:	33 f6                	xor    esi,esi
  48e1d3:	66 8b 71 6a          	mov    si,WORD PTR [ecx+0x6a]
  48e1d7:	6a 04                	push   0x4
  48e1d9:	e8 82 fc ff ff       	call   0x48de60
  48e1de:	03 f0                	add    esi,eax
  48e1e0:	b8 00 00 00 00       	mov    eax,0x0
  48e1e5:	0f 98 c0             	sets   al
  48e1e8:	48                   	dec    eax
  48e1e9:	23 c6                	and    eax,esi
  48e1eb:	5e                   	pop    esi
  48e1ec:	c3                   	ret
  48e1ed:	90                   	nop
  48e1ee:	90                   	nop
  48e1ef:	90                   	nop
  48e1f0:	56                   	push   esi
  48e1f1:	33 f6                	xor    esi,esi
  48e1f3:	66 8b 71 70          	mov    si,WORD PTR [ecx+0x70]
  48e1f7:	6a 08                	push   0x8
  48e1f9:	e8 62 fc ff ff       	call   0x48de60
  48e1fe:	03 f0                	add    esi,eax
  48e200:	b8 00 00 00 00       	mov    eax,0x0
  48e205:	0f 98 c0             	sets   al
  48e208:	48                   	dec    eax
  48e209:	23 c6                	and    eax,esi
  48e20b:	5e                   	pop    esi
  48e20c:	c3                   	ret
  48e20d:	90                   	nop
  48e20e:	90                   	nop
  48e20f:	90                   	nop
  48e210:	56                   	push   esi
  48e211:	33 f6                	xor    esi,esi
  48e213:	66 8b 71 6e          	mov    si,WORD PTR [ecx+0x6e]
  48e217:	6a 09                	push   0x9
  48e219:	e8 42 fc ff ff       	call   0x48de60
  48e21e:	03 f0                	add    esi,eax
  48e220:	b8 00 00 00 00       	mov    eax,0x0
  48e225:	0f 98 c0             	sets   al
  48e228:	48                   	dec    eax
  48e229:	23 c6                	and    eax,esi
  48e22b:	5e                   	pop    esi
  48e22c:	c3                   	ret
  48e22d:	90                   	nop
  48e22e:	90                   	nop
  48e22f:	90                   	nop

; Unit::GetTrue* et Set* champs de base | [0x48e230, 0x48e320[
  48e230:	66 8b 41 60          	mov    ax,WORD PTR [ecx+0x60]
  48e234:	c3                   	ret
  48e235:	90                   	nop
  48e236:	90                   	nop
  48e237:	90                   	nop
  48e238:	90                   	nop
  48e239:	90                   	nop
  48e23a:	90                   	nop
  48e23b:	90                   	nop
  48e23c:	90                   	nop
  48e23d:	90                   	nop
  48e23e:	90                   	nop
  48e23f:	90                   	nop
  48e240:	66 8b 41 62          	mov    ax,WORD PTR [ecx+0x62]
  48e244:	c3                   	ret
  48e245:	90                   	nop
  48e246:	90                   	nop
  48e247:	90                   	nop
  48e248:	90                   	nop
  48e249:	90                   	nop
  48e24a:	90                   	nop
  48e24b:	90                   	nop
  48e24c:	90                   	nop
  48e24d:	90                   	nop
  48e24e:	90                   	nop
  48e24f:	90                   	nop
  48e250:	66 8b 41 64          	mov    ax,WORD PTR [ecx+0x64]
  48e254:	c3                   	ret
  48e255:	90                   	nop
  48e256:	90                   	nop
  48e257:	90                   	nop
  48e258:	90                   	nop
  48e259:	90                   	nop
  48e25a:	90                   	nop
  48e25b:	90                   	nop
  48e25c:	90                   	nop
  48e25d:	90                   	nop
  48e25e:	90                   	nop
  48e25f:	90                   	nop
  48e260:	66 8b 41 66          	mov    ax,WORD PTR [ecx+0x66]
  48e264:	c3                   	ret
  48e265:	90                   	nop
  48e266:	90                   	nop
  48e267:	90                   	nop
  48e268:	90                   	nop
  48e269:	90                   	nop
  48e26a:	90                   	nop
  48e26b:	90                   	nop
  48e26c:	90                   	nop
  48e26d:	90                   	nop
  48e26e:	90                   	nop
  48e26f:	90                   	nop
  48e270:	66 8b 41 6a          	mov    ax,WORD PTR [ecx+0x6a]
  48e274:	c3                   	ret
  48e275:	90                   	nop
  48e276:	90                   	nop
  48e277:	90                   	nop
  48e278:	90                   	nop
  48e279:	90                   	nop
  48e27a:	90                   	nop
  48e27b:	90                   	nop
  48e27c:	90                   	nop
  48e27d:	90                   	nop
  48e27e:	90                   	nop
  48e27f:	90                   	nop
  48e280:	66 8b 41 70          	mov    ax,WORD PTR [ecx+0x70]
  48e284:	c3                   	ret
  48e285:	90                   	nop
  48e286:	90                   	nop
  48e287:	90                   	nop
  48e288:	90                   	nop
  48e289:	90                   	nop
  48e28a:	90                   	nop
  48e28b:	90                   	nop
  48e28c:	90                   	nop
  48e28d:	90                   	nop
  48e28e:	90                   	nop
  48e28f:	90                   	nop
  48e290:	66 8b 41 6e          	mov    ax,WORD PTR [ecx+0x6e]
  48e294:	c3                   	ret
  48e295:	90                   	nop
  48e296:	90                   	nop
  48e297:	90                   	nop
  48e298:	90                   	nop
  48e299:	90                   	nop
  48e29a:	90                   	nop
  48e29b:	90                   	nop
  48e29c:	90                   	nop
  48e29d:	90                   	nop
  48e29e:	90                   	nop
  48e29f:	90                   	nop
  48e2a0:	55                   	push   ebp
  48e2a1:	8b ec                	mov    ebp,esp
  48e2a3:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  48e2a7:	66 89 41 60          	mov    WORD PTR [ecx+0x60],ax
  48e2ab:	5d                   	pop    ebp
  48e2ac:	c2 04 00             	ret    0x4
  48e2af:	90                   	nop
  48e2b0:	55                   	push   ebp
  48e2b1:	8b ec                	mov    ebp,esp
  48e2b3:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  48e2b7:	66 89 41 62          	mov    WORD PTR [ecx+0x62],ax
  48e2bb:	5d                   	pop    ebp
  48e2bc:	c2 04 00             	ret    0x4
  48e2bf:	90                   	nop
  48e2c0:	55                   	push   ebp
  48e2c1:	8b ec                	mov    ebp,esp
  48e2c3:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  48e2c7:	66 89 41 64          	mov    WORD PTR [ecx+0x64],ax
  48e2cb:	5d                   	pop    ebp
  48e2cc:	c2 04 00             	ret    0x4
  48e2cf:	90                   	nop
  48e2d0:	55                   	push   ebp
  48e2d1:	8b ec                	mov    ebp,esp
  48e2d3:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  48e2d7:	66 89 41 66          	mov    WORD PTR [ecx+0x66],ax
  48e2db:	5d                   	pop    ebp
  48e2dc:	c2 04 00             	ret    0x4
  48e2df:	90                   	nop
  48e2e0:	55                   	push   ebp
  48e2e1:	8b ec                	mov    ebp,esp
  48e2e3:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  48e2e7:	66 89 41 6a          	mov    WORD PTR [ecx+0x6a],ax
  48e2eb:	5d                   	pop    ebp
  48e2ec:	c2 04 00             	ret    0x4
  48e2ef:	90                   	nop
  48e2f0:	55                   	push   ebp
  48e2f1:	8b ec                	mov    ebp,esp
  48e2f3:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  48e2f7:	66 89 41 70          	mov    WORD PTR [ecx+0x70],ax
  48e2fb:	5d                   	pop    ebp
  48e2fc:	c2 04 00             	ret    0x4
  48e2ff:	90                   	nop
  48e300:	55                   	push   ebp
  48e301:	8b ec                	mov    ebp,esp
  48e303:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  48e307:	66 89 41 6e          	mov    WORD PTR [ecx+0x6e],ax
  48e30b:	5d                   	pop    ebp
  48e30c:	c2 04 00             	ret    0x4
  48e30f:	90                   	nop
  48e310:	c2 04 00             	ret    0x4
  48e313:	90                   	nop
  48e314:	90                   	nop
  48e315:	90                   	nop
  48e316:	90                   	nop
  48e317:	90                   	nop
  48e318:	90                   	nop
  48e319:	90                   	nop
  48e31a:	90                   	nop
  48e31b:	90                   	nop
  48e31c:	90                   	nop
  48e31d:	90                   	nop
  48e31e:	90                   	nop
  48e31f:	90                   	nop

; Character::PacketStatus champs issus du vptr et getters boostes | [0x41f5a0, 0x41f696[
  41f5a0:	55                   	push   ebp
  41f5a1:	8b ec                	mov    ebp,esp
  41f5a3:	56                   	push   esi
  41f5a4:	8b f1                	mov    esi,ecx
  41f5a6:	8b 86 28 01 00 00    	mov    eax,DWORD PTR [esi+0x128]
  41f5ac:	85 c0                	test   eax,eax
  41f5ae:	57                   	push   edi
  41f5af:	74 15                	je     0x41f5c6
  41f5b1:	8a 4d 0c             	mov    cl,BYTE PTR [ebp+0xc]
  41f5b4:	84 c9                	test   cl,cl
  41f5b6:	75 0e                	jne    0x41f5c6
  41f5b8:	8b f0                	mov    esi,eax
  41f5ba:	8b 86 28 01 00 00    	mov    eax,DWORD PTR [esi+0x128]
  41f5c0:	85 c0                	test   eax,eax
  41f5c2:	b1 01                	mov    cl,0x1
  41f5c4:	75 ee                	jne    0x41f5b4
  41f5c6:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  41f5c9:	6a 2b                	push   0x2b
  41f5cb:	8b cf                	mov    ecx,edi
  41f5cd:	e8 7e 6b 06 00       	call   0x486150
  41f5d2:	8b 06                	mov    eax,DWORD PTR [esi]
  41f5d4:	8b ce                	mov    ecx,esi
  41f5d6:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  41f5dc:	50                   	push   eax
  41f5dd:	8b cf                	mov    ecx,edi
  41f5df:	e8 0c 6c 06 00       	call   0x4861f0
  41f5e4:	8b 16                	mov    edx,DWORD PTR [esi]
  41f5e6:	8b ce                	mov    ecx,esi
  41f5e8:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  41f5ee:	50                   	push   eax
  41f5ef:	8b cf                	mov    ecx,edi
  41f5f1:	e8 fa 6b 06 00       	call   0x4861f0
  41f5f6:	8b 06                	mov    eax,DWORD PTR [esi]
  41f5f8:	8b ce                	mov    ecx,esi
  41f5fa:	ff 90 ec 00 00 00    	call   DWORD PTR [eax+0xec]
  41f600:	8b cf                	mov    ecx,edi
  41f602:	50                   	push   eax
  41f603:	e8 48 6b 06 00       	call   0x486150
  41f608:	8b 16                	mov    edx,DWORD PTR [esi]
  41f60a:	8b ce                	mov    ecx,esi
  41f60c:	ff 92 e0 00 00 00    	call   DWORD PTR [edx+0xe0]
  41f612:	8b cf                	mov    ecx,edi
  41f614:	50                   	push   eax
  41f615:	e8 36 6b 06 00       	call   0x486150
  41f61a:	8b 06                	mov    eax,DWORD PTR [esi]
  41f61c:	8b ce                	mov    ecx,esi
  41f61e:	ff 50 54             	call   DWORD PTR [eax+0x54]
  41f621:	8b ca                	mov    ecx,edx
  41f623:	c1 f9 1f             	sar    ecx,0x1f
  41f626:	52                   	push   edx
  41f627:	8b cf                	mov    ecx,edi
  41f629:	e8 c2 6b 06 00       	call   0x4861f0
  41f62e:	8b 16                	mov    edx,DWORD PTR [esi]
  41f630:	8b ce                	mov    ecx,esi
  41f632:	ff 52 54             	call   DWORD PTR [edx+0x54]
  41f635:	50                   	push   eax
  41f636:	8b cf                	mov    ecx,edi
  41f638:	e8 b3 6b 06 00       	call   0x4861f0
  41f63d:	8b 06                	mov    eax,DWORD PTR [esi]
  41f63f:	8b ce                	mov    ecx,esi
  41f641:	ff 90 68 01 00 00    	call   DWORD PTR [eax+0x168]
  41f647:	e8 2e 27 0b 00       	call   0x4d1d7a
  41f64c:	8b cf                	mov    ecx,edi
  41f64e:	50                   	push   eax
  41f64f:	e8 fc 6a 06 00       	call   0x486150
  41f654:	8b ce                	mov    ecx,esi
  41f656:	e8 25 f4 ff ff       	call   0x41ea80
  41f65b:	e8 1a 27 0b 00       	call   0x4d1d7a
  41f660:	8b cf                	mov    ecx,edi
  41f662:	50                   	push   eax
  41f663:	e8 e8 6a 06 00       	call   0x486150
  41f668:	8b ce                	mov    ecx,esi
  41f66a:	e8 e1 ea 06 00       	call   0x48e150
  41f66f:	8b cf                	mov    ecx,edi
  41f671:	50                   	push   eax
  41f672:	e8 d9 6a 06 00       	call   0x486150
  41f677:	8b ce                	mov    ecx,esi
  41f679:	e8 12 eb 06 00       	call   0x48e190
  41f67e:	8b cf                	mov    ecx,edi
  41f680:	50                   	push   eax
  41f681:	e8 ca 6a 06 00       	call   0x486150
  41f686:	8b ce                	mov    ecx,esi
  41f688:	e8 23 eb 06 00       	call   0x48e1b0
  41f68d:	8b cf                	mov    ecx,edi
  41f68f:	50                   	push   eax
  41f690:	e8 bb 6a 06 00       	call   0x486150
  41f695:	6a                   	.byte 0x6a
