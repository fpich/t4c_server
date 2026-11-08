
/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00414550 <.text+0x13550>:
  414550:	d8 8b 43 24 51 8d    	fmul   DWORD PTR [ebx-0x72aedbbd]
  414556:	55                   	push   ebp
  414557:	ec                   	in     al,dx
  414558:	68 54 15 50 00       	push   0x501554
  41455d:	52                   	push   edx
  41455e:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
  414561:	c7 43 40 00 00 00 00 	mov    DWORD PTR [ebx+0x40],0x0
  414568:	c6 43 34 08          	mov    BYTE PTR [ebx+0x34],0x8
  41456c:	e8 23 d5 0b 00       	call   0x4d1a94
  414571:	6a 08                	push   0x8
  414573:	e8 78 da 02 00       	call   0x441ff0
  414578:	8b d8                	mov    ebx,eax
  41457a:	83 c4 10             	add    esp,0x10
  41457d:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  414580:	85 db                	test   ebx,ebx
  414582:	c6 45 fc 0d          	mov    BYTE PTR [ebp-0x4],0xd
  414586:	74 0d                	je     0x414595
  414588:	8d 4b 04             	lea    ecx,[ebx+0x4]
  41458b:	e8 ce d4 0b 00       	call   0x4d1a5e
  414590:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  414593:	eb 07                	jmp    0x41459c
  414595:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  41459c:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  41459f:	8d 45 ec             	lea    eax,[ebp-0x14]
  4145a2:	50                   	push   eax
  4145a3:	83 c1 04             	add    ecx,0x4
  4145a6:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  4145aa:	e8 97 d4 0b 00       	call   0x4d1a46
  4145af:	8b 47 28             	mov    eax,DWORD PTR [edi+0x28]
  4145b2:	8b 57 38             	mov    edx,DWORD PTR [edi+0x38]
  4145b5:	33 db                	xor    ebx,ebx
  4145b7:	42                   	inc    edx
  4145b8:	3b c3                	cmp    eax,ebx
  4145ba:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  4145bd:	89 5f 40             	mov    DWORD PTR [edi+0x40],ebx
  4145c0:	c6 47 34 08          	mov    BYTE PTR [edi+0x34],0x8
  4145c4:	89 47 2c             	mov    DWORD PTR [edi+0x2c],eax
  4145c7:	89 57 38             	mov    DWORD PTR [edi+0x38],edx
  4145ca:	6a 0c                	push   0xc
  4145cc:	75 28                	jne    0x4145f6
  4145ce:	e8 1d da 02 00       	call   0x441ff0
  4145d3:	83 c4 04             	add    esp,0x4
  4145d6:	3b c3                	cmp    eax,ebx
  4145d8:	74 07                	je     0x4145e1
  4145da:	89 18                	mov    DWORD PTR [eax],ebx
  4145dc:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  4145df:	eb 02                	jmp    0x4145e3
  4145e1:	33 c0                	xor    eax,eax
  4145e3:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  4145e6:	89 47 28             	mov    DWORD PTR [edi+0x28],eax
  4145e9:	89 47 24             	mov    DWORD PTR [edi+0x24],eax
  4145ec:	89 18                	mov    DWORD PTR [eax],ebx
  4145ee:	8b 57 20             	mov    edx,DWORD PTR [edi+0x20]
  4145f1:	89 5a 04             	mov    DWORD PTR [edx+0x4],ebx
  4145f4:	eb 2b                	jmp    0x414621
  4145f6:	e8 f5 d9 02 00       	call   0x441ff0
  4145fb:	83 c4 04             	add    esp,0x4
  4145fe:	3b c3                	cmp    eax,ebx
  414600:	74 07                	je     0x414609
  414602:	89 18                	mov    DWORD PTR [eax],ebx
  414604:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  414607:	eb 02                	jmp    0x41460b
  414609:	33 c0                	xor    eax,eax
  41460b:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  41460e:	89 01                	mov    DWORD PTR [ecx],eax
  414610:	8b 57 2c             	mov    edx,DWORD PTR [edi+0x2c]
  414613:	89 47 28             	mov    DWORD PTR [edi+0x28],eax
  414616:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  414619:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  41461c:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  41461f:	89 18                	mov    DWORD PTR [eax],ebx
  414621:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  414624:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  414627:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  41462a:	39 9e 00 04 00 00    	cmp    DWORD PTR [esi+0x400],ebx
  414630:	74 10                	je     0x414642
  414632:	8b 86 e0 03 00 00    	mov    eax,DWORD PTR [esi+0x3e0]
  414638:	8b 08                	mov    ecx,DWORD PTR [eax]
  41463a:	89 8e e0 03 00 00    	mov    DWORD PTR [esi+0x3e0],ecx
  414640:	eb 0a                	jmp    0x41464c
  414642:	c7 86 00 04 00 00 01 	mov    DWORD PTR [esi+0x400],0x1
  414649:	00 00 00 
  41464c:	39 9e e0 03 00 00    	cmp    DWORD PTR [esi+0x3e0],ebx
  414652:	0f 84 f3 00 00 00    	je     0x41474b
  414658:	39 5d e4             	cmp    DWORD PTR [ebp-0x1c],ebx
  41465b:	0f 85 ff 00 00 00    	jne    0x414760
  414661:	8b 96 e0 03 00 00    	mov    edx,DWORD PTR [esi+0x3e0]
  414667:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  41466a:	8b 00                	mov    eax,DWORD PTR [eax]
  41466c:	50                   	push   eax
  41466d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
  414670:	50                   	push   eax
  414671:	8d 4d ec             	lea    ecx,[ebp-0x14]
  414674:	68 14 15 50 00       	push   0x501514
  414679:	51                   	push   ecx
  41467a:	e8 15 d4 0b 00       	call   0x4d1a94
  41467f:	6a 08                	push   0x8
  414681:	e8 6a d9 02 00       	call   0x441ff0
  414686:	8b d8                	mov    ebx,eax
  414688:	83 c4 14             	add    esp,0x14
  41468b:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  41468e:	85 db                	test   ebx,ebx
  414690:	c6 45 fc 0e          	mov    BYTE PTR [ebp-0x4],0xe
  414694:	74 0f                	je     0x4146a5
  414696:	8d 4b 04             	lea    ecx,[ebx+0x4]
  414699:	e8 c0 d3 0b 00       	call   0x4d1a5e
  41469e:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  4146a1:	33 db                	xor    ebx,ebx
  4146a3:	eb 05                	jmp    0x4146aa
  4146a5:	33 db                	xor    ebx,ebx
  4146a7:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  4146aa:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  4146ad:	8d 55 ec             	lea    edx,[ebp-0x14]
  4146b0:	52                   	push   edx
  4146b1:	8d 48 04             	lea    ecx,[eax+0x4]
  4146b4:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  4146b8:	e8 89 d3 0b 00       	call   0x4d1a46
  4146bd:	8b 47 28             	mov    eax,DWORD PTR [edi+0x28]
  4146c0:	8b 57 38             	mov    edx,DWORD PTR [edi+0x38]
  4146c3:	42                   	inc    edx
  4146c4:	3b c3                	cmp    eax,ebx
  4146c6:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  4146c9:	89 5f 40             	mov    DWORD PTR [edi+0x40],ebx
  4146cc:	c6 47 34 08          	mov    BYTE PTR [edi+0x34],0x8
  4146d0:	89 47 2c             	mov    DWORD PTR [edi+0x2c],eax
  4146d3:	89 57 38             	mov    DWORD PTR [edi+0x38],edx
  4146d6:	6a 0c                	push   0xc
  4146d8:	75 36                	jne    0x414710
  4146da:	e8 11 d9 02 00       	call   0x441ff0
  4146df:	83 c4 04             	add    esp,0x4
  4146e2:	3b c3                	cmp    eax,ebx
  4146e4:	74 07                	je     0x4146ed
  4146e6:	89 18                	mov    DWORD PTR [eax],ebx
  4146e8:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  4146eb:	eb 02                	jmp    0x4146ef
  4146ed:	33 c0                	xor    eax,eax
  4146ef:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  4146f2:	89 47 28             	mov    DWORD PTR [edi+0x28],eax
  4146f5:	89 47 24             	mov    DWORD PTR [edi+0x24],eax
  4146f8:	89 18                	mov    DWORD PTR [eax],ebx
  4146fa:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  4146fd:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  414700:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  414703:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  414706:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  414709:	33 db                	xor    ebx,ebx
  41470b:	e9 1a ff ff ff       	jmp    0x41462a
  414710:	e8 db d8 02 00       	call   0x441ff0
  414715:	83 c4 04             	add    esp,0x4
  414718:	3b c3                	cmp    eax,ebx
  41471a:	74 07                	je     0x414723
  41471c:	89 18                	mov    DWORD PTR [eax],ebx
  41471e:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  414721:	eb 02                	jmp    0x414725
  414723:	33 c0                	xor    eax,eax
  414725:	8b 57 20             	mov    edx,DWORD PTR [edi+0x20]
  414728:	89 02                	mov    DWORD PTR [edx],eax
  41472a:	8b 4f 2c             	mov    ecx,DWORD PTR [edi+0x2c]
  41472d:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  414730:	89 47 28             	mov    DWORD PTR [edi+0x28],eax
  414733:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  414736:	8b 57 20             	mov    edx,DWORD PTR [edi+0x20]
  414739:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  41473c:	89 1a                	mov    DWORD PTR [edx],ebx
  41473e:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  414741:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  414744:	33 db                	xor    ebx,ebx
  414746:	e9 df fe ff ff       	jmp    0x41462a
  41474b:	39 9e 00 04 00 00    	cmp    DWORD PTR [esi+0x400],ebx
  414751:	74 07                	je     0x41475a
  414753:	c6 86 f4 03 00 00 07 	mov    BYTE PTR [esi+0x3f4],0x7
  41475a:	89 9e 00 04 00 00    	mov    DWORD PTR [esi+0x400],ebx
  414760:	8b 96 c0 03 00 00    	mov    edx,DWORD PTR [esi+0x3c0]
  414766:	8d 8e c0 03 00 00    	lea    ecx,[esi+0x3c0]
  41476c:	ff 52 08             	call   DWORD PTR [edx+0x8]
  41476f:	68 04 15 50 00       	push   0x501504
  414774:	68 00 08 00 00       	push   0x800
  414779:	e8 c2 d5 05 00       	call   0x471d40
  41477e:	83 c4 08             	add    esp,0x8
  414781:	8b ce                	mov    ecx,esi
  414783:	e8 78 6f 07 00       	call   0x48b700
  414788:	50                   	push   eax
  414789:	57                   	push   edi
  41478a:	8b ce                	mov    ecx,esi
  41478c:	e8 4f aa 07 00       	call   0x48f1e0
  414791:	68 ec 14 50 00       	push   0x5014ec
  414796:	68 00 08 00 00       	push   0x800
  41479b:	e8 a0 d5 05 00       	call   0x471d40
  4147a0:	83 c4 08             	add    esp,0x8
  4147a3:	8d 45 d0             	lea    eax,[ebp-0x30]
  4147a6:	50                   	push   eax
  4147a7:	8b ce                	mov    ecx,esi
  4147a9:	e8 a2 92 00 00       	call   0x41da50
  4147ae:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4147b1:	c6 45 fc 0f          	mov    BYTE PTR [ebp-0x4],0xf
  4147b5:	e8 c8 d2 0b 00       	call   0x4d1a82
  4147ba:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4147bd:	e8 ba d2 0b 00       	call   0x4d1a7c
  4147c2:	51                   	push   ecx
  4147c3:	8d 55 d0             	lea    edx,[ebp-0x30]
  4147c6:	8b cc                	mov    ecx,esp
  4147c8:	89 65 e0             	mov    DWORD PTR [ebp-0x20],esp
  4147cb:	52                   	push   edx
  4147cc:	e8 7b d2 0b 00       	call   0x4d1a4c
  4147d1:	8b 06                	mov    eax,DWORD PTR [esi]
  4147d3:	8b ce                	mov    ecx,esi
  4147d5:	ff 50 4c             	call   DWORD PTR [eax+0x4c]
  4147d8:	33 c0                	xor    eax,eax
  4147da:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4147dd:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
  4147e0:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  4147e3:	e8 a8 da 05 00       	call   0x472290
  4147e8:	8b 16                	mov    edx,DWORD PTR [esi]
  4147ea:	8b d8                	mov    ebx,eax
  4147ec:	8d 45 b0             	lea    eax,[ebp-0x50]
  4147ef:	50                   	push   eax
  4147f0:	8b ce                	mov    ecx,esi
  4147f2:	ff 52 70             	call   DWORD PTR [edx+0x70]
  4147f5:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
  4147f8:	3b c3                	cmp    eax,ebx
  4147fa:	76 15                	jbe    0x414811
  4147fc:	8d 04 80             	lea    eax,[eax+eax*4]
  4147ff:	8d 0c 80             	lea    ecx,[eax+eax*4]
  414802:	8d 04 9b             	lea    eax,[ebx+ebx*4]
  414805:	8d 14 80             	lea    edx,[eax+eax*4]
  414808:	d1 e1                	shl    ecx,1
  41480a:	d1 e2                	shl    edx,1
  41480c:	2b ca                	sub    ecx,edx
  41480e:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  414811:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
  414814:	3b c3                	cmp    eax,ebx
  414816:	76 15                	jbe    0x41482d
  414818:	8d 04 80             	lea    eax,[eax+eax*4]
  41481b:	8d 0c 80             	lea    ecx,[eax+eax*4]
  41481e:	8d 04 9b             	lea    eax,[ebx+ebx*4]
  414821:	8d 04 80             	lea    eax,[eax+eax*4]
  414824:	d1 e1                	shl    ecx,1
  414826:	d1 e0                	shl    eax,1
  414828:	2b c8                	sub    ecx,eax
  41482a:	89 4d d4             	mov    DWORD PTR [ebp-0x2c],ecx
  41482d:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
  414830:	3b c3                	cmp    eax,ebx
  414832:	76 15                	jbe    0x414849
  414834:	8d 04 80             	lea    eax,[eax+eax*4]
  414837:	8d 1c 9b             	lea    ebx,[ebx+ebx*4]
  41483a:	8d 04 80             	lea    eax,[eax+eax*4]
  41483d:	8d 0c 9b             	lea    ecx,[ebx+ebx*4]
  414840:	d1 e0                	shl    eax,1
  414842:	d1 e1                	shl    ecx,1
  414844:	2b c1                	sub    eax,ecx
  414846:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  414849:	8b 96 64 01 00 00    	mov    edx,DWORD PTR [esi+0x164]
  41484f:	8b 9e 68 01 00 00    	mov    ebx,DWORD PTR [esi+0x168]
  414855:	8d 45 c8             	lea    eax,[ebp-0x38]
  414858:	50                   	push   eax
  414859:	8b ce                	mov    ecx,esi
  41485b:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
  41485e:	e8 ed 91 00 00       	call   0x41da50
  414863:	8b 08                	mov    ecx,DWORD PTR [eax]
  414865:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
  414868:	8b ce                	mov    ecx,esi
  41486a:	c6 45 fc 10          	mov    BYTE PTR [ebp-0x4],0x10
  41486e:	e8 8d 6e 07 00       	call   0x48b700
  414873:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
  414876:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  414879:	50                   	push   eax
  41487a:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  41487d:	52                   	push   edx
  41487e:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
  414881:	50                   	push   eax
  414882:	51                   	push   ecx
  414883:	8b 8e 80 00 00 00    	mov    ecx,DWORD PTR [esi+0x80]
  414889:	53                   	push   ebx
  41488a:	52                   	push   edx
  41488b:	33 c0                	xor    eax,eax
  41488d:	8a 46 7e             	mov    al,BYTE PTR [esi+0x7e]
  414890:	33 d2                	xor    edx,edx
  414892:	66 8b 56 7c          	mov    dx,WORD PTR [esi+0x7c]
  414896:	50                   	push   eax
  414897:	51                   	push   ecx
  414898:	52                   	push   edx
  414899:	33 c0                	xor    eax,eax
  41489b:	66 8b 86 84 00 00 00 	mov    ax,WORD PTR [esi+0x84]
  4148a2:	33 c9                	xor    ecx,ecx
  4148a4:	66 8b 8e e2 01 00 00 	mov    cx,WORD PTR [esi+0x1e2]
  4148ab:	33 d2                	xor    edx,edx
  4148ad:	66 8b 96 e0 01 00 00 	mov    dx,WORD PTR [esi+0x1e0]
  4148b4:	50                   	push   eax
  4148b5:	8b 06                	mov    eax,DWORD PTR [esi]
  4148b7:	51                   	push   ecx
  4148b8:	8d 4d a4             	lea    ecx,[ebp-0x5c]
  4148bb:	52                   	push   edx
  4148bc:	51                   	push   ecx
  4148bd:	8b ce                	mov    ecx,esi
  4148bf:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  4148c2:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  4148c5:	8b 06                	mov    eax,DWORD PTR [esi]
  4148c7:	52                   	push   edx
  4148c8:	8d 4d 98             	lea    ecx,[ebp-0x68]
  4148cb:	51                   	push   ecx
  4148cc:	8b ce                	mov    ecx,esi
  4148ce:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  4148d1:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4148d4:	8b 06                	mov    eax,DWORD PTR [esi]
  4148d6:	52                   	push   edx
  4148d7:	8d 4d 8c             	lea    ecx,[ebp-0x74]
  4148da:	51                   	push   ecx
  4148db:	8b ce                	mov    ecx,esi
  4148dd:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  4148e0:	8b 10                	mov    edx,DWORD PTR [eax]
  4148e2:	8b 06                	mov    eax,DWORD PTR [esi]
  4148e4:	52                   	push   edx
  4148e5:	8b ce                	mov    ecx,esi
  4148e7:	ff 90 04 01 00 00    	call   DWORD PTR [eax+0x104]
  4148ed:	8b 16                	mov    edx,DWORD PTR [esi]
  4148ef:	50                   	push   eax
  4148f0:	8b ce                	mov    ecx,esi
  4148f2:	ff 92 e4 00 00 00    	call   DWORD PTR [edx+0xe4]
  4148f8:	8b ce                	mov    ecx,esi
  4148fa:	25 ff ff 00 00       	and    eax,0xffff
  4148ff:	50                   	push   eax
  414900:	8b 06                	mov    eax,DWORD PTR [esi]
  414902:	ff 90 ec 00 00 00    	call   DWORD PTR [eax+0xec]
  414908:	8b 16                	mov    edx,DWORD PTR [esi]
  41490a:	8b ce                	mov    ecx,esi
  41490c:	25 ff ff 00 00       	and    eax,0xffff
  414911:	50                   	push   eax
  414912:	ff 92 d0 00 00 00    	call   DWORD PTR [edx+0xd0]
  414918:	50                   	push   eax
  414919:	8b 06                	mov    eax,DWORD PTR [esi]
  41491b:	8b ce                	mov    ecx,esi
  41491d:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  414923:	8b 16                	mov    edx,DWORD PTR [esi]
  414925:	50                   	push   eax
  414926:	8b ce                	mov    ecx,esi
  414928:	ff 92 3c 01 00 00    	call   DWORD PTR [edx+0x13c]
  41492e:	8b ce                	mov    ecx,esi
  414930:	25 ff ff 00 00       	and    eax,0xffff
  414935:	50                   	push   eax
  414936:	8b 06                	mov    eax,DWORD PTR [esi]
  414938:	ff 50 54             	call   DWORD PTR [eax+0x54]
  41493b:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  41493e:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
  414941:	df 6d dc             	fild   QWORD PTR [ebp-0x24]
  414944:	83 ec 08             	sub    esp,0x8
  414947:	8b ce                	mov    ecx,esi
  414949:	dd 1c 24             	fstp   QWORD PTR [esp]
  41494c:	e8 3f 99 07 00       	call   0x48e290
  414951:	8b ce                	mov    ecx,esi
  414953:	25 ff ff 00 00       	and    eax,0xffff
  414958:	50                   	push   eax
  414959:	e8 22 99 07 00       	call   0x48e280
  41495e:	8b ce                	mov    ecx,esi
  414960:	25 ff ff 00 00       	and    eax,0xffff
  414965:	50                   	push   eax
  414966:	e8 05 99 07 00       	call   0x48e270
  41496b:	8b ce                	mov    ecx,esi
  41496d:	25 ff ff 00 00       	and    eax,0xffff
  414972:	50                   	push   eax
  414973:	e8 b8 98 07 00       	call   0x48e230
  414978:	8b ce                	mov    ecx,esi
  41497a:	25 ff ff 00 00       	and    eax,0xffff
  41497f:	50                   	push   eax
  414980:	e8 db 98 07 00       	call   0x48e260
  414985:	8b ce                	mov    ecx,esi
  414987:	25 ff ff 00 00       	and    eax,0xffff
  41498c:	50                   	push   eax
  41498d:	e8 ae 98 07 00       	call   0x48e240
  414992:	8b ce                	mov    ecx,esi
  414994:	25 ff ff 00 00       	and    eax,0xffff
  414999:	50                   	push   eax
  41499a:	e8 b1 98 07 00       	call   0x48e250
  41499f:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
  4149a2:	8d 55 ec             	lea    edx,[ebp-0x14]
  4149a5:	25 ff ff 00 00       	and    eax,0xffff
  4149aa:	50                   	push   eax
  4149ab:	51                   	push   ecx
  4149ac:	68 54 13 50        	push   0x501354
