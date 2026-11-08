; PASSE46 — changements d équipement et PacketStatus
; Binaire serveur SHA-256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Séquences disassemblées de .text et vérifiées octet par octet.
; Attention : preuve statique, non une exécution instrumentée.

; Character::equip_object branche réussie | [0x4192cb, 0x419329[
; Après message équipement 0x0F, construction PacketStatus puis émission via virtual +0x14C.
  4192cb:	8b 17                	mov    edx,DWORD PTR [edi]
  4192cd:	6a 00                	push   0x0
  4192cf:	6a 00                	push   0x0
  4192d1:	56                   	push   esi
  4192d2:	6a 00                	push   0x0
  4192d4:	57                   	push   edi
  4192d5:	6a 0f                	push   0xf
  4192d7:	8b cf                	mov    ecx,edi
  4192d9:	ff 52 24             	call   DWORD PTR [edx+0x24]
  4192dc:	8d 4d b0             	lea    ecx,[ebp-0x50]
  4192df:	e8 0c cb 06 00       	call   0x485df0
  4192e4:	6a 00                	push   0x0
  4192e6:	8d 45 b0             	lea    eax,[ebp-0x50]
  4192e9:	50                   	push   eax
  4192ea:	8b ce                	mov    ecx,esi
  4192ec:	c7 45 fc 15 00 00 00 	mov    DWORD PTR [ebp-0x4],0x15
  4192f3:	e8 a8 62 00 00       	call   0x41f5a0
  4192f8:	8b 16                	mov    edx,DWORD PTR [esi]
  4192fa:	8d 45 b0             	lea    eax,[ebp-0x50]
  4192fd:	50                   	push   eax
  4192fe:	8b ce                	mov    ecx,esi
  419300:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  419306:	8d 4d b0             	lea    ecx,[ebp-0x50]
  419309:	e8 b2 cb 06 00       	call   0x485ec0
  41930e:	6a 00                	push   0x0
  419310:	8d 4d b0             	lea    ecx,[ebp-0x50]
  419313:	51                   	push   ecx
  419314:	8b ce                	mov    ecx,esi
  419316:	e8 25 5a 00 00       	call   0x41ed40
  41931b:	8b 16                	mov    edx,DWORD PTR [esi]
  41931d:	8d 45 b0             	lea    eax,[ebp-0x50]
  419320:	50                   	push   eax
  419321:	8b ce                	mov    ecx,esi
  419323:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]

; Character::unequip_object branche réussie | [0x4195b2, 0x419606[
; Après retrait de l objet et message 0x10, PacketStatus et émission virtuelle.
  4195b2:	38 5d 0c             	cmp    BYTE PTR [ebp+0xc],bl
  4195b5:	75 08                	jne    0x4195bf
  4195b7:	57                   	push   edi
  4195b8:	8b ce                	mov    ecx,esi
  4195ba:	e8 61 77 00 00       	call   0x420d20
  4195bf:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4195c2:	e8 29 c8 06 00       	call   0x485df0
  4195c7:	53                   	push   ebx
  4195c8:	8d 45 d0             	lea    eax,[ebp-0x30]
  4195cb:	50                   	push   eax
  4195cc:	8b ce                	mov    ecx,esi
  4195ce:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  4195d1:	e8 ca 5f 00 00       	call   0x41f5a0
  4195d6:	8b 16                	mov    edx,DWORD PTR [esi]
  4195d8:	8d 45 d0             	lea    eax,[ebp-0x30]
  4195db:	50                   	push   eax
  4195dc:	8b ce                	mov    ecx,esi
  4195de:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  4195e4:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4195e7:	e8 d4 c8 06 00       	call   0x485ec0
  4195ec:	53                   	push   ebx
  4195ed:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4195f0:	51                   	push   ecx
  4195f1:	8b ce                	mov    ecx,esi
  4195f3:	e8 48 57 00 00       	call   0x41ed40
  4195f8:	8b 16                	mov    edx,DWORD PTR [esi]
  4195fa:	8d 45 d0             	lea    eax,[ebp-0x30]
  4195fd:	50                   	push   eax
  4195fe:	8b ce                	mov    ecx,esi
  419600:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]

; Character::PacketStatus | [0x41f5a0, 0x41f7b0[
; Sérialisation avec GetSTR/GetINT/GetEND/GetAGI/GetWIS; largement déjà couverte passe45.
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
  41f695:	6a 00                	push   0x0
  41f697:	8b cf                	mov    ecx,edi
  41f699:	e8 b2 6a 06 00       	call   0x486150
  41f69e:	8b ce                	mov    ecx,esi
  41f6a0:	e8 2b eb 06 00       	call   0x48e1d0
  41f6a5:	8b cf                	mov    ecx,edi
  41f6a7:	50                   	push   eax
  41f6a8:	e8 a3 6a 06 00       	call   0x486150
  41f6ad:	8b ce                	mov    ecx,esi
  41f6af:	e8 bc ea 06 00       	call   0x48e170
  41f6b4:	50                   	push   eax
  41f6b5:	8b cf                	mov    ecx,edi
  41f6b7:	e8 94 6a 06 00       	call   0x486150
  41f6bc:	6a 00                	push   0x0
  41f6be:	8b cf                	mov    ecx,edi
  41f6c0:	e8 8b 6a 06 00       	call   0x486150
  41f6c5:	8b ce                	mov    ecx,esi
  41f6c7:	e8 64 f3 ff ff       	call   0x41ea30
  41f6cc:	8b cf                	mov    ecx,edi
  41f6ce:	50                   	push   eax
  41f6cf:	e8 7c 6a 06 00       	call   0x486150
  41f6d4:	8b ce                	mov    ecx,esi
  41f6d6:	e8 75 eb 06 00       	call   0x48e250
  41f6db:	8b cf                	mov    ecx,edi
  41f6dd:	50                   	push   eax
  41f6de:	e8 6d 6a 06 00       	call   0x486150
  41f6e3:	8b ce                	mov    ecx,esi
  41f6e5:	e8 56 eb 06 00       	call   0x48e240
  41f6ea:	8b cf                	mov    ecx,edi
  41f6ec:	50                   	push   eax
  41f6ed:	e8 5e 6a 06 00       	call   0x486150
  41f6f2:	8b ce                	mov    ecx,esi
  41f6f4:	e8 67 eb 06 00       	call   0x48e260
  41f6f9:	8b cf                	mov    ecx,edi
  41f6fb:	50                   	push   eax
  41f6fc:	e8 4f 6a 06 00       	call   0x486150
  41f701:	6a 00                	push   0x0
  41f703:	8b cf                	mov    ecx,edi
  41f705:	e8 46 6a 06 00       	call   0x486150
  41f70a:	8b ce                	mov    ecx,esi
  41f70c:	e8 5f eb 06 00       	call   0x48e270
  41f711:	8b cf                	mov    ecx,edi
  41f713:	50                   	push   eax
  41f714:	e8 37 6a 06 00       	call   0x486150
  41f719:	8b ce                	mov    ecx,esi
  41f71b:	e8 10 eb 06 00       	call   0x48e230
  41f720:	8b cf                	mov    ecx,edi
  41f722:	50                   	push   eax
  41f723:	e8 28 6a 06 00       	call   0x486150
  41f728:	6a 00                	push   0x0
  41f72a:	8b cf                	mov    ecx,edi
  41f72c:	e8 1f 6a 06 00       	call   0x486150
  41f731:	8b 16                	mov    edx,DWORD PTR [esi]
  41f733:	8b ce                	mov    ecx,esi
  41f735:	ff 92 3c 01 00 00    	call   DWORD PTR [edx+0x13c]
  41f73b:	8b cf                	mov    ecx,edi
  41f73d:	50                   	push   eax
  41f73e:	e8 0d 6a 06 00       	call   0x486150
  41f743:	8b 06                	mov    eax,DWORD PTR [esi]
  41f745:	8b ce                	mov    ecx,esi
  41f747:	ff 90 74 01 00 00    	call   DWORD PTR [eax+0x174]
  41f74d:	8b cf                	mov    ecx,edi
  41f74f:	50                   	push   eax
  41f750:	e8 fb 69 06 00       	call   0x486150
  41f755:	8b 16                	mov    edx,DWORD PTR [esi]
  41f757:	8b ce                	mov    ecx,esi
  41f759:	ff 92 98 01 00 00    	call   DWORD PTR [edx+0x198]
  41f75f:	50                   	push   eax
  41f760:	8b cf                	mov    ecx,edi
  41f762:	e8 e9 69 06 00       	call   0x486150
  41f767:	8b 06                	mov    eax,DWORD PTR [esi]
  41f769:	8b ce                	mov    ecx,esi
  41f76b:	ff 90 9c 01 00 00    	call   DWORD PTR [eax+0x19c]
  41f771:	50                   	push   eax
  41f772:	8b cf                	mov    ecx,edi
  41f774:	e8 d7 69 06 00       	call   0x486150
  41f779:	8b 16                	mov    edx,DWORD PTR [esi]
  41f77b:	8b ce                	mov    ecx,esi
  41f77d:	ff 92 b8 01 00 00    	call   DWORD PTR [edx+0x1b8]
  41f783:	50                   	push   eax
  41f784:	8b cf                	mov    ecx,edi
  41f786:	e8 c5 69 06 00       	call   0x486150
  41f78b:	8b 06                	mov    eax,DWORD PTR [esi]
  41f78d:	8b ce                	mov    ecx,esi
  41f78f:	ff 90 d0 00 00 00    	call   DWORD PTR [eax+0xd0]
  41f795:	50                   	push   eax
  41f796:	8b cf                	mov    ecx,edi
  41f798:	e8 b3 69 06 00       	call   0x486150
  41f79d:	5f                   	pop    edi
  41f79e:	5e                   	pop    esi
  41f79f:	5d                   	pop    ebp
  41f7a0:	c2 08 00             	ret    0x8
  41f7a3:	90                   	nop
  41f7a4:	90                   	nop
  41f7a5:	90                   	nop
  41f7a6:	90                   	nop
  41f7a7:	90                   	nop
  41f7a8:	90                   	nop
  41f7a9:	90                   	nop
  41f7aa:	90                   	nop
  41f7ab:	90                   	nop
  41f7ac:	90                   	nop
  41f7ad:	90                   	nop
  41f7ae:	90                   	nop
  41f7af:	90                   	nop

