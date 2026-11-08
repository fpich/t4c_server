; Preuves passe 53 — T4C Server.exe SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Intervalles exclusifs et uniquement regions executees. Les tables de dispatch ne sont pas comptees.

; [0x0040E205,0x0040E908) Comparaisons de skill/spell/viewflag/itemcount/var/equipcount/if, allocation et sous-expressions
  40e205:	be 00 0b 50 00       	mov    esi,0x500b00
  40e20a:	8b c7                	mov    eax,edi
  40e20c:	8a 10                	mov    dl,BYTE PTR [eax]
  40e20e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e210:	8a ca                	mov    cl,dl
  40e212:	3a d3                	cmp    dl,bl
  40e214:	75 1e                	jne    0x40e234
  40e216:	84 c9                	test   cl,cl
  40e218:	74 16                	je     0x40e230
  40e21a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e21d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e220:	8a ca                	mov    cl,dl
  40e222:	3a d3                	cmp    dl,bl
  40e224:	75 0e                	jne    0x40e234
  40e226:	83 c0 02             	add    eax,0x2
  40e229:	83 c6 02             	add    esi,0x2
  40e22c:	84 c9                	test   cl,cl
  40e22e:	75 dc                	jne    0x40e20c
  40e230:	33 c0                	xor    eax,eax
  40e232:	eb 05                	jmp    0x40e239
  40e234:	1b c0                	sbb    eax,eax
  40e236:	83 d8 ff             	sbb    eax,0xffffffff
  40e239:	85 c0                	test   eax,eax
  40e23b:	0f 84 b6 0d 00 00    	je     0x40eff7
  40e241:	be f8 0a 50 00       	mov    esi,0x500af8
  40e246:	8b c7                	mov    eax,edi
  40e248:	8a 10                	mov    dl,BYTE PTR [eax]
  40e24a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e24c:	8a ca                	mov    cl,dl
  40e24e:	3a d3                	cmp    dl,bl
  40e250:	75 1e                	jne    0x40e270
  40e252:	84 c9                	test   cl,cl
  40e254:	74 16                	je     0x40e26c
  40e256:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e259:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e25c:	8a ca                	mov    cl,dl
  40e25e:	3a d3                	cmp    dl,bl
  40e260:	75 0e                	jne    0x40e270
  40e262:	83 c0 02             	add    eax,0x2
  40e265:	83 c6 02             	add    esi,0x2
  40e268:	84 c9                	test   cl,cl
  40e26a:	75 dc                	jne    0x40e248
  40e26c:	33 c0                	xor    eax,eax
  40e26e:	eb 05                	jmp    0x40e275
  40e270:	1b c0                	sbb    eax,eax
  40e272:	83 d8 ff             	sbb    eax,0xffffffff
  40e275:	85 c0                	test   eax,eax
  40e277:	0f 84 7a 0d 00 00    	je     0x40eff7
  40e27d:	be ec 0a 50 00       	mov    esi,0x500aec
  40e282:	8b c7                	mov    eax,edi
  40e284:	8a 10                	mov    dl,BYTE PTR [eax]
  40e286:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e288:	8a ca                	mov    cl,dl
  40e28a:	3a d3                	cmp    dl,bl
  40e28c:	75 1e                	jne    0x40e2ac
  40e28e:	84 c9                	test   cl,cl
  40e290:	74 16                	je     0x40e2a8
  40e292:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e295:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e298:	8a ca                	mov    cl,dl
  40e29a:	3a d3                	cmp    dl,bl
  40e29c:	75 0e                	jne    0x40e2ac
  40e29e:	83 c0 02             	add    eax,0x2
  40e2a1:	83 c6 02             	add    esi,0x2
  40e2a4:	84 c9                	test   cl,cl
  40e2a6:	75 dc                	jne    0x40e284
  40e2a8:	33 c0                	xor    eax,eax
  40e2aa:	eb 05                	jmp    0x40e2b1
  40e2ac:	1b c0                	sbb    eax,eax
  40e2ae:	83 d8 ff             	sbb    eax,0xffffffff
  40e2b1:	85 c0                	test   eax,eax
  40e2b3:	0f 84 6b 0c 00 00    	je     0x40ef24
  40e2b9:	be e0 0a 50 00       	mov    esi,0x500ae0
  40e2be:	8b c7                	mov    eax,edi
  40e2c0:	8a 10                	mov    dl,BYTE PTR [eax]
  40e2c2:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e2c4:	8a ca                	mov    cl,dl
  40e2c6:	3a d3                	cmp    dl,bl
  40e2c8:	75 1e                	jne    0x40e2e8
  40e2ca:	84 c9                	test   cl,cl
  40e2cc:	74 16                	je     0x40e2e4
  40e2ce:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e2d1:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e2d4:	8a ca                	mov    cl,dl
  40e2d6:	3a d3                	cmp    dl,bl
  40e2d8:	75 0e                	jne    0x40e2e8
  40e2da:	83 c0 02             	add    eax,0x2
  40e2dd:	83 c6 02             	add    esi,0x2
  40e2e0:	84 c9                	test   cl,cl
  40e2e2:	75 dc                	jne    0x40e2c0
  40e2e4:	33 c0                	xor    eax,eax
  40e2e6:	eb 05                	jmp    0x40e2ed
  40e2e8:	1b c0                	sbb    eax,eax
  40e2ea:	83 d8 ff             	sbb    eax,0xffffffff
  40e2ed:	85 c0                	test   eax,eax
  40e2ef:	0f 84 2f 0c 00 00    	je     0x40ef24
  40e2f5:	be d0 0a 50 00       	mov    esi,0x500ad0
  40e2fa:	8b c7                	mov    eax,edi
  40e2fc:	8a 10                	mov    dl,BYTE PTR [eax]
  40e2fe:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e300:	8a ca                	mov    cl,dl
  40e302:	3a d3                	cmp    dl,bl
  40e304:	75 1e                	jne    0x40e324
  40e306:	84 c9                	test   cl,cl
  40e308:	74 16                	je     0x40e320
  40e30a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e30d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e310:	8a ca                	mov    cl,dl
  40e312:	3a d3                	cmp    dl,bl
  40e314:	75 0e                	jne    0x40e324
  40e316:	83 c0 02             	add    eax,0x2
  40e319:	83 c6 02             	add    esi,0x2
  40e31c:	84 c9                	test   cl,cl
  40e31e:	75 dc                	jne    0x40e2fc
  40e320:	33 c0                	xor    eax,eax
  40e322:	eb 05                	jmp    0x40e329
  40e324:	1b c0                	sbb    eax,eax
  40e326:	83 d8 ff             	sbb    eax,0xffffffff
  40e329:	85 c0                	test   eax,eax
  40e32b:	0f 84 20 0b 00 00    	je     0x40ee51
  40e331:	be c0 0a 50 00       	mov    esi,0x500ac0
  40e336:	8b c7                	mov    eax,edi
  40e338:	8a 10                	mov    dl,BYTE PTR [eax]
  40e33a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e33c:	8a ca                	mov    cl,dl
  40e33e:	3a d3                	cmp    dl,bl
  40e340:	75 1e                	jne    0x40e360
  40e342:	84 c9                	test   cl,cl
  40e344:	74 16                	je     0x40e35c
  40e346:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e349:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e34c:	8a ca                	mov    cl,dl
  40e34e:	3a d3                	cmp    dl,bl
  40e350:	75 0e                	jne    0x40e360
  40e352:	83 c0 02             	add    eax,0x2
  40e355:	83 c6 02             	add    esi,0x2
  40e358:	84 c9                	test   cl,cl
  40e35a:	75 dc                	jne    0x40e338
  40e35c:	33 c0                	xor    eax,eax
  40e35e:	eb 05                	jmp    0x40e365
  40e360:	1b c0                	sbb    eax,eax
  40e362:	83 d8 ff             	sbb    eax,0xffffffff
  40e365:	85 c0                	test   eax,eax
  40e367:	0f 84 e4 0a 00 00    	je     0x40ee51
  40e36d:	be ac 0a 50 00       	mov    esi,0x500aac
  40e372:	8b c7                	mov    eax,edi
  40e374:	8a 10                	mov    dl,BYTE PTR [eax]
  40e376:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e378:	8a ca                	mov    cl,dl
  40e37a:	3a d3                	cmp    dl,bl
  40e37c:	75 1e                	jne    0x40e39c
  40e37e:	84 c9                	test   cl,cl
  40e380:	74 16                	je     0x40e398
  40e382:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e385:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e388:	8a ca                	mov    cl,dl
  40e38a:	3a d3                	cmp    dl,bl
  40e38c:	75 0e                	jne    0x40e39c
  40e38e:	83 c0 02             	add    eax,0x2
  40e391:	83 c6 02             	add    esi,0x2
  40e394:	84 c9                	test   cl,cl
  40e396:	75 dc                	jne    0x40e374
  40e398:	33 c0                	xor    eax,eax
  40e39a:	eb 05                	jmp    0x40e3a1
  40e39c:	1b c0                	sbb    eax,eax
  40e39e:	83 d8 ff             	sbb    eax,0xffffffff
  40e3a1:	85 c0                	test   eax,eax
  40e3a3:	0f 84 d5 09 00 00    	je     0x40ed7e
  40e3a9:	be 98 0a 50 00       	mov    esi,0x500a98
  40e3ae:	8b c7                	mov    eax,edi
  40e3b0:	8a 10                	mov    dl,BYTE PTR [eax]
  40e3b2:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e3b4:	8a ca                	mov    cl,dl
  40e3b6:	3a d3                	cmp    dl,bl
  40e3b8:	75 1e                	jne    0x40e3d8
  40e3ba:	84 c9                	test   cl,cl
  40e3bc:	74 16                	je     0x40e3d4
  40e3be:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e3c1:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e3c4:	8a ca                	mov    cl,dl
  40e3c6:	3a d3                	cmp    dl,bl
  40e3c8:	75 0e                	jne    0x40e3d8
  40e3ca:	83 c0 02             	add    eax,0x2
  40e3cd:	83 c6 02             	add    esi,0x2
  40e3d0:	84 c9                	test   cl,cl
  40e3d2:	75 dc                	jne    0x40e3b0
  40e3d4:	33 c0                	xor    eax,eax
  40e3d6:	eb 05                	jmp    0x40e3dd
  40e3d8:	1b c0                	sbb    eax,eax
  40e3da:	83 d8 ff             	sbb    eax,0xffffffff
  40e3dd:	85 c0                	test   eax,eax
  40e3df:	0f 84 99 09 00 00    	je     0x40ed7e
  40e3e5:	be 88 0a 50 00       	mov    esi,0x500a88
  40e3ea:	8b c7                	mov    eax,edi
  40e3ec:	8a 10                	mov    dl,BYTE PTR [eax]
  40e3ee:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e3f0:	8a ca                	mov    cl,dl
  40e3f2:	3a d3                	cmp    dl,bl
  40e3f4:	75 1e                	jne    0x40e414
  40e3f6:	84 c9                	test   cl,cl
  40e3f8:	74 16                	je     0x40e410
  40e3fa:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e3fd:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e400:	8a ca                	mov    cl,dl
  40e402:	3a d3                	cmp    dl,bl
  40e404:	75 0e                	jne    0x40e414
  40e406:	83 c0 02             	add    eax,0x2
  40e409:	83 c6 02             	add    esi,0x2
  40e40c:	84 c9                	test   cl,cl
  40e40e:	75 dc                	jne    0x40e3ec
  40e410:	33 c0                	xor    eax,eax
  40e412:	eb 05                	jmp    0x40e419
  40e414:	1b c0                	sbb    eax,eax
  40e416:	83 d8 ff             	sbb    eax,0xffffffff
  40e419:	85 c0                	test   eax,eax
  40e41b:	75 09                	jne    0x40e426
  40e41d:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40e420:	c6 43 11 04          	mov    BYTE PTR [ebx+0x11],0x4
  40e424:	eb 43                	jmp    0x40e469
  40e426:	be 78 0a 50 00       	mov    esi,0x500a78
  40e42b:	8b c7                	mov    eax,edi
  40e42d:	8a 10                	mov    dl,BYTE PTR [eax]
  40e42f:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e431:	8a ca                	mov    cl,dl
  40e433:	3a d3                	cmp    dl,bl
  40e435:	75 1e                	jne    0x40e455
  40e437:	84 c9                	test   cl,cl
  40e439:	74 16                	je     0x40e451
  40e43b:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e43e:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e441:	8a ca                	mov    cl,dl
  40e443:	3a d3                	cmp    dl,bl
  40e445:	75 0e                	jne    0x40e455
  40e447:	83 c0 02             	add    eax,0x2
  40e44a:	83 c6 02             	add    esi,0x2
  40e44d:	84 c9                	test   cl,cl
  40e44f:	75 dc                	jne    0x40e42d
  40e451:	33 c0                	xor    eax,eax
  40e453:	eb 05                	jmp    0x40e45a
  40e455:	1b c0                	sbb    eax,eax
  40e457:	83 d8 ff             	sbb    eax,0xffffffff
  40e45a:	85 c0                	test   eax,eax
  40e45c:	0f 85 d3 00 00 00    	jne    0x40e535
  40e462:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40e465:	c6 43 11 05          	mov    BYTE PTR [ebx+0x11],0x5
  40e469:	6a 20                	push   0x20
  40e46b:	e8 80 3b 03 00       	call   0x441ff0
  40e470:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
  40e473:	8b f8                	mov    edi,eax
  40e475:	89 7b 18             	mov    DWORD PTR [ebx+0x18],edi
  40e478:	8b 46 54             	mov    eax,DWORD PTR [esi+0x54]
  40e47b:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e47e:	c7 46 6c 00 00 00 00 	mov    DWORD PTR [esi+0x6c],0x0
  40e485:	c6 46 60 08          	mov    BYTE PTR [esi+0x60],0x8
  40e489:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  40e48c:	8b 56 64             	mov    edx,DWORD PTR [esi+0x64]
  40e48f:	83 c4 04             	add    esp,0x4
  40e492:	42                   	inc    edx
  40e493:	85 c0                	test   eax,eax
  40e495:	89 56 64             	mov    DWORD PTR [esi+0x64],edx
  40e498:	6a 0c                	push   0xc
  40e49a:	75 2a                	jne    0x40e4c6
  40e49c:	e8 4f 3b 03 00       	call   0x441ff0
  40e4a1:	33 c9                	xor    ecx,ecx
  40e4a3:	83 c4 04             	add    esp,0x4
  40e4a6:	3b c1                	cmp    eax,ecx
  40e4a8:	74 07                	je     0x40e4b1
  40e4aa:	89 08                	mov    DWORD PTR [eax],ecx
  40e4ac:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  40e4af:	eb 02                	jmp    0x40e4b3
  40e4b1:	33 c0                	xor    eax,eax
  40e4b3:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40e4b6:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e4b9:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  40e4bc:	89 08                	mov    DWORD PTR [eax],ecx
  40e4be:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40e4c1:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  40e4c4:	eb 37                	jmp    0x40e4fd
  40e4c6:	e8 25 3b 03 00       	call   0x441ff0
  40e4cb:	83 c4 04             	add    esp,0x4
  40e4ce:	85 c0                	test   eax,eax
  40e4d0:	74 0f                	je     0x40e4e1
  40e4d2:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40e4d8:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40e4df:	eb 02                	jmp    0x40e4e3
  40e4e1:	33 c0                	xor    eax,eax
  40e4e3:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40e4e6:	89 01                	mov    DWORD PTR [ecx],eax
  40e4e8:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40e4eb:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e4ee:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  40e4f1:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  40e4f4:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40e4f7:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40e4fd:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40e500:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  40e503:	8b 7b 18             	mov    edi,DWORD PTR [ebx+0x18]
  40e506:	33 c0                	xor    eax,eax
  40e508:	b9 08 00 00 00       	mov    ecx,0x8
  40e50d:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40e50f:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
  40e512:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40e515:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  40e518:	03 c1                	add    eax,ecx
  40e51a:	52                   	push   edx
  40e51b:	50                   	push   eax
  40e51c:	8b ce                	mov    ecx,esi
  40e51e:	e8 dd de ff ff       	call   0x40c400
  40e523:	85 c0                	test   eax,eax
  40e525:	0f 85 b0 0b 00 00    	jne    0x40f0db
  40e52b:	68 4c 0a 50 00       	push   0x500a4c
  40e530:	e9 8c 0b 00 00       	jmp    0x40f0c1
  40e535:	be 40 0a 50 00       	mov    esi,0x500a40
  40e53a:	8b c7                	mov    eax,edi
  40e53c:	8a 10                	mov    dl,BYTE PTR [eax]
  40e53e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e540:	8a ca                	mov    cl,dl
  40e542:	3a d3                	cmp    dl,bl
  40e544:	75 1e                	jne    0x40e564
  40e546:	84 c9                	test   cl,cl
  40e548:	74 16                	je     0x40e560
  40e54a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e54d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e550:	8a ca                	mov    cl,dl
  40e552:	3a d3                	cmp    dl,bl
  40e554:	75 0e                	jne    0x40e564
  40e556:	83 c0 02             	add    eax,0x2
  40e559:	83 c6 02             	add    esi,0x2
  40e55c:	84 c9                	test   cl,cl
  40e55e:	75 dc                	jne    0x40e53c
  40e560:	33 c0                	xor    eax,eax
  40e562:	eb 05                	jmp    0x40e569
  40e564:	1b c0                	sbb    eax,eax
  40e566:	83 d8 ff             	sbb    eax,0xffffffff
  40e569:	85 c0                	test   eax,eax
  40e56b:	75 0c                	jne    0x40e579
  40e56d:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40e570:	c6 43 11 06          	mov    BYTE PTR [ebx+0x11],0x6
  40e574:	e9 40 02 00 00       	jmp    0x40e7b9
  40e579:	be 2c 0a 50 00       	mov    esi,0x500a2c
  40e57e:	8b c7                	mov    eax,edi
  40e580:	8a 10                	mov    dl,BYTE PTR [eax]
  40e582:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e584:	8a ca                	mov    cl,dl
  40e586:	3a d3                	cmp    dl,bl
  40e588:	75 1e                	jne    0x40e5a8
  40e58a:	84 c9                	test   cl,cl
  40e58c:	74 16                	je     0x40e5a4
  40e58e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e591:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e594:	8a ca                	mov    cl,dl
  40e596:	3a d3                	cmp    dl,bl
  40e598:	75 0e                	jne    0x40e5a8
  40e59a:	83 c0 02             	add    eax,0x2
  40e59d:	83 c6 02             	add    esi,0x2
  40e5a0:	84 c9                	test   cl,cl
  40e5a2:	75 dc                	jne    0x40e580
  40e5a4:	33 c0                	xor    eax,eax
  40e5a6:	eb 05                	jmp    0x40e5ad
  40e5a8:	1b c0                	sbb    eax,eax
  40e5aa:	83 d8 ff             	sbb    eax,0xffffffff
  40e5ad:	85 c0                	test   eax,eax
  40e5af:	75 0c                	jne    0x40e5bd
  40e5b1:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40e5b4:	c6 43 11 0c          	mov    BYTE PTR [ebx+0x11],0xc
  40e5b8:	e9 fc 01 00 00       	jmp    0x40e7b9
  40e5bd:	be 28 0a 50 00       	mov    esi,0x500a28
  40e5c2:	8b c7                	mov    eax,edi
  40e5c4:	8a 10                	mov    dl,BYTE PTR [eax]
  40e5c6:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e5c8:	8a ca                	mov    cl,dl
  40e5ca:	3a d3                	cmp    dl,bl
  40e5cc:	75 1e                	jne    0x40e5ec
  40e5ce:	84 c9                	test   cl,cl
  40e5d0:	74 16                	je     0x40e5e8
  40e5d2:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e5d5:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e5d8:	8a ca                	mov    cl,dl
  40e5da:	3a d3                	cmp    dl,bl
  40e5dc:	75 0e                	jne    0x40e5ec
  40e5de:	83 c0 02             	add    eax,0x2
  40e5e1:	83 c6 02             	add    esi,0x2
  40e5e4:	84 c9                	test   cl,cl
  40e5e6:	75 dc                	jne    0x40e5c4
  40e5e8:	33 c0                	xor    eax,eax
  40e5ea:	eb 05                	jmp    0x40e5f1
  40e5ec:	1b c0                	sbb    eax,eax
  40e5ee:	83 d8 ff             	sbb    eax,0xffffffff
  40e5f1:	85 c0                	test   eax,eax
  40e5f3:	0f 85 3c 01 00 00    	jne    0x40e735
  40e5f9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40e5fc:	6a 04                	push   0x4
  40e5fe:	c6 40 11 0b          	mov    BYTE PTR [eax+0x11],0xb
  40e602:	e8 e9 39 03 00       	call   0x441ff0
  40e607:	83 c4 04             	add    esp,0x4
  40e60a:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  40e60d:	85 c0                	test   eax,eax
  40e60f:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  40e613:	74 0b                	je     0x40e620
  40e615:	8b c8                	mov    ecx,eax
  40e617:	e8 42 34 0c 00       	call   0x4d1a5e
  40e61c:	8b f8                	mov    edi,eax
  40e61e:	eb 02                	jmp    0x40e622
  40e620:	33 ff                	xor    edi,edi
  40e622:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40e625:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  40e628:	80 3c 30 28          	cmp    BYTE PTR [eax+esi*1],0x28
  40e62c:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  40e630:	75 04                	jne    0x40e636
  40e632:	40                   	inc    eax
  40e633:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40e636:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
  40e639:	3c 29                	cmp    al,0x29
  40e63b:	74 1a                	je     0x40e657
  40e63d:	84 c0                	test   al,al
  40e63f:	74 71                	je     0x40e6b2
  40e641:	50                   	push   eax
  40e642:	8b cf                	mov    ecx,edi
  40e644:	e8 45 34 0c 00       	call   0x4d1a8e
  40e649:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40e64c:	40                   	inc    eax
  40e64d:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40e650:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
  40e653:	3c 29                	cmp    al,0x29
  40e655:	75 e6                	jne    0x40e63d
  40e657:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  40e65a:	33 db                	xor    ebx,ebx
  40e65c:	3b c3                	cmp    eax,ebx
  40e65e:	0f 85 77 0a 00 00    	jne    0x40f0db
  40e664:	8b cf                	mov    ecx,edi
  40e666:	e8 17 34 0c 00       	call   0x4d1a82
  40e66b:	8b cf                	mov    ecx,edi
  40e66d:	e8 0a 34 0c 00       	call   0x4d1a7c
  40e672:	8b cf                	mov    ecx,edi
  40e674:	e8 fd 33 0c 00       	call   0x4d1a76
  40e679:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
  40e67c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40e67f:	89 79 18             	mov    DWORD PTR [ecx+0x18],edi
  40e682:	8b 46 54             	mov    eax,DWORD PTR [esi+0x54]
  40e685:	8b 56 64             	mov    edx,DWORD PTR [esi+0x64]
  40e688:	42                   	inc    edx
  40e689:	3b c3                	cmp    eax,ebx
  40e68b:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e68e:	89 5e 6c             	mov    DWORD PTR [esi+0x6c],ebx
  40e691:	c6 46 60 08          	mov    BYTE PTR [esi+0x60],0x8
  40e695:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  40e698:	89 56 64             	mov    DWORD PTR [esi+0x64],edx
  40e69b:	6a 0c                	push   0xc
  40e69d:	75 60                	jne    0x40e6ff
  40e69f:	e8 4c 39 03 00       	call   0x441ff0
  40e6a4:	83 c4 04             	add    esp,0x4
  40e6a7:	3b c3                	cmp    eax,ebx
  40e6a9:	74 36                	je     0x40e6e1
  40e6ab:	89 18                	mov    DWORD PTR [eax],ebx
  40e6ad:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  40e6b0:	eb 31                	jmp    0x40e6e3
  40e6b2:	68 c8 09 50 00       	push   0x5009c8
  40e6b7:	6a 08                	push   0x8
  40e6b9:	e8 82 36 06 00       	call   0x471d40
  40e6be:	83 c4 08             	add    esp,0x8
  40e6c1:	85 ff                	test   edi,edi
  40e6c3:	74 10                	je     0x40e6d5
  40e6c5:	8b cf                	mov    ecx,edi
  40e6c7:	e8 74 33 0c 00       	call   0x4d1a40
  40e6cc:	57                   	push   edi
  40e6cd:	e8 8e 39 03 00       	call   0x442060
  40e6d2:	83 c4 04             	add    esp,0x4
  40e6d5:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40e6dc:	e9 fa 09 00 00       	jmp    0x40f0db
  40e6e1:	33 c0                	xor    eax,eax
  40e6e3:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e6e6:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40e6e9:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  40e6ec:	89 18                	mov    DWORD PTR [eax],ebx
  40e6ee:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  40e6f1:	89 5a 04             	mov    DWORD PTR [edx+0x4],ebx
  40e6f4:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40e6f7:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  40e6fa:	e9 dc 09 00 00       	jmp    0x40f0db
  40e6ff:	e8 ec 38 03 00       	call   0x441ff0
  40e704:	83 c4 04             	add    esp,0x4
  40e707:	3b c3                	cmp    eax,ebx
  40e709:	74 07                	je     0x40e712
  40e70b:	89 18                	mov    DWORD PTR [eax],ebx
  40e70d:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  40e710:	eb 02                	jmp    0x40e714
  40e712:	33 c0                	xor    eax,eax
  40e714:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40e717:	89 01                	mov    DWORD PTR [ecx],eax
  40e719:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  40e71c:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e71f:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40e722:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  40e725:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40e728:	89 18                	mov    DWORD PTR [eax],ebx
  40e72a:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40e72d:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  40e730:	e9 a6 09 00 00       	jmp    0x40f0db
  40e735:	be bc 09 50 00       	mov    esi,0x5009bc
  40e73a:	8b c7                	mov    eax,edi
  40e73c:	8a 10                	mov    dl,BYTE PTR [eax]
  40e73e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e740:	8a ca                	mov    cl,dl
  40e742:	3a d3                	cmp    dl,bl
  40e744:	75 1e                	jne    0x40e764
  40e746:	84 c9                	test   cl,cl
  40e748:	74 16                	je     0x40e760
  40e74a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e74d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e750:	8a ca                	mov    cl,dl
  40e752:	3a d3                	cmp    dl,bl
  40e754:	75 0e                	jne    0x40e764
  40e756:	83 c0 02             	add    eax,0x2
  40e759:	83 c6 02             	add    esi,0x2
  40e75c:	84 c9                	test   cl,cl
  40e75e:	75 dc                	jne    0x40e73c
  40e760:	33 c0                	xor    eax,eax
  40e762:	eb 05                	jmp    0x40e769
  40e764:	1b c0                	sbb    eax,eax
  40e766:	83 d8 ff             	sbb    eax,0xffffffff
  40e769:	85 c0                	test   eax,eax
  40e76b:	75 09                	jne    0x40e776
  40e76d:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40e770:	c6 43 11 07          	mov    BYTE PTR [ebx+0x11],0x7
  40e774:	eb 43                	jmp    0x40e7b9
  40e776:	be a8 09 50 00       	mov    esi,0x5009a8
  40e77b:	8b c7                	mov    eax,edi
  40e77d:	8a 10                	mov    dl,BYTE PTR [eax]
  40e77f:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e781:	8a ca                	mov    cl,dl
  40e783:	3a d3                	cmp    dl,bl
  40e785:	75 1e                	jne    0x40e7a5
  40e787:	84 c9                	test   cl,cl
  40e789:	74 16                	je     0x40e7a1
  40e78b:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e78e:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e791:	8a ca                	mov    cl,dl
  40e793:	3a d3                	cmp    dl,bl
  40e795:	75 0e                	jne    0x40e7a5
  40e797:	83 c0 02             	add    eax,0x2
  40e79a:	83 c6 02             	add    esi,0x2
  40e79d:	84 c9                	test   cl,cl
  40e79f:	75 dc                	jne    0x40e77d
  40e7a1:	33 c0                	xor    eax,eax
  40e7a3:	eb 05                	jmp    0x40e7aa
  40e7a5:	1b c0                	sbb    eax,eax
  40e7a7:	83 d8 ff             	sbb    eax,0xffffffff
  40e7aa:	85 c0                	test   eax,eax
  40e7ac:	0f 85 d3 00 00 00    	jne    0x40e885
  40e7b2:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40e7b5:	c6 43 11 0d          	mov    BYTE PTR [ebx+0x11],0xd
  40e7b9:	6a 20                	push   0x20
  40e7bb:	e8 30 38 03 00       	call   0x441ff0
  40e7c0:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
  40e7c3:	8b f8                	mov    edi,eax
  40e7c5:	89 7b 18             	mov    DWORD PTR [ebx+0x18],edi
  40e7c8:	8b 46 54             	mov    eax,DWORD PTR [esi+0x54]
  40e7cb:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e7ce:	c7 46 6c 00 00 00 00 	mov    DWORD PTR [esi+0x6c],0x0
  40e7d5:	c6 46 60 08          	mov    BYTE PTR [esi+0x60],0x8
  40e7d9:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  40e7dc:	8b 56 64             	mov    edx,DWORD PTR [esi+0x64]
  40e7df:	83 c4 04             	add    esp,0x4
  40e7e2:	42                   	inc    edx
  40e7e3:	85 c0                	test   eax,eax
  40e7e5:	89 56 64             	mov    DWORD PTR [esi+0x64],edx
  40e7e8:	6a 0c                	push   0xc
  40e7ea:	75 2a                	jne    0x40e816
  40e7ec:	e8 ff 37 03 00       	call   0x441ff0
  40e7f1:	33 c9                	xor    ecx,ecx
  40e7f3:	83 c4 04             	add    esp,0x4
  40e7f6:	3b c1                	cmp    eax,ecx
  40e7f8:	74 07                	je     0x40e801
  40e7fa:	89 08                	mov    DWORD PTR [eax],ecx
  40e7fc:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  40e7ff:	eb 02                	jmp    0x40e803
  40e801:	33 c0                	xor    eax,eax
  40e803:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40e806:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e809:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  40e80c:	89 08                	mov    DWORD PTR [eax],ecx
  40e80e:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40e811:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  40e814:	eb 37                	jmp    0x40e84d
  40e816:	e8 d5 37 03 00       	call   0x441ff0
  40e81b:	83 c4 04             	add    esp,0x4
  40e81e:	85 c0                	test   eax,eax
  40e820:	74 0f                	je     0x40e831
  40e822:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40e828:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40e82f:	eb 02                	jmp    0x40e833
  40e831:	33 c0                	xor    eax,eax
  40e833:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40e836:	89 01                	mov    DWORD PTR [ecx],eax
  40e838:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40e83b:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e83e:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  40e841:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  40e844:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40e847:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40e84d:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40e850:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  40e853:	8b 7b 18             	mov    edi,DWORD PTR [ebx+0x18]
  40e856:	33 c0                	xor    eax,eax
  40e858:	b9 08 00 00 00       	mov    ecx,0x8
  40e85d:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40e85f:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
  40e862:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40e865:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  40e868:	03 c1                	add    eax,ecx
  40e86a:	52                   	push   edx
  40e86b:	50                   	push   eax
  40e86c:	8b ce                	mov    ecx,esi
  40e86e:	e8 8d db ff ff       	call   0x40c400
  40e873:	85 c0                	test   eax,eax
  40e875:	0f 85 60 08 00 00    	jne    0x40f0db
  40e87b:	68 7c 09 50 00       	push   0x50097c
  40e880:	e9 3c 08 00 00       	jmp    0x40f0c1
  40e885:	be 78 09 50 00       	mov    esi,0x500978
  40e88a:	8b c7                	mov    eax,edi
  40e88c:	8a 10                	mov    dl,BYTE PTR [eax]
  40e88e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e890:	8a ca                	mov    cl,dl
  40e892:	3a d3                	cmp    dl,bl
  40e894:	75 1e                	jne    0x40e8b4
  40e896:	84 c9                	test   cl,cl
  40e898:	74 16                	je     0x40e8b0
  40e89a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e89d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e8a0:	8a ca                	mov    cl,dl
  40e8a2:	3a d3                	cmp    dl,bl
  40e8a4:	75 0e                	jne    0x40e8b4
  40e8a6:	83 c0 02             	add    eax,0x2
  40e8a9:	83 c6 02             	add    esi,0x2
  40e8ac:	84 c9                	test   cl,cl
  40e8ae:	75 dc                	jne    0x40e88c
  40e8b0:	33 c0                	xor    eax,eax
  40e8b2:	eb 05                	jmp    0x40e8b9
  40e8b4:	1b c0                	sbb    eax,eax
  40e8b6:	83 d8 ff             	sbb    eax,0xffffffff
  40e8b9:	85 c0                	test   eax,eax
  40e8bb:	0f 85 a1 04 00 00    	jne    0x40ed62
  40e8c1:	6a 40                	push   0x40
  40e8c3:	e8 38 fc 0b 00       	call   0x4ce500
  40e8c8:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40e8cb:	6a 20                	push   0x20
  40e8cd:	89 43 14             	mov    DWORD PTR [ebx+0x14],eax
  40e8d0:	e8 1b 37 03 00       	call   0x441ff0
  40e8d5:	6a 20                	push   0x20
  40e8d7:	89 43 1c             	mov    DWORD PTR [ebx+0x1c],eax
  40e8da:	e8 11 37 03 00       	call   0x441ff0
  40e8df:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
  40e8e2:	8b 7b 1c             	mov    edi,DWORD PTR [ebx+0x1c]
  40e8e5:	89 43 18             	mov    DWORD PTR [ebx+0x18],eax
  40e8e8:	8b 46 54             	mov    eax,DWORD PTR [esi+0x54]
  40e8eb:	8b 56 64             	mov    edx,DWORD PTR [esi+0x64]
  40e8ee:	83 c4 0c             	add    esp,0xc
  40e8f1:	42                   	inc    edx
  40e8f2:	85 c0                	test   eax,eax
  40e8f4:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e8f7:	c7 46 6c 00 00 00 00 	mov    DWORD PTR [esi+0x6c],0x0
  40e8fe:	c6 46 60 08          	mov    BYTE PTR [esi+0x60],0x8
  40e902:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  40e905:	89 56 64             	mov    DWORD PTR [esi+0x64],edx

