; vtables Character 0x4DE68C et Unit 0x4DF658 : dump des pointeurs et export correspondant
; lecture DWORD little-endian dans PE32 / section .rdata ; VA image 0x400000
; PAS de désassemblage exécuté sur serveur en cours d’exécution
; +0x1c Character 0x48b680 ?GetWL@Unit@@UAE?AUWorldPos@@XZ | Unit 0x48b680 ?GetWL@Unit@@UAE?AUWorldPos@@XZ
; +0x2c Character 0x48b940 ?GetAppearance@Unit@@UAEIXZ | Unit 0x48b940 ?GetAppearance@Unit@@UAEIXZ
; +0x54 Character 0x41d1b0 ?GetXP@Character@@UAE_JXZ | Unit 0x48b970 ?GetXP@Unit@@UAE_JXZ
; +0xcc Character 0x48bda0 ?GetMaxHP@Unit@@UAEKXZ | Unit 0x48bda0 ?GetMaxHP@Unit@@UAEKXZ
; +0xd0 Character 0x41d5f0 ?GetTrueMaxHP@Character@@UAEKXZ | Unit 0x48bd90 ?GetTrueMaxHP@Unit@@UAEKXZ
; +0xd8 Character 0x41d6a0 ?GetHP@Character@@UAEKXZ | Unit 0x48bde0 ?GetHP@Unit@@UAEKXZ
; +0xe0 Character 0x48be10 ?GetMaxMana@Unit@@UAEGXZ | Unit 0x48be10 ?GetMaxMana@Unit@@UAEGXZ
; +0xec Character 0x41d7b0 ?GetMana@Character@@UAEGXZ | Unit 0x48be60 ?GetMana@Unit@@UAEGXZ
; +0x104 Character 0x41d850 ?GetGold@Character@@UAEHXZ | Unit 0x48be80 ?GetGold@Unit@@UAEHXZ
; +0x13c Character 0x48c300 ?GetLevel@Unit@@UAEGXZ | Unit 0x48c300 ?GetLevel@Unit@@UAEGXZ
; +0x14c Character 0x41dd80 ?SendPlayerMessage@Character@@UAEXAAVTFCPacket@@@Z | Unit 0x48c350 ?SendPlayerMessage@Unit@@UAEXAAVTFCPacket@@@Z
; +0x168 Character 0x41ea40 ?GetAC@Character@@UAENXZ | Unit 0x48c6e0 ?GetAC@Unit@@UAENXZ
; +0x174 Character 0x41ea00 ?GetSkillPoints@Character@@UAEGXZ | Unit 0x48c7a0 ?GetSkillPoints@Unit@@UAEGXZ
; +0x198 Character 0x41f800 ?GetWeight@Character@@UAEHXZ | Unit 0x48f4f0 ?GetWeight@Unit@@UAEHXZ
; +0x19c Character 0x41f7c0 ?GetMaxWeight@Character@@UAEHXZ | Unit 0x48f520 ?GetMaxWeight@Unit@@UAEHXZ
; +0x1ac Character 0x48f560 ?PacketUnitInformation@Unit@@UAEXAAVTFCPacket@@@Z | Unit 0x48f560 ?PacketUnitInformation@Unit@@UAEXAAVTFCPacket@@@Z
; +0x1b8 Character 0x422f50 ?GetKarma@Unit@@UAEHXZ | Unit 0x422f50 ?GetKarma@Unit@@UAEHXZ
; +0x1c0 Character 0x41fb70 ?PacketPuppetInfo@Character@@UAEXAAVTFCPacket@@@Z | Unit 0x48f620 ?PacketPuppetInfo@Unit@@UAEXAAVTFCPacket@@@Z
; +0x1c4 Character 0x48af10 ?DeleteUnit@Unit@@UAE_NXZ | Unit 0x48af10 ?DeleteUnit@Unit@@UAE_NXZ
; +0x1c8 Character 0x48b030 ?CreateVirtualUnit@Unit@@UAEXXZ | Unit 0x48b030 ?CreateVirtualUnit@Unit@@UAEXXZ
; +0x1d0 Character 0x422f60 ?GetInvisibleQuery@Unit@@UAEPAVQueryInvisible@1@XZ | Unit 0x422f60 ?GetInvisibleQuery@Unit@@UAEPAVQueryInvisible@1@XZ

; A: Character::PacketStatus 0x41F5A0

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0041f5a0 <.text+0x1e5a0>:
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

; B: Character::SendPlayerMessage 0x41DD80

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0041dd80 <.text+0x1cd80>:
  41dd80:	55                   	push   ebp
  41dd81:	8b ec                	mov    ebp,esp
  41dd83:	56                   	push   esi
  41dd84:	8b b1 78 01 00 00    	mov    esi,DWORD PTR [ecx+0x178]
  41dd8a:	85 f6                	test   esi,esi
  41dd8c:	57                   	push   edi
  41dd8d:	74 48                	je     0x41ddd7
  41dd8f:	6a 01                	push   0x1
  41dd91:	6a 00                	push   0x0
  41dd93:	6a 00                	push   0x0
  41dd95:	83 c8 ff             	or     eax,0xffffffff
  41dd98:	83 ec 0c             	sub    esp,0xc
  41dd9b:	8b fc                	mov    edi,esp
  41dd9d:	89 07                	mov    DWORD PTR [edi],eax
  41dd9f:	83 c9 ff             	or     ecx,0xffffffff
  41dda2:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  41dda5:	6a ff                	push   0xffffffff
  41dda7:	83 ca ff             	or     edx,0xffffffff
  41ddaa:	89 57 08             	mov    DWORD PTR [edi+0x8],edx
  41ddad:	83 c6 24             	add    esi,0x24
  41ddb0:	8b 0e                	mov    ecx,DWORD PTR [esi]
  41ddb2:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  41ddb5:	83 ec 10             	sub    esp,0x10
  41ddb8:	8b c4                	mov    eax,esp
  41ddba:	89 08                	mov    DWORD PTR [eax],ecx
  41ddbc:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  41ddbf:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  41ddc2:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  41ddc5:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  41ddc8:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  41ddcb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  41ddce:	50                   	push   eax
  41ddcf:	e8 ac 35 03 00       	call   0x451380
  41ddd4:	83 c4 30             	add    esp,0x30
  41ddd7:	5f                   	pop    edi
  41ddd8:	5e                   	pop    esi
  41ddd9:	5d                   	pop    ebp
  41ddda:	c2                   	.byte 0xc2

