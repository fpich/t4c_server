; PASSE 13 : preuve croisee; serveur sha256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc ; client sha256 569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68
; obtenu avec objdump -d -Mintel; pas de runtime

; A. Character::PacketStatus (fonction complete)

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

; B. Client handler S2C 43 (jusqu au prochain handler)

/mnt/data/t4c(2).exe:     file format pei-i386


Disassembly of section .text:

00498c54 <.text+0x97c54>:
  498c54:	68 98 ec 56 00       	push   0x56ec98
  498c59:	b9 98 db 88 00       	mov    ecx,0x88db98
  498c5e:	e8 1d aa 00 00       	call   0x4a3680
  498c63:	68 9c e5 88 00       	push   0x88e59c
  498c68:	8b cb                	mov    ecx,ebx
  498c6a:	e8 11 cd 01 00       	call   0x4b5980
  498c6f:	68 a4 e5 88 00       	push   0x88e5a4
  498c74:	8b cb                	mov    ecx,ebx
  498c76:	e8 05 cd 01 00       	call   0x4b5980
  498c7b:	68 a0 e5 88 00       	push   0x88e5a0
  498c80:	8b cb                	mov    ecx,ebx
  498c82:	e8 b9 cd 01 00       	call   0x4b5a40
  498c87:	68 a8 e5 88 00       	push   0x88e5a8
  498c8c:	8b cb                	mov    ecx,ebx
  498c8e:	e8 ad cd 01 00       	call   0x4b5a40
  498c93:	8d 45 08             	lea    eax,[ebp+0x8]
  498c96:	8b cb                	mov    ecx,ebx
  498c98:	50                   	push   eax
  498c99:	e8 e2 cc 01 00       	call   0x4b5980
  498c9e:	8d 4d ec             	lea    ecx,[ebp-0x14]
  498ca1:	51                   	push   ecx
  498ca2:	8b cb                	mov    ecx,ebx
  498ca4:	e8 d7 cc 01 00       	call   0x4b5980
  498ca9:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  498cac:	6a 01                	push   0x1
  498cae:	56                   	push   esi
  498caf:	56                   	push   esi
  498cb0:	52                   	push   edx
  498cb1:	e8 da 4d 08 00       	call   0x51da90
  498cb6:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  498cb9:	33 f6                	xor    esi,esi
  498cbb:	03 c1                	add    eax,ecx
  498cbd:	68 74 e5 88 00       	push   0x88e574
  498cc2:	13 d6                	adc    edx,esi
  498cc4:	8b cb                	mov    ecx,ebx
  498cc6:	a3 80 e5 88 00       	mov    ds:0x88e580,eax
  498ccb:	89 15 84 e5 88 00    	mov    DWORD PTR ds:0x88e584,edx
  498cd1:	e8 6a cd 01 00       	call   0x4b5a40
  498cd6:	68 50 e5 88 00       	push   0x88e550
  498cdb:	8b cb                	mov    ecx,ebx
  498cdd:	e8 5e cd 01 00       	call   0x4b5a40
  498ce2:	68 54 e5 88 00       	push   0x88e554
  498ce7:	8b cb                	mov    ecx,ebx
  498ce9:	e8 52 cd 01 00       	call   0x4b5a40
  498cee:	68 58 e5 88 00       	push   0x88e558
  498cf3:	8b cb                	mov    ecx,ebx
  498cf5:	e8 46 cd 01 00       	call   0x4b5a40
  498cfa:	68 70 e5 88 00       	push   0x88e570
  498cff:	8b cb                	mov    ecx,ebx
  498d01:	e8 3a cd 01 00       	call   0x4b5a40
  498d06:	68 60 e5 88 00       	push   0x88e560
  498d0b:	8b cb                	mov    ecx,ebx
  498d0d:	e8 2e cd 01 00       	call   0x4b5a40
  498d12:	68 64 e5 88 00       	push   0x88e564
  498d17:	8b cb                	mov    ecx,ebx
  498d19:	e8 22 cd 01 00       	call   0x4b5a40
  498d1e:	68 5c e5 88 00       	push   0x88e55c
  498d23:	8b cb                	mov    ecx,ebx
  498d25:	e8 16 cd 01 00       	call   0x4b5a40
  498d2a:	68 6c e5 88 00       	push   0x88e56c
  498d2f:	8b cb                	mov    ecx,ebx
  498d31:	e8 0a cd 01 00       	call   0x4b5a40
  498d36:	68 98 e5 88 00       	push   0x88e598
  498d3b:	8b cb                	mov    ecx,ebx
  498d3d:	e8 fe cc 01 00       	call   0x4b5a40
  498d42:	68 28 e5 88 00       	push   0x88e528
  498d47:	8b cb                	mov    ecx,ebx
  498d49:	e8 f2 cc 01 00       	call   0x4b5a40
  498d4e:	68 2c e5 88 00       	push   0x88e52c
  498d53:	8b cb                	mov    ecx,ebx
  498d55:	e8 e6 cc 01 00       	call   0x4b5a40
  498d5a:	68 44 e5 88 00       	push   0x88e544
  498d5f:	8b cb                	mov    ecx,ebx
  498d61:	e8 da cc 01 00       	call   0x4b5a40
  498d66:	68 34 e5 88 00       	push   0x88e534
  498d6b:	8b cb                	mov    ecx,ebx
  498d6d:	e8 ce cc 01 00       	call   0x4b5a40
  498d72:	68 38 e5 88 00       	push   0x88e538
  498d77:	8b cb                	mov    ecx,ebx
  498d79:	e8 c2 cc 01 00       	call   0x4b5a40
  498d7e:	68 30 e5 88 00       	push   0x88e530
  498d83:	8b cb                	mov    ecx,ebx
  498d85:	e8 b6 cc 01 00       	call   0x4b5a40
  498d8a:	68 40 e5 88 00       	push   0x88e540
  498d8f:	8b cb                	mov    ecx,ebx
  498d91:	e8 aa cc 01 00       	call   0x4b5a40
  498d96:	68 48 e5 88 00       	push   0x88e548
  498d9b:	8b cb                	mov    ecx,ebx
  498d9d:	e8 9e cc 01 00       	call   0x4b5a40
  498da2:	68 9a e5 88 00       	push   0x88e59a
  498da7:	8b cb                	mov    ecx,ebx
  498da9:	e8 92 cc 01 00       	call   0x4b5a40
  498dae:	68 b4 e5 88 00       	push   0x88e5b4
  498db3:	8b cb                	mov    ecx,ebx
  498db5:	e8 86 cc 01 00       	call   0x4b5a40
  498dba:	68 b6 e5 88 00       	push   0x88e5b6
  498dbf:	8b cb                	mov    ecx,ebx
  498dc1:	e8 7a cc 01 00       	call   0x4b5a40
  498dc6:	68 b8 e5 88 00       	push   0x88e5b8
  498dcb:	8b cb                	mov    ecx,ebx
  498dcd:	e8 6e cc 01 00       	call   0x4b5a40
  498dd2:	68 78 e5 88 00       	push   0x88e578
  498dd7:	8b cb                	mov    ecx,ebx
  498dd9:	e8 62 cc 01 00       	call   0x4b5a40
  498dde:	e8 3d ae f7 ff       	call   0x413c20
  498de3:	8b c8                	mov    ecx,eax
  498de5:	e8 d6 b0 f7 ff       	call   0x413ec0
  498dea:	e8 11 ac f9 ff       	call   0x433a00
  498def:	8b c8                	mov    ecx,eax
  498df1:	e8 ca c1 f9 ff       	call   0x434fc0
  498df6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  498df9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  498e00:	5f                   	pop    edi
  498e01:	5e                   	pop    esi
  498e02:	5b                   	pop    ebx
  498e03:	8b e5                	mov    esp,ebp
  498e05:	5d                   	pop    ebp
  498e06:	c3                   	ret