; C: session PutPlayerInGame/Status/46 0x47B750

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0047b750 <.text+0x7a750>:
  47b750:	55                   	push   ebp
  47b751:	8b ec                	mov    ebp,esp
  47b753:	6a ff                	push   0xffffffff
  47b755:	68 c8 94 4d 00       	push   0x4d94c8
  47b75a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  47b760:	50                   	push   eax
  47b761:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  47b768:	83 ec 34             	sub    esp,0x34
  47b76b:	53                   	push   ebx
  47b76c:	56                   	push   esi
  47b76d:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  47b770:	8b 46 5c             	mov    eax,DWORD PTR [esi+0x5c]
  47b773:	57                   	push   edi
  47b774:	33 ff                	xor    edi,edi
  47b776:	3b c7                	cmp    eax,edi
  47b778:	89 65 f0             	mov    DWORD PTR [ebp-0x10],esp
  47b77b:	0f 85 53 02 00 00    	jne    0x47b9d4
  47b781:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b784:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  47b787:	e8 64 a6 00 00       	call   0x485df0
  47b78c:	39 7e 48             	cmp    DWORD PTR [esi+0x48],edi
  47b78f:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  47b793:	0f 84 aa 01 00 00    	je     0x47b943
  47b799:	39 7e 44             	cmp    DWORD PTR [esi+0x44],edi
  47b79c:	0f 85 a1 01 00 00    	jne    0x47b943
  47b7a2:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b7a5:	e8 f6 30 fa ff       	call   0x41e8a0
  47b7aa:	8a d8                	mov    bl,al
  47b7ac:	88 5d 0c             	mov    BYTE PTR [ebp+0xc],bl
  47b7af:	e8 9c 88 fd ff       	call   0x454050
  47b7b4:	56                   	push   esi
  47b7b5:	8b c8                	mov    ecx,eax
  47b7b7:	e8 24 bd fa ff       	call   0x4274e0
  47b7bc:	84 db                	test   bl,bl
  47b7be:	0f 85 f3 00 00 00    	jne    0x47b8b7
  47b7c4:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  47b7c7:	c7 46 44 01 00 00 00 	mov    DWORD PTR [esi+0x44],0x1
  47b7ce:	89 7e 48             	mov    DWORD PTR [esi+0x48],edi
  47b7d1:	88 98 b0 00 00 00    	mov    BYTE PTR [eax+0xb0],bl
  47b7d7:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b7da:	e8 11 32 01 00       	call   0x48e9f0
  47b7df:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b7e2:	8b 01                	mov    eax,DWORD PTR [ecx]
  47b7e4:	57                   	push   edi
  47b7e5:	68 d3 76 00 00       	push   0x76d3
  47b7ea:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  47b7ed:	3b c7                	cmp    eax,edi
  47b7ef:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b7f2:	7e 07                	jle    0x47b7fb
  47b7f4:	e8 07 6f fa ff       	call   0x422700
  47b7f9:	eb 28                	jmp    0x47b823
  47b7fb:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b7fd:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b800:	50                   	push   eax
  47b801:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b804:	8b 10                	mov    edx,DWORD PTR [eax]
  47b806:	6a 01                	push   0x1
  47b808:	83 ec 0c             	sub    esp,0xc
  47b80b:	8b cc                	mov    ecx,esp
  47b80d:	89 11                	mov    DWORD PTR [ecx],edx
  47b80f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  47b812:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  47b815:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  47b818:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  47b81b:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b81e:	e8 bd 3f 01 00       	call   0x48f7e0
  47b823:	8d 4d d8             	lea    ecx,[ebp-0x28]
  47b826:	e8 c5 a5 00 00       	call   0x485df0
  47b82b:	57                   	push   edi
  47b82c:	8d 4d d8             	lea    ecx,[ebp-0x28]
  47b82f:	51                   	push   ecx
  47b830:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b833:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  47b837:	e8 64 3d fa ff       	call   0x41f5a0
  47b83c:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b83f:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b841:	8d 45 d8             	lea    eax,[ebp-0x28]
  47b844:	50                   	push   eax
  47b845:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  47b84b:	8d 4d d8             	lea    ecx,[ebp-0x28]
  47b84e:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  47b852:	e8 29 a6 00 00       	call   0x485e80
  47b857:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b85a:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b85c:	ff 52 2c             	call   DWORD PTR [edx+0x2c]
  47b85f:	66 3d 1b 27          	cmp    ax,0x271b
  47b863:	74 06                	je     0x47b86b
  47b865:	66 3d 1c 27          	cmp    ax,0x271c
  47b869:	75 4c                	jne    0x47b8b7
  47b86b:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b86e:	8b 01                	mov    eax,DWORD PTR [ecx]
  47b870:	8d 55 c0             	lea    edx,[ebp-0x40]
  47b873:	52                   	push   edx
  47b874:	ff 90 c0 01 00 00    	call   DWORD PTR [eax+0x1c0]
  47b87a:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b87d:	8b 01                	mov    eax,DWORD PTR [ecx]
  47b87f:	ff 90 d0 01 00 00    	call   DWORD PTR [eax+0x1d0]
  47b885:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b888:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b88a:	8b f8                	mov    edi,eax
  47b88c:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b88f:	50                   	push   eax
  47b890:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b893:	57                   	push   edi
  47b894:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b897:	51                   	push   ecx
  47b898:	8b 08                	mov    ecx,DWORD PTR [eax]
  47b89a:	6a 14                	push   0x14
  47b89c:	83 ec 0c             	sub    esp,0xc
  47b89f:	8b d4                	mov    edx,esp
  47b8a1:	89 0a                	mov    DWORD PTR [edx],ecx
  47b8a3:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  47b8a6:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  47b8a9:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  47b8ac:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  47b8af:	e8 3c 42 f9 ff       	call   0x40faf0
  47b8b4:	83 c4 18             	add    esp,0x18
  47b8b7:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b8ba:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b8bc:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b8bf:	50                   	push   eax
  47b8c0:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b8c3:	33 c9                	xor    ecx,ecx
  47b8c5:	66 8b 48 08          	mov    cx,WORD PTR [eax+0x8]
  47b8c9:	51                   	push   ecx
  47b8ca:	e8 f1 65 ff ff       	call   0x471ec0
  47b8cf:	8b f8                	mov    edi,eax
  47b8d1:	83 c4 04             	add    esp,0x4
  47b8d4:	85 ff                	test   edi,edi
  47b8d6:	74 3b                	je     0x47b913
  47b8d8:	8b ce                	mov    ecx,esi
  47b8da:	e8 01 92 fd ff       	call   0x454ae0
  47b8df:	83 e0 02             	and    eax,0x2
  47b8e2:	33 c9                	xor    ecx,ecx
  47b8e4:	0b c1                	or     eax,ecx
  47b8e6:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
  47b8e9:	75 28                	jne    0x47b913
  47b8eb:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b8ee:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b8f0:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b8f3:	50                   	push   eax
  47b8f4:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b8f7:	8b 10                	mov    edx,DWORD PTR [eax]
  47b8f9:	83 ec 0c             	sub    esp,0xc
  47b8fc:	8b cc                	mov    ecx,esp
  47b8fe:	89 11                	mov    DWORD PTR [ecx],edx
  47b900:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  47b903:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  47b906:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  47b909:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  47b90c:	8b cf                	mov    ecx,edi
  47b90e:	e8 dd 6c 03 00       	call   0x4b25f0
  47b913:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b916:	e8 a5 a5 00 00       	call   0x485ec0
  47b91b:	6a 2e                	push   0x2e
  47b91d:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b920:	e8 2b a8 00 00       	call   0x486150
  47b925:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  47b928:	51                   	push   ecx
  47b929:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b92c:	e8 7f a8 00 00       	call   0x4861b0
  47b931:	85 ff                	test   edi,edi
  47b933:	0f 84 8f 00 00 00    	je     0x47b9c8
  47b939:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b93c:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b93e:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b941:	eb 4c                	jmp    0x47b98f
  47b943:	6a 2e                	push   0x2e
  47b945:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b948:	e8 03 a8 00 00       	call   0x486150
  47b94d:	6a 01                	push   0x1
  47b94f:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b952:	e8 59 a8 00 00       	call   0x4861b0
  47b957:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b95a:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b95c:	8d 45 c0             	lea    eax,[ebp-0x40]
  47b95f:	50                   	push   eax
  47b960:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  47b966:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b969:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b96b:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b96e:	50                   	push   eax
  47b96f:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b972:	33 c9                	xor    ecx,ecx
  47b974:	66 8b 48 08          	mov    cx,WORD PTR [eax+0x8]
  47b978:	51                   	push   ecx
  47b979:	e8 42 65 ff ff       	call   0x471ec0
  47b97e:	8b f8                	mov    edi,eax
  47b980:	83 c4 04             	add    esp,0x4
  47b983:	85 ff                	test   edi,edi
  47b985:	74 41                	je     0x47b9c8
  47b987:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b98a:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b98c:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b98f:	50                   	push   eax
  47b990:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b993:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b996:	51                   	push   ecx
  47b997:	6a 14                	push   0x14
  47b999:	8d 55 c0             	lea    edx,[ebp-0x40]
  47b99c:	52                   	push   edx
  47b99d:	8b 10                	mov    edx,DWORD PTR [eax]
  47b99f:	83 ec 0c             	sub    esp,0xc
  47b9a2:	8b cc                	mov    ecx,esp
  47b9a4:	89 11                	mov    DWORD PTR [ecx],edx
  47b9a6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  47b9a9:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  47b9ac:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  47b9af:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  47b9b2:	8b cf                	mov    ecx,edi
  47b9b4:	e8 87 52 03 00       	call   0x4b0c40
  47b9b9:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b9bc:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b9be:	8d 45 c0             	lea    eax,[ebp-0x40]
  47b9c1:	50                   	push   eax
  47b9c2:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  47b9c8:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b9cb:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  47b9cf:	e8 ac a4 00 00       	call   0x485e80
  47b9d4:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  47b9d7:	5f                   	pop    edi
  47b9d8:	5e                   	pop    esi
  47b9d9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  47b9e0:	5b                   	pop    ebx
  47b9e1:	8b e5                	mov    esp,ebp
  47b9e3:	5d                   	pop    ebp
  47b9e4:	c3                   	ret

; D: WorldMap::packet_inview_units 0x4B0C40

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004b0c40 <.text+0xafc40>:
  4b0c40:	55                   	push   ebp
  4b0c41:	8b ec                	mov    ebp,esp
  4b0c43:	6a ff                	push   0xffffffff
  4b0c45:	68 9e c7 4d 00       	push   0x4dc79e
  4b0c4a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4b0c50:	50                   	push   eax
  4b0c51:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4b0c58:	81 ec 90 00 00 00    	sub    esp,0x90
  4b0c5e:	53                   	push   ebx
  4b0c5f:	56                   	push   esi
  4b0c60:	8b f1                	mov    esi,ecx
  4b0c62:	8b 06                	mov    eax,DWORD PTR [esi]
  4b0c64:	57                   	push   edi
  4b0c65:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4b0c68:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4b0c6b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4b0c6e:	81 e1 ff 00 00 00    	and    ecx,0xff
  4b0c74:	8b c2                	mov    eax,edx
  4b0c76:	2b c1                	sub    eax,ecx
  4b0c78:	79 04                	jns    0x4b0c7e
  4b0c7a:	33 ff                	xor    edi,edi
  4b0c7c:	eb 05                	jmp    0x4b0c83
  4b0c7e:	c1 f8 02             	sar    eax,0x2
  4b0c81:	8b f8                	mov    edi,eax
  4b0c83:	33 c0                	xor    eax,eax
  4b0c85:	66 8b 46 2c          	mov    ax,WORD PTR [esi+0x2c]
  4b0c89:	03 d1                	add    edx,ecx
  4b0c8b:	3b d0                	cmp    edx,eax
  4b0c8d:	7e 09                	jle    0x4b0c98
  4b0c8f:	48                   	dec    eax
  4b0c90:	c1 f8 02             	sar    eax,0x2
  4b0c93:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  4b0c96:	eb 06                	jmp    0x4b0c9e
  4b0c98:	c1 fa 02             	sar    edx,0x2
  4b0c9b:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
  4b0c9e:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4b0ca1:	8b c2                	mov    eax,edx
  4b0ca3:	2b c1                	sub    eax,ecx
  4b0ca5:	79 09                	jns    0x4b0cb0
  4b0ca7:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
  4b0cae:	eb 06                	jmp    0x4b0cb6
  4b0cb0:	c1 f8 02             	sar    eax,0x2
  4b0cb3:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  4b0cb6:	33 c0                	xor    eax,eax
  4b0cb8:	66 8b 46 2e          	mov    ax,WORD PTR [esi+0x2e]
  4b0cbc:	03 ca                	add    ecx,edx
  4b0cbe:	3b c8                	cmp    ecx,eax
  4b0cc0:	7e 0b                	jle    0x4b0ccd
  4b0cc2:	8d 58 ff             	lea    ebx,[eax-0x1]
  4b0cc5:	c1 fb 02             	sar    ebx,0x2
  4b0cc8:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  4b0ccb:	eb 08                	jmp    0x4b0cd5
  4b0ccd:	c1 f9 02             	sar    ecx,0x2
  4b0cd0:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
  4b0cd3:	8b d9                	mov    ebx,ecx
  4b0cd5:	8d 4d a8             	lea    ecx,[ebp-0x58]
  4b0cd8:	51                   	push   ecx
  4b0cd9:	c7 45 a0 8c e5 4d 00 	mov    DWORD PTR [ebp-0x60],0x4de58c
  4b0ce0:	c7 45 a4 ff ff ff ff 	mov    DWORD PTR [ebp-0x5c],0xffffffff
  4b0ce7:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  4b0ced:	33 c9                	xor    ecx,ecx
  4b0cef:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
  4b0cf2:	89 4d c8             	mov    DWORD PTR [ebp-0x38],ecx
  4b0cf5:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
  4b0cf8:	89 4d d0             	mov    DWORD PTR [ebp-0x30],ecx
  4b0cfb:	c7 45 a0 6c e6 4d 00 	mov    DWORD PTR [ebp-0x60],0x4de66c
  4b0d02:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
  4b0d05:	c6 45 d4 08          	mov    BYTE PTR [ebp-0x2c],0x8
  4b0d09:	89 4d d8             	mov    DWORD PTR [ebp-0x28],ecx
  4b0d0c:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
  4b0d0f:	8b c7                	mov    eax,edi
  4b0d11:	25 ff ff 00 00       	and    eax,0xffff
  4b0d16:	3b c2                	cmp    eax,edx
  4b0d18:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
  4b0d1b:	89 7d 94             	mov    DWORD PTR [ebp-0x6c],edi
  4b0d1e:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4b0d21:	0f 83 65 01 00 00    	jae    0x4b0e8c
  4b0d27:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  4b0d2a:	81 e2 ff ff 00 00    	and    edx,0xffff
  4b0d30:	89 55 88             	mov    DWORD PTR [ebp-0x78],edx
  4b0d33:	3b d3                	cmp    edx,ebx
  4b0d35:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  4b0d38:	89 45 98             	mov    DWORD PTR [ebp-0x68],eax
  4b0d3b:	0f 83 31 01 00 00    	jae    0x4b0e72
  4b0d41:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
  4b0d44:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
  4b0d47:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  4b0d4a:	8b 04 b8             	mov    eax,DWORD PTR [eax+edi*4]
  4b0d4d:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  4b0d50:	39 0c b8             	cmp    DWORD PTR [eax+edi*4],ecx
  4b0d53:	0f 84 02 01 00 00    	je     0x4b0e5b
  4b0d59:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  4b0d5c:	89 4d 18             	mov    DWORD PTR [ebp+0x18],ecx
  4b0d5f:	c7 45 9c 04 00 00 00 	mov    DWORD PTR [ebp-0x64],0x4
  4b0d66:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  4b0d69:	c7 45 90 04 00 00 00 	mov    DWORD PTR [ebp-0x70],0x4
  4b0d70:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
  4b0d73:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  4b0d76:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  4b0d79:	89 95 6c ff ff ff    	mov    DWORD PTR [ebp-0x94],edx
  4b0d7f:	8b 14 88             	mov    edx,DWORD PTR [eax+ecx*4]
  4b0d82:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4b0d85:	8b 3c 82             	mov    edi,DWORD PTR [edx+eax*4]
  4b0d88:	8b 16                	mov    edx,DWORD PTR [esi]
  4b0d8a:	8b ce                	mov    ecx,esi
  4b0d8c:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4b0d8f:	8a 45 1f             	mov    al,BYTE PTR [ebp+0x1f]
  4b0d92:	6a 00                	push   0x0
  4b0d94:	8d 8d 78 ff ff ff    	lea    ecx,[ebp-0x88]
  4b0d9a:	88 85 78 ff ff ff    	mov    BYTE PTR [ebp-0x88],al
  4b0da0:	e8 9b 1c 00 00       	call   0x4b2a40
  4b0da5:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  4b0da8:	8d 8d 78 ff ff ff    	lea    ecx,[ebp-0x88]
  4b0dae:	51                   	push   ecx
  4b0daf:	53                   	push   ebx
  4b0db0:	52                   	push   edx
  4b0db1:	8b cf                	mov    ecx,edi
  4b0db3:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4b0db7:	e8 a4 fe f5 ff       	call   0x410c60
  4b0dbc:	8b 85 7c ff ff ff    	mov    eax,DWORD PTR [ebp-0x84]
  4b0dc2:	3b 45 80             	cmp    eax,DWORD PTR [ebp-0x80]
  4b0dc5:	8b c8                	mov    ecx,eax
  4b0dc7:	89 4d 8c             	mov    DWORD PTR [ebp-0x74],ecx
  4b0dca:	74 4f                	je     0x4b0e1b
  4b0dcc:	8b 39                	mov    edi,DWORD PTR [ecx]
  4b0dce:	85 ff                	test   edi,edi
  4b0dd0:	74 39                	je     0x4b0e0b
  4b0dd2:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4b0dd5:	8b 95 6c ff ff ff    	mov    edx,DWORD PTR [ebp-0x94]
  4b0ddb:	83 ec 0c             	sub    esp,0xc
  4b0dde:	8b c4                	mov    eax,esp
  4b0de0:	89 08                	mov    DWORD PTR [eax],ecx
  4b0de2:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  4b0de5:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  4b0de8:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  4b0deb:	50                   	push   eax
  4b0dec:	57                   	push   edi
  4b0ded:	8b ce                	mov    ecx,esi
  4b0def:	e8 dc e7 ff ff       	call   0x4af5d0
  4b0df4:	84 c0                	test   al,al
  4b0df6:	74 13                	je     0x4b0e0b
  4b0df8:	8b 17                	mov    edx,DWORD PTR [edi]
  4b0dfa:	8b cf                	mov    ecx,edi
  4b0dfc:	ff 92 c8 01 00 00    	call   DWORD PTR [edx+0x1c8]
  4b0e02:	57                   	push   edi
  4b0e03:	8d 4d a0             	lea    ecx,[ebp-0x60]
  4b0e06:	e8 b5 d4 f9 ff       	call   0x44e2c0
  4b0e0b:	8b 4d 8c             	mov    ecx,DWORD PTR [ebp-0x74]
  4b0e0e:	8b 45 80             	mov    eax,DWORD PTR [ebp-0x80]
  4b0e11:	83 c1 04             	add    ecx,0x4
  4b0e14:	3b c8                	cmp    ecx,eax
  4b0e16:	89 4d 8c             	mov    DWORD PTR [ebp-0x74],ecx
  4b0e19:	75 b1                	jne    0x4b0dcc
  4b0e1b:	8b 06                	mov    eax,DWORD PTR [esi]
  4b0e1d:	8b ce                	mov    ecx,esi
  4b0e1f:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4b0e22:	8d 8d 78 ff ff ff    	lea    ecx,[ebp-0x88]
  4b0e28:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  4b0e2c:	e8 5f 1c 00 00       	call   0x4b2a90
  4b0e31:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
  4b0e34:	43                   	inc    ebx
  4b0e35:	48                   	dec    eax
  4b0e36:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
  4b0e39:	0f 85 31 ff ff ff    	jne    0x4b0d70
  4b0e3f:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4b0e42:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
  4b0e45:	41                   	inc    ecx
  4b0e46:	48                   	dec    eax
  4b0e47:	89 4d 18             	mov    DWORD PTR [ebp+0x18],ecx
  4b0e4a:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
  4b0e4d:	0f 85 13 ff ff ff    	jne    0x4b0d66
  4b0e53:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
  4b0e56:	8b 55 88             	mov    edx,DWORD PTR [ebp-0x78]
  4b0e59:	33 c9                	xor    ecx,ecx
  4b0e5b:	8b 45 98             	mov    eax,DWORD PTR [ebp-0x68]
  4b0e5e:	40                   	inc    eax
  4b0e5f:	89 45 98             	mov    DWORD PTR [ebp-0x68],eax
  4b0e62:	25 ff ff 00 00       	and    eax,0xffff
  4b0e67:	3b c3                	cmp    eax,ebx
  4b0e69:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4b0e6c:	0f 82 d2 fe ff ff    	jb     0x4b0d44
  4b0e72:	8b 45 94             	mov    eax,DWORD PTR [ebp-0x6c]
  4b0e75:	8b 7d e8             	mov    edi,DWORD PTR [ebp-0x18]
  4b0e78:	40                   	inc    eax
  4b0e79:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
  4b0e7c:	25 ff ff 00 00       	and    eax,0xffff
  4b0e81:	3b c7                	cmp    eax,edi
  4b0e83:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4b0e86:	0f 82 a7 fe ff ff    	jb     0x4b0d33
  4b0e8c:	8b 16                	mov    edx,DWORD PTR [esi]
  4b0e8e:	8b ce                	mov    ecx,esi
  4b0e90:	ff 52 08             	call   DWORD PTR [edx+0x8]
  4b0e93:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
  4b0e96:	33 db                	xor    ebx,ebx
  4b0e98:	3b c3                	cmp    eax,ebx
  4b0e9a:	0f 8e d9 00 00 00    	jle    0x4b0f79
  4b0ea0:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  4b0ea3:	6a 10                	push   0x10
  4b0ea5:	8b cf                	mov    ecx,edi
  4b0ea7:	e8 a4 52 fd ff       	call   0x486150
  4b0eac:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
  4b0eaf:	50                   	push   eax
  4b0eb0:	8b cf                	mov    ecx,edi
  4b0eb2:	e8 99 52 fd ff       	call   0x486150
  4b0eb7:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
  4b0eba:	8b c2                	mov    eax,edx
  4b0ebc:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
  4b0ebf:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  4b0ec2:	c6 45 d4 08          	mov    BYTE PTR [ebp-0x2c],0x8
  4b0ec6:	39 5d e0             	cmp    DWORD PTR [ebp-0x20],ebx
  4b0ec9:	74 07                	je     0x4b0ed2
  4b0ecb:	8b 00                	mov    eax,DWORD PTR [eax]
  4b0ecd:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
  4b0ed0:	eb 07                	jmp    0x4b0ed9
  4b0ed2:	c7 45 e0 01 00 00 00 	mov    DWORD PTR [ebp-0x20],0x1
  4b0ed9:	3b c3                	cmp    eax,ebx
  4b0edb:	0f 84 9b 00 00 00    	je     0x4b0f7c
  4b0ee1:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
  4b0ee4:	8b 16                	mov    edx,DWORD PTR [esi]
  4b0ee6:	8d 45 08             	lea    eax,[ebp+0x8]
  4b0ee9:	50                   	push   eax
  4b0eea:	8b ce                	mov    ecx,esi
  4b0eec:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4b0eef:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4b0ef2:	51                   	push   ecx
  4b0ef3:	8b cf                	mov    ecx,edi
  4b0ef5:	e8 56 52 fd ff       	call   0x486150
  4b0efa:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4b0efd:	52                   	push   edx
  4b0efe:	8b cf                	mov    ecx,edi
  4b0f00:	e8 4b 52 fd ff       	call   0x486150
  4b0f05:	8b 06                	mov    eax,DWORD PTR [esi]
  4b0f07:	8b ce                	mov    ecx,esi
  4b0f09:	ff 50 2c             	call   DWORD PTR [eax+0x2c]
  4b0f0c:	66 3d 1b 27          	cmp    ax,0x271b
  4b0f10:	74 06                	je     0x4b0f18
  4b0f12:	66 3d 1c 27          	cmp    ax,0x271c
  4b0f16:	75 41                	jne    0x4b0f59
  4b0f18:	8d 8d 70 ff ff ff    	lea    ecx,[ebp-0x90]
  4b0f1e:	e8 cd 4e fd ff       	call   0x485df0
  4b0f23:	8b 16                	mov    edx,DWORD PTR [esi]
  4b0f25:	8d 85 70 ff ff ff    	lea    eax,[ebp-0x90]
  4b0f2b:	50                   	push   eax
  4b0f2c:	8b ce                	mov    ecx,esi
  4b0f2e:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  4b0f32:	ff 92 c0 01 00 00    	call   DWORD PTR [edx+0x1c0]
  4b0f38:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  4b0f3b:	8b 11                	mov    edx,DWORD PTR [ecx]
  4b0f3d:	8d 85 70 ff ff ff    	lea    eax,[ebp-0x90]
  4b0f43:	50                   	push   eax
  4b0f44:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  4b0f4a:	8d 8d 70 ff ff ff    	lea    ecx,[ebp-0x90]
  4b0f50:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  4b0f54:	e8 27 4f fd ff       	call   0x485e80
  4b0f59:	8b 16                	mov    edx,DWORD PTR [esi]
  4b0f5b:	57                   	push   edi
  4b0f5c:	8b ce                	mov    ecx,esi
  4b0f5e:	ff 92 ac 01 00 00    	call   DWORD PTR [edx+0x1ac]
  4b0f64:	8b 06                	mov    eax,DWORD PTR [esi]
  4b0f66:	8b ce                	mov    ecx,esi
  4b0f68:	ff 90 c4 01 00 00    	call   DWORD PTR [eax+0x1c4]
  4b0f6e:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  4b0f71:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
  4b0f74:	e9 4d ff ff ff       	jmp    0x4b0ec6
  4b0f79:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
  4b0f7c:	8b 75 d8             	mov    esi,DWORD PTR [ebp-0x28]
  4b0f7f:	8b c2                	mov    eax,edx
  4b0f81:	33 c9                	xor    ecx,ecx
  4b0f83:	c7 45 a0 6c e6 4d 00 	mov    DWORD PTR [ebp-0x60],0x4de66c
  4b0f8a:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
  4b0f8d:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
  4b0f90:	c6 45 d4 08          	mov    BYTE PTR [ebp-0x2c],0x8
  4b0f94:	3b cb                	cmp    ecx,ebx
  4b0f96:	74 07                	je     0x4b0f9f
  4b0f98:	8b 00                	mov    eax,DWORD PTR [eax]
  4b0f9a:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
  4b0f9d:	eb 08                	jmp    0x4b0fa7
  4b0f9f:	b9 01 00 00 00       	mov    ecx,0x1
  4b0fa4:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
  4b0fa7:	3b c3                	cmp    eax,ebx
  4b0fa9:	0f 84 a7 00 00 00    	je     0x4b1056
  4b0faf:	ff 4d d8             	dec    DWORD PTR [ebp-0x28]
  4b0fb2:	8b 4d c8             	mov    ecx,DWORD PTR [ebp-0x38]
  4b0fb5:	3b c1                	cmp    eax,ecx
  4b0fb7:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  4b0fba:	74 38                	je     0x4b0ff4
  4b0fbc:	3b c2                	cmp    eax,edx
  4b0fbe:	74 54                	je     0x4b1014
  4b0fc0:	8b 08                	mov    ecx,DWORD PTR [eax]
  4b0fc2:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4b0fc5:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4b0fc8:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  4b0fcb:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4b0fce:	8b 10                	mov    edx,DWORD PTR [eax]
  4b0fd0:	89 11                	mov    DWORD PTR [ecx],edx
  4b0fd2:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  4b0fd5:	83 f8 01             	cmp    eax,0x1
  4b0fd8:	75 0b                	jne    0x4b0fe5
  4b0fda:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  4b0fdd:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4b0fe0:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
  4b0fe3:	eb 57                	jmp    0x4b103c
  4b0fe5:	83 f8 02             	cmp    eax,0x2
  4b0fe8:	75 52                	jne    0x4b103c
  4b0fea:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
  4b0fed:	8b 02                	mov    eax,DWORD PTR [edx]
  4b0fef:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
  4b0ff2:	eb 48                	jmp    0x4b103c
  4b0ff4:	3b c2                	cmp    eax,edx
  4b0ff6:	74 1c                	je     0x4b1014
  4b0ff8:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4b0ffb:	89 19                	mov    DWORD PTR [ecx],ebx
  4b0ffd:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  4b1000:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4b1003:	89 55 c8             	mov    DWORD PTR [ebp-0x38],edx
  4b1006:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  4b1009:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
  4b100c:	83 7d e0 02          	cmp    DWORD PTR [ebp-0x20],0x2
  4b1010:	75 2a                	jne    0x4b103c
  4b1012:	eb 25                	jmp    0x4b1039
  4b1014:	3b c1                	cmp    eax,ecx
  4b1016:	74 18                	je     0x4b1030
  4b1018:	8b 08                	mov    ecx,DWORD PTR [eax]
  4b101a:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  4b101d:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
  4b1020:	8b 02                	mov    eax,DWORD PTR [edx]
  4b1022:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
  4b1025:	89 45 c4             	mov    DWORD PTR [ebp-0x3c],eax
  4b1028:	83 7d e0 01          	cmp    DWORD PTR [ebp-0x20],0x1
  4b102c:	75 0e                	jne    0x4b103c
  4b102e:	eb 09                	jmp    0x4b1039
  4b1030:	89 5d c0             	mov    DWORD PTR [ebp-0x40],ebx
  4b1033:	89 5d c4             	mov    DWORD PTR [ebp-0x3c],ebx
  4b1036:	89 5d c8             	mov    DWORD PTR [ebp-0x38],ebx
  4b1039:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  4b103c:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  4b103f:	50                   	push   eax
  4b1040:	e8 1b 10 f9 ff       	call   0x442060
  4b1045:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  4b1048:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
  4b104b:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  4b104e:	83 c4 04             	add    esp,0x4
  4b1051:	e9 3e ff ff ff       	jmp    0x4b0f94
  4b1056:	3b cb                	cmp    ecx,ebx
  4b1058:	74 04                	je     0x4b105e
  4b105a:	c6 45 d4 07          	mov    BYTE PTR [ebp-0x2c],0x7
  4b105e:	8d 4d a8             	lea    ecx,[ebp-0x58]
  4b1061:	51                   	push   ecx
  4b1062:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  4b1065:	c7 45 a0 8c e5 4d 00 	mov    DWORD PTR [ebp-0x60],0x4de58c
  4b106c:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
  4b1072:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4b1075:	5f                   	pop    edi
  4b1076:	8b c6                	mov    eax,esi
  4b1078:	5e                   	pop    esi
  4b1079:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4b1080:	5b                   	pop    ebx
  4b1081:	8b e5                	mov    esp,ebp
  4b1083:	5d                   	pop    ebp
  4b1084:	c2 18 00             	ret    0x18