; C. TFCPacket serializer 16/32 bits

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00486150 <.text+0x85150>:
  486150:	55                   	push   ebp
  486151:	8b ec                	mov    ebp,esp
  486153:	51                   	push   ecx
  486154:	53                   	push   ebx
  486155:	66 8b 5d 08          	mov    bx,WORD PTR [ebp+0x8]
  486159:	56                   	push   esi
  48615a:	57                   	push   edi
  48615b:	8b f9                	mov    edi,ecx
  48615d:	8d 4d 0b             	lea    ecx,[ebp+0xb]
  486160:	51                   	push   ecx
  486161:	33 c0                	xor    eax,eax
  486163:	51                   	push   ecx
  486164:	8a c7                	mov    al,bh
  486166:	8d 77 04             	lea    esi,[edi+0x4]
  486169:	54                   	push   esp
  48616a:	8b ce                	mov    ecx,esi
  48616c:	88 45 0b             	mov    BYTE PTR [ebp+0xb],al
  48616f:	e8 bc 0a 00 00       	call   0x486c30
  486174:	8d 55 fc             	lea    edx,[ebp-0x4]
  486177:	52                   	push   edx
  486178:	8b ce                	mov    ecx,esi
  48617a:	e8 21 0b 00 00       	call   0x486ca0
  48617f:	8d 45 0b             	lea    eax,[ebp+0xb]
  486182:	50                   	push   eax
  486183:	51                   	push   ecx
  486184:	54                   	push   esp
  486185:	8b ce                	mov    ecx,esi
  486187:	88 5d 0b             	mov    BYTE PTR [ebp+0xb],bl
  48618a:	e8 a1 0a 00 00       	call   0x486c30
  48618f:	8d 4d fc             	lea    ecx,[ebp-0x4]
  486192:	51                   	push   ecx
  486193:	8b ce                	mov    ecx,esi
  486195:	e8 06 0b 00 00       	call   0x486ca0
  48619a:	8b c7                	mov    eax,edi
  48619c:	5f                   	pop    edi
  48619d:	5e                   	pop    esi
  48619e:	5b                   	pop    ebx
  48619f:	8b e5                	mov    esp,ebp
  4861a1:	5d                   	pop    ebp
  4861a2:	c2 04 00             	ret    0x4
  4861a5:	90                   	nop
  4861a6:	90                   	nop
  4861a7:	90                   	nop
  4861a8:	90                   	nop
  4861a9:	90                   	nop
  4861aa:	90                   	nop
  4861ab:	90                   	nop
  4861ac:	90                   	nop
  4861ad:	90                   	nop
  4861ae:	90                   	nop
  4861af:	90                   	nop
  4861b0:	55                   	push   ebp
  4861b1:	8b ec                	mov    ebp,esp
  4861b3:	51                   	push   ecx
  4861b4:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
  4861b7:	56                   	push   esi
  4861b8:	57                   	push   edi
  4861b9:	8b f1                	mov    esi,ecx
  4861bb:	8d 4d 0b             	lea    ecx,[ebp+0xb]
  4861be:	51                   	push   ecx
  4861bf:	51                   	push   ecx
  4861c0:	8d 7e 04             	lea    edi,[esi+0x4]
  4861c3:	54                   	push   esp
  4861c4:	8b cf                	mov    ecx,edi
  4861c6:	88 45 0b             	mov    BYTE PTR [ebp+0xb],al
  4861c9:	e8 62 0a 00 00       	call   0x486c30
  4861ce:	8d 55 fc             	lea    edx,[ebp-0x4]
  4861d1:	52                   	push   edx
  4861d2:	8b cf                	mov    ecx,edi
  4861d4:	e8 c7 0a 00 00       	call   0x486ca0
  4861d9:	5f                   	pop    edi
  4861da:	8b c6                	mov    eax,esi
  4861dc:	5e                   	pop    esi
  4861dd:	8b e5                	mov    esp,ebp
  4861df:	5d                   	pop    ebp
  4861e0:	c2 04 00             	ret    0x4
  4861e3:	90                   	nop
  4861e4:	90                   	nop
  4861e5:	90                   	nop
  4861e6:	90                   	nop
  4861e7:	90                   	nop
  4861e8:	90                   	nop
  4861e9:	90                   	nop
  4861ea:	90                   	nop
  4861eb:	90                   	nop
  4861ec:	90                   	nop
  4861ed:	90                   	nop
  4861ee:	90                   	nop
  4861ef:	90                   	nop
  4861f0:	55                   	push   ebp
  4861f1:	8b ec                	mov    ebp,esp
  4861f3:	83 ec 08             	sub    esp,0x8
  4861f6:	53                   	push   ebx
  4861f7:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  4861fa:	56                   	push   esi
  4861fb:	57                   	push   edi
  4861fc:	8b f9                	mov    edi,ecx
  4861fe:	8d 4d ff             	lea    ecx,[ebp-0x1]
  486201:	51                   	push   ecx
  486202:	33 c0                	xor    eax,eax
  486204:	51                   	push   ecx
  486205:	c1 eb 10             	shr    ebx,0x10
  486208:	8a c7                	mov    al,bh
  48620a:	8d 77 04             	lea    esi,[edi+0x4]
  48620d:	54                   	push   esp
  48620e:	8b ce                	mov    ecx,esi
  486210:	88 45 ff             	mov    BYTE PTR [ebp-0x1],al
  486213:	e8 18 0a 00 00       	call   0x486c30
  486218:	8d 55 f8             	lea    edx,[ebp-0x8]
  48621b:	52                   	push   edx
  48621c:	8b ce                	mov    ecx,esi
  48621e:	e8 7d 0a 00 00       	call   0x486ca0
  486223:	8d 45 ff             	lea    eax,[ebp-0x1]
  486226:	50                   	push   eax
  486227:	51                   	push   ecx
  486228:	54                   	push   esp
  486229:	8b ce                	mov    ecx,esi
  48622b:	88 5d ff             	mov    BYTE PTR [ebp-0x1],bl
  48622e:	e8 fd 09 00 00       	call   0x486c30
  486233:	8d 4d f8             	lea    ecx,[ebp-0x8]
  486236:	51                   	push   ecx
  486237:	8b ce                	mov    ecx,esi
  486239:	e8 62 0a 00 00       	call   0x486ca0
  48623e:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  486241:	8d 45 0b             	lea    eax,[ebp+0xb]
  486244:	50                   	push   eax
  486245:	33 d2                	xor    edx,edx
  486247:	51                   	push   ecx
  486248:	8a d7                	mov    dl,bh
  48624a:	54                   	push   esp
  48624b:	8b ce                	mov    ecx,esi
  48624d:	88 55 0b             	mov    BYTE PTR [ebp+0xb],dl
  486250:	e8 db 09 00 00       	call   0x486c30
  486255:	8d 4d f8             	lea    ecx,[ebp-0x8]
  486258:	51                   	push   ecx
  486259:	8b ce                	mov    ecx,esi
  48625b:	e8 40 0a 00 00       	call   0x486ca0
  486260:	8d 55 0b             	lea    edx,[ebp+0xb]
  486263:	52                   	push   edx
  486264:	51                   	push   ecx
  486265:	54                   	push   esp
  486266:	8b ce                	mov    ecx,esi
  486268:	88 5d 0b             	mov    BYTE PTR [ebp+0xb],bl
  48626b:	e8 c0 09 00 00       	call   0x486c30
  486270:	8d 45 f8             	lea    eax,[ebp-0x8]
  486273:	50                   	push   eax
  486274:	8b ce                	mov    ecx,esi
  486276:	e8 25 0a 00 00       	call   0x486ca0
  48627b:	8b c7                	mov    eax,edi
  48627d:	5f                   	pop    edi
  48627e:	5e                   	pop    esi
  48627f:	5b                   	pop    ebx
  486280:	8b e5                	mov    esp,ebp
  486282:	5d                   	pop    ebp
  486283:	c2                   	.byte 0xc2
  486284:	04                   	.byte 0x4

; D. Appelant / transition en jeu

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0047b823 <.text+0x7a823>:
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