; E: Unit::PacketUnitInformation

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0048f560 <.text+0x8e560>:
  48f560:	55                   	push   ebp
  48f561:	8b ec                	mov    ebp,esp
  48f563:	53                   	push   ebx
  48f564:	56                   	push   esi
  48f565:	8b f1                	mov    esi,ecx
  48f567:	8b 06                	mov    eax,DWORD PTR [esi]
  48f569:	57                   	push   edi
  48f56a:	ff 50 2c             	call   DWORD PTR [eax+0x2c]
  48f56d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  48f570:	50                   	push   eax
  48f571:	8b cb                	mov    ecx,ebx
  48f573:	e8 d8 6b ff ff       	call   0x486150
  48f578:	8b 4e 78             	mov    ecx,DWORD PTR [esi+0x78]
  48f57b:	51                   	push   ecx
  48f57c:	8b cb                	mov    ecx,ebx
  48f57e:	e8 6d 6c ff ff       	call   0x4861f0
  48f583:	0f be be af 00 00 00 	movsx  edi,BYTE PTR [esi+0xaf]
  48f58a:	6a 0b                	push   0xb
  48f58c:	8b ce                	mov    ecx,esi
  48f58e:	e8 cd e8 ff ff       	call   0x48de60
  48f593:	03 f8                	add    edi,eax
  48f595:	83 ff 9c             	cmp    edi,0xffffff9c
  48f598:	7d 07                	jge    0x48f5a1
  48f59a:	bf 9c ff ff ff       	mov    edi,0xffffff9c
  48f59f:	eb 0a                	jmp    0x48f5ab
  48f5a1:	83 ff 64             	cmp    edi,0x64
  48f5a4:	7e 05                	jle    0x48f5ab
  48f5a6:	bf 64 00 00 00       	mov    edi,0x64
  48f5ab:	57                   	push   edi
  48f5ac:	8b cb                	mov    ecx,ebx
  48f5ae:	e8 fd 6b ff ff       	call   0x4861b0
  48f5b3:	8b ce                	mov    ecx,esi
  48f5b5:	e8 16 ff ff ff       	call   0x48f4d0
  48f5ba:	8b cb                	mov    ecx,ebx
  48f5bc:	50                   	push   eax
  48f5bd:	e8 ee 6b ff ff       	call   0x4861b0
  48f5c2:	8b 16                	mov    edx,DWORD PTR [esi]
  48f5c4:	8b ce                	mov    ecx,esi
  48f5c6:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  48f5cc:	85 c0                	test   eax,eax
  48f5ce:	75 0f                	jne    0x48f5df
  48f5d0:	50                   	push   eax
  48f5d1:	8b cb                	mov    ecx,ebx
  48f5d3:	e8 d8 6b ff ff       	call   0x4861b0
  48f5d8:	5f                   	pop    edi
  48f5d9:	5e                   	pop    esi
  48f5da:	5b                   	pop    ebx
  48f5db:	5d                   	pop    ebp
  48f5dc:	c2 04 00             	ret    0x4
  48f5df:	8b 06                	mov    eax,DWORD PTR [esi]
  48f5e1:	8b ce                	mov    ecx,esi
  48f5e3:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  48f5e9:	8b 16                	mov    edx,DWORD PTR [esi]
  48f5eb:	8d 04 80             	lea    eax,[eax+eax*4]
  48f5ee:	8d 3c 80             	lea    edi,[eax+eax*4]
  48f5f1:	8b ce                	mov    ecx,esi
  48f5f3:	c1 e7 02             	shl    edi,0x2
  48f5f6:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  48f5fc:	8b c8                	mov    ecx,eax
  48f5fe:	33 d2                	xor    edx,edx
  48f600:	8b c7                	mov    eax,edi
  48f602:	f7 f1                	div    ecx
  48f604:	8b cb                	mov    ecx,ebx
  48f606:	50                   	push   eax
  48f607:	e8 a4 6b ff ff       	call   0x4861b0
  48f60c:	5f                   	pop    edi
  48f60d:	5e                   	pop    esi
  48f60e:	5b                   	pop    ebx
  48f60f:	5d                   	pop    ebp
  48f610:	c2 04 00             	ret    0x4

; F: Client handler 46

/mnt/data/t4c(2).exe:     file format pei-i386


Disassembly of section .text:

004a2a30 <.text+0xa1a30>:
  4a2a30:	55                   	push   ebp
  4a2a31:	8b ec                	mov    ebp,esp
  4a2a33:	6a ff                	push   0xffffffff
  4a2a35:	68 30 92 53 00       	push   0x539230
  4a2a3a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a2a40:	50                   	push   eax
  4a2a41:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a2a48:	83 ec 28             	sub    esp,0x28
  4a2a4b:	53                   	push   ebx
  4a2a4c:	56                   	push   esi
  4a2a4d:	57                   	push   edi
  4a2a4e:	33 f6                	xor    esi,esi
  4a2a50:	89 65 f0             	mov    DWORD PTR [ebp-0x10],esp
  4a2a53:	68 3c ed 56 00       	push   0x56ed3c
  4a2a58:	b9 98 db 88 00       	mov    ecx,0x88db98
  4a2a5d:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  4a2a60:	e8 1b 0c 00 00       	call   0x4a3680
  4a2a65:	56                   	push   esi
  4a2a66:	6a 2e                	push   0x2e
  4a2a68:	8b c8                	mov    ecx,eax
  4a2a6a:	e8 a1 0c 00 00       	call   0x4a3710
  4a2a6f:	68 48 ed 56 00       	push   0x56ed48
  4a2a74:	8b c8                	mov    ecx,eax
  4a2a76:	e8 05 0c 00 00       	call   0x4a3680
  4a2a7b:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  4a2a7e:	8d 45 e8             	lea    eax,[ebp-0x18]
  4a2a81:	50                   	push   eax
  4a2a82:	8b cf                	mov    ecx,edi
  4a2a84:	89 35 44 9a 69 00    	mov    DWORD PTR ds:0x699a44,esi
  4a2a8a:	c6 05 d0 6a 5a 00 01 	mov    BYTE PTR ds:0x5a6ad0,0x1
  4a2a91:	c6 05 5d 9a 69 00 00 	mov    BYTE PTR ds:0x699a5d,0x0
  4a2a98:	e8 33 30 01 00       	call   0x4b5ad0
  4a2a9d:	8d 4d e8             	lea    ecx,[ebp-0x18]
  4a2aa0:	51                   	push   ecx
  4a2aa1:	8b cf                	mov    ecx,edi
  4a2aa3:	e8 98 2f 01 00       	call   0x4b5a40
  4a2aa8:	8d 55 e0             	lea    edx,[ebp-0x20]
  4a2aab:	8b cf                	mov    ecx,edi
  4a2aad:	52                   	push   edx
  4a2aae:	e8 8d 2f 01 00       	call   0x4b5a40
  4a2ab3:	68 f0 ed 56 00       	push   0x56edf0
  4a2ab8:	b9 98 db 88 00       	mov    ecx,0x88db98
  4a2abd:	e8 be 0b 00 00       	call   0x4a3680
  4a2ac2:	8b c8                	mov    ecx,eax
  4a2ac4:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  4a2ac7:	25 ff ff 00 00       	and    eax,0xffff
  4a2acc:	99                   	cdq
  4a2acd:	52                   	push   edx
  4a2ace:	50                   	push   eax
  4a2acf:	e8 3c 0c 00 00       	call   0x4a3710
  4a2ad4:	68 2c 78 56 00       	push   0x56782c
  4a2ad9:	8b c8                	mov    ecx,eax
  4a2adb:	e8 a0 0b 00 00       	call   0x4a3680
  4a2ae0:	bb d4 61 00 00       	mov    ebx,0x61d4
  4a2ae5:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  4a2ae8:	25 ff ff 00 00       	and    eax,0xffff
  4a2aed:	3b f0                	cmp    esi,eax
  4a2aef:	0f 83 f5 01 00 00    	jae    0x4a2cea
  4a2af5:	8d 4d e8             	lea    ecx,[ebp-0x18]
  4a2af8:	51                   	push   ecx
  4a2af9:	8b cf                	mov    ecx,edi
  4a2afb:	e8 40 2f 01 00       	call   0x4b5a40
  4a2b00:	8d 55 d4             	lea    edx,[ebp-0x2c]
  4a2b03:	8b cf                	mov    ecx,edi
  4a2b05:	52                   	push   edx
  4a2b06:	e8 35 2f 01 00       	call   0x4b5a40
  4a2b0b:	8d 45 ec             	lea    eax,[ebp-0x14]
  4a2b0e:	8b cf                	mov    ecx,edi
  4a2b10:	50                   	push   eax
  4a2b11:	e8 2a 2f 01 00       	call   0x4b5a40
  4a2b16:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  4a2b19:	51                   	push   ecx
  4a2b1a:	8b cf                	mov    ecx,edi
  4a2b1c:	e8 5f 2e 01 00       	call   0x4b5980
  4a2b21:	8d 55 d8             	lea    edx,[ebp-0x28]
  4a2b24:	8b cf                	mov    ecx,edi
  4a2b26:	52                   	push   edx
  4a2b27:	e8 a4 2f 01 00       	call   0x4b5ad0
  4a2b2c:	8d 45 dc             	lea    eax,[ebp-0x24]
  4a2b2f:	8b cf                	mov    ecx,edi
  4a2b31:	50                   	push   eax
  4a2b32:	e8 99 2f 01 00       	call   0x4b5ad0
  4a2b37:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4a2b3a:	51                   	push   ecx
  4a2b3b:	8b cf                	mov    ecx,edi
  4a2b3d:	e8 8e 2f 01 00       	call   0x4b5ad0
  4a2b42:	68 f0 ed 56 00       	push   0x56edf0
  4a2b47:	b9 98 db 88 00       	mov    ecx,0x88db98
  4a2b4c:	e8 2f 0b 00 00       	call   0x4a3680
  4a2b51:	8b c8                	mov    ecx,eax
  4a2b53:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  4a2b56:	25 ff ff 00 00       	and    eax,0xffff
  4a2b5b:	99                   	cdq
  4a2b5c:	52                   	push   edx
  4a2b5d:	50                   	push   eax
  4a2b5e:	e8 ad 0b 00 00       	call   0x4a3710
  4a2b63:	68 54 8c 56 00       	push   0x568c54
  4a2b68:	8b c8                	mov    ecx,eax
  4a2b6a:	e8 11 0b 00 00       	call   0x4a3680
  4a2b6f:	8b c8                	mov    ecx,eax
  4a2b71:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  4a2b74:	25 ff ff 00 00       	and    eax,0xffff
  4a2b79:	99                   	cdq
  4a2b7a:	52                   	push   edx
  4a2b7b:	50                   	push   eax
  4a2b7c:	e8 8f 0b 00 00       	call   0x4a3710
  4a2b81:	68 54 8c 56 00       	push   0x568c54
  4a2b86:	8b c8                	mov    ecx,eax
  4a2b88:	e8 f3 0a 00 00       	call   0x4a3680
  4a2b8d:	8b c8                	mov    ecx,eax
  4a2b8f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4a2b92:	25 ff ff 00 00       	and    eax,0xffff
  4a2b97:	99                   	cdq
  4a2b98:	52                   	push   edx
  4a2b99:	50                   	push   eax
  4a2b9a:	e8 71 0b 00 00       	call   0x4a3710
  4a2b9f:	68 54 8c 56 00       	push   0x568c54
  4a2ba4:	8b c8                	mov    ecx,eax
  4a2ba6:	e8 d5 0a 00 00       	call   0x4a3680
  4a2bab:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  4a2bae:	6a 00                	push   0x0
  4a2bb0:	52                   	push   edx
  4a2bb1:	8b c8                	mov    ecx,eax
  4a2bb3:	e8 58 0b 00 00       	call   0x4a3710
  4a2bb8:	68 54 8c 56 00       	push   0x568c54
  4a2bbd:	8b c8                	mov    ecx,eax
  4a2bbf:	e8 bc 0a 00 00       	call   0x4a3680
  4a2bc4:	8b c8                	mov    ecx,eax
  4a2bc6:	0f be 45 d8          	movsx  eax,BYTE PTR [ebp-0x28]
  4a2bca:	99                   	cdq
  4a2bcb:	52                   	push   edx
  4a2bcc:	50                   	push   eax
  4a2bcd:	e8 3e 0b 00 00       	call   0x4a3710
  4a2bd2:	68 54 8c 56 00       	push   0x568c54
  4a2bd7:	8b c8                	mov    ecx,eax
  4a2bd9:	e8 a2 0a 00 00       	call   0x4a3680
  4a2bde:	8b c8                	mov    ecx,eax
  4a2be0:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  4a2be3:	25 ff 00 00 00       	and    eax,0xff
  4a2be8:	99                   	cdq
  4a2be9:	52                   	push   edx
  4a2bea:	50                   	push   eax
  4a2beb:	e8 20 0b 00 00       	call   0x4a3710
  4a2bf0:	68 2c 78 56 00       	push   0x56782c
  4a2bf5:	8b c8                	mov    ecx,eax
  4a2bf7:	e8 84 0a 00 00       	call   0x4a3680
  4a2bfc:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4a2bff:	66 3d 12 27          	cmp    ax,0x2712
  4a2c03:	75 09                	jne    0x4a2c0e
  4a2c05:	c7 45 ec 47 4e 00 00 	mov    DWORD PTR [ebp-0x14],0x4e47
  4a2c0c:	eb 63                	jmp    0x4a2c71
  4a2c0e:	66 3d 9a 3a          	cmp    ax,0x3a9a
  4a2c12:	75 09                	jne    0x4a2c1d
  4a2c14:	c7 45 ec cf 61 00 00 	mov    DWORD PTR [ebp-0x14],0x61cf
  4a2c1b:	eb 54                	jmp    0x4a2c71
  4a2c1d:	66 3d 14 27          	cmp    ax,0x2714
  4a2c21:	75 09                	jne    0x4a2c2c
  4a2c23:	c7 45 ec 4a 4e 00 00 	mov    DWORD PTR [ebp-0x14],0x4e4a
  4a2c2a:	eb 45                	jmp    0x4a2c71
  4a2c2c:	66 3d 9c 3a          	cmp    ax,0x3a9c
  4a2c30:	75 09                	jne    0x4a2c3b
  4a2c32:	c7 45 ec d2 61 00 00 	mov    DWORD PTR [ebp-0x14],0x61d2
  4a2c39:	eb 36                	jmp    0x4a2c71
  4a2c3b:	66 3d 11 27          	cmp    ax,0x2711
  4a2c3f:	75 09                	jne    0x4a2c4a
  4a2c41:	c7 45 ec 4b 4e 00 00 	mov    DWORD PTR [ebp-0x14],0x4e4b
  4a2c48:	eb 27                	jmp    0x4a2c71
  4a2c4a:	66 3d 99 3a          	cmp    ax,0x3a99
  4a2c4e:	75 09                	jne    0x4a2c59
  4a2c50:	c7 45 ec d3 61 00 00 	mov    DWORD PTR [ebp-0x14],0x61d3
  4a2c57:	eb 18                	jmp    0x4a2c71
  4a2c59:	66 3d 13 27          	cmp    ax,0x2713
  4a2c5d:	75 09                	jne    0x4a2c68
  4a2c5f:	c7 45 ec 4c 4e 00 00 	mov    DWORD PTR [ebp-0x14],0x4e4c
  4a2c66:	eb 09                	jmp    0x4a2c71
  4a2c68:	66 3d 9b 3a          	cmp    ax,0x3a9b
  4a2c6c:	75 03                	jne    0x4a2c71
  4a2c6e:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  4a2c71:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  4a2c74:	8b 0d bc e0 88 00    	mov    ecx,DWORD PTR ds:0x88e0bc
  4a2c7a:	3b c1                	cmp    eax,ecx
  4a2c7c:	74 66                	je     0x4a2ce4
  4a2c7e:	6a 15                	push   0x15
  4a2c80:	b9 08 0f 89 00       	mov    ecx,0x890f08
  4a2c85:	e8 76 7f 02 00       	call   0x4cac00
  4a2c8a:	68 f8 03 00 00       	push   0x3f8
  4a2c8f:	b9 f8 ed 8a 00       	mov    ecx,0x8aedf8
  4a2c94:	e8 57 13 07 00       	call   0x513ff0
  4a2c99:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  4a2c9c:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  4a2c9f:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
  4a2ca2:	6a 00                	push   0x0
  4a2ca4:	6a 00                	push   0x0
  4a2ca6:	6a 00                	push   0x0
  4a2ca8:	6a 02                	push   0x2
  4a2caa:	51                   	push   ecx
  4a2cab:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
  4a2cae:	6a 00                	push   0x0
  4a2cb0:	52                   	push   edx
  4a2cb1:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
  4a2cb4:	50                   	push   eax
  4a2cb5:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4a2cb8:	51                   	push   ecx
  4a2cb9:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
  4a2cbc:	52                   	push   edx
  4a2cbd:	50                   	push   eax
  4a2cbe:	51                   	push   ecx
  4a2cbf:	b9 f8 ed 8a 00       	mov    ecx,0x8aedf8
  4a2cc4:	e8 a7 42 06 00       	call   0x506f70
  4a2cc9:	68 f8 03 00 00       	push   0x3f8
  4a2cce:	b9 f8 ed 8a 00       	mov    ecx,0x8aedf8
  4a2cd3:	e8 28 13 07 00       	call   0x514000
  4a2cd8:	6a 15                	push   0x15
  4a2cda:	b9 08 0f 89 00       	mov    ecx,0x890f08
  4a2cdf:	e8 4c 7f 02 00       	call   0x4cac30
  4a2ce4:	46                   	inc    esi
  4a2ce5:	e9 fb fd ff ff       	jmp    0x4a2ae5
  4a2cea:	b9 50 41 5b 00       	mov    ecx,0x5b4150
  4a2cef:	e8 3c 8b fc ff       	call   0x46b830
  4a2cf4:	a0 64 37 57 00       	mov    al,ds:0x573764
  4a2cf9:	84 c0                	test   al,al
  4a2cfb:	75 3e                	jne    0x4a2d3b
  4a2cfd:	a0 65 37 57 00       	mov    al,ds:0x573765
  4a2d02:	6a 02                	push   0x2
  4a2d04:	84 c0                	test   al,al
  4a2d06:	74 18                	je     0x4a2d20
  4a2d08:	68 e8 ed 56 00       	push   0x56ede8
  4a2d0d:	b9 d0 72 61 00       	mov    ecx,0x6172d0
  4a2d12:	e8 09 40 ff ff       	call   0x496d20
  4a2d17:	6a 00                	push   0x0
  4a2d19:	b9 d0 72 61 00       	mov    ecx,0x6172d0
  4a2d1e:	eb 16                	jmp    0x4a2d36
  4a2d20:	68 dc ed 56 00       	push   0x56eddc
  4a2d25:	b9 28 75 61 00       	mov    ecx,0x617528
  4a2d2a:	e8 f1 3f ff ff       	call   0x496d20
  4a2d2f:	6a 00                	push   0x0
  4a2d31:	b9 28 75 61 00       	mov    ecx,0x617528
  4a2d36:	e8 65 40 ff ff       	call   0x496da0
  4a2d3b:	68 cc ed 56 00       	push   0x56edcc
  4a2d40:	b9 98 db 88 00       	mov    ecx,0x88db98
  4a2d45:	e8 36 09 00 00       	call   0x4a3680
  4a2d4a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a2d4d:	5f                   	pop    edi
  4a2d4e:	5e                   	pop    esi
  4a2d4f:	64                   	fs
  4a2d50:	89                   	.byte 0x89
