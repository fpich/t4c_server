; Preuves passe 53 — T4C Server.exe SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Intervalles exclusifs et uniquement regions executees. Les tables de dispatch ne sont pas comptees.

; [0x0040C7A4,0x0040D3F1) Comparaisons textuelles self/target pour statistiques, PV, mana et premiers elements
  40c7a4:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  40c7a7:	0f be 0e             	movsx  ecx,BYTE PTR [esi]
  40c7aa:	8b 3d 48 e3 4d 00    	mov    edi,DWORD PTR ds:0x4de348
  40c7b0:	51                   	push   ecx
  40c7b1:	ff d7                	call   edi
  40c7b3:	83 c4 04             	add    esp,0x4
  40c7b6:	85 c0                	test   eax,eax
  40c7b8:	0f 84 31 29 00 00    	je     0x40f0ef
  40c7be:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40c7c1:	e8 98 52 0c 00       	call   0x4d1a5e
  40c7c6:	33 c0                	xor    eax,eax
  40c7c8:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  40c7cb:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c7ce:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  40c7d1:	33 c0                	xor    eax,eax
  40c7d3:	8a 04 32             	mov    al,BYTE PTR [edx+esi*1]
  40c7d6:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40c7d9:	50                   	push   eax
  40c7da:	e8 af 52 0c 00       	call   0x4d1a8e
  40c7df:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40c7e2:	40                   	inc    eax
  40c7e3:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c7e6:	0f be 0c 30          	movsx  ecx,BYTE PTR [eax+esi*1]
  40c7ea:	51                   	push   ecx
  40c7eb:	ff d7                	call   edi
  40c7ed:	83 c4 04             	add    esp,0x4
  40c7f0:	85 c0                	test   eax,eax
  40c7f2:	75 da                	jne    0x40c7ce
  40c7f4:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  40c7f7:	8a 04 32             	mov    al,BYTE PTR [edx+esi*1]
  40c7fa:	3c 2e                	cmp    al,0x2e
  40c7fc:	74 d0                	je     0x40c7ce
  40c7fe:	3c 5f                	cmp    al,0x5f
  40c800:	74 cc                	je     0x40c7ce
  40c802:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40c805:	e8 7e 52 0c 00       	call   0x4d1a88
  40c80a:	8b 7d dc             	mov    edi,DWORD PTR [ebp-0x24]
  40c80d:	be a0 10 50 00       	mov    esi,0x5010a0
  40c812:	8b c7                	mov    eax,edi
  40c814:	8a 10                	mov    dl,BYTE PTR [eax]
  40c816:	8a 1e                	mov    bl,BYTE PTR [esi]
  40c818:	8a ca                	mov    cl,dl
  40c81a:	3a d3                	cmp    dl,bl
  40c81c:	75 1e                	jne    0x40c83c
  40c81e:	84 c9                	test   cl,cl
  40c820:	74 16                	je     0x40c838
  40c822:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40c825:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40c828:	8a ca                	mov    cl,dl
  40c82a:	3a d3                	cmp    dl,bl
  40c82c:	75 0e                	jne    0x40c83c
  40c82e:	83 c0 02             	add    eax,0x2
  40c831:	83 c6 02             	add    esi,0x2
  40c834:	84 c9                	test   cl,cl
  40c836:	75 dc                	jne    0x40c814
  40c838:	33 c0                	xor    eax,eax
  40c83a:	eb 05                	jmp    0x40c841
  40c83c:	1b c0                	sbb    eax,eax
  40c83e:	83 d8 ff             	sbb    eax,0xffffffff
  40c841:	85 c0                	test   eax,eax
  40c843:	75 0c                	jne    0x40c851
  40c845:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40c848:	c6 40 10 02          	mov    BYTE PTR [eax+0x10],0x2
  40c84c:	e9 8a 28 00 00       	jmp    0x40f0db
  40c851:	be 94 10 50 00       	mov    esi,0x501094
  40c856:	8b c7                	mov    eax,edi
  40c858:	8a 10                	mov    dl,BYTE PTR [eax]
  40c85a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40c85c:	8a ca                	mov    cl,dl
  40c85e:	3a d3                	cmp    dl,bl
  40c860:	75 1e                	jne    0x40c880
  40c862:	84 c9                	test   cl,cl
  40c864:	74 16                	je     0x40c87c
  40c866:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40c869:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40c86c:	8a ca                	mov    cl,dl
  40c86e:	3a d3                	cmp    dl,bl
  40c870:	75 0e                	jne    0x40c880
  40c872:	83 c0 02             	add    eax,0x2
  40c875:	83 c6 02             	add    esi,0x2
  40c878:	84 c9                	test   cl,cl
  40c87a:	75 dc                	jne    0x40c858
  40c87c:	33 c0                	xor    eax,eax
  40c87e:	eb 05                	jmp    0x40c885
  40c880:	1b c0                	sbb    eax,eax
  40c882:	83 d8 ff             	sbb    eax,0xffffffff
  40c885:	85 c0                	test   eax,eax
  40c887:	75 0c                	jne    0x40c895
  40c889:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40c88c:	c6 40 10 03          	mov    BYTE PTR [eax+0x10],0x3
  40c890:	e9 46 28 00 00       	jmp    0x40f0db
  40c895:	be 88 10 50 00       	mov    esi,0x501088
  40c89a:	8b c7                	mov    eax,edi
  40c89c:	8a 10                	mov    dl,BYTE PTR [eax]
  40c89e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40c8a0:	8a ca                	mov    cl,dl
  40c8a2:	3a d3                	cmp    dl,bl
  40c8a4:	75 1e                	jne    0x40c8c4
  40c8a6:	84 c9                	test   cl,cl
  40c8a8:	74 16                	je     0x40c8c0
  40c8aa:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40c8ad:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40c8b0:	8a ca                	mov    cl,dl
  40c8b2:	3a d3                	cmp    dl,bl
  40c8b4:	75 0e                	jne    0x40c8c4
  40c8b6:	83 c0 02             	add    eax,0x2
  40c8b9:	83 c6 02             	add    esi,0x2
  40c8bc:	84 c9                	test   cl,cl
  40c8be:	75 dc                	jne    0x40c89c
  40c8c0:	33 c0                	xor    eax,eax
  40c8c2:	eb 05                	jmp    0x40c8c9
  40c8c4:	1b c0                	sbb    eax,eax
  40c8c6:	83 d8 ff             	sbb    eax,0xffffffff
  40c8c9:	85 c0                	test   eax,eax
  40c8cb:	75 0c                	jne    0x40c8d9
  40c8cd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40c8d0:	c6 40 10 04          	mov    BYTE PTR [eax+0x10],0x4
  40c8d4:	e9 02 28 00 00       	jmp    0x40f0db
  40c8d9:	be 7c 10 50 00       	mov    esi,0x50107c
  40c8de:	8b c7                	mov    eax,edi
  40c8e0:	8a 10                	mov    dl,BYTE PTR [eax]
  40c8e2:	8a 1e                	mov    bl,BYTE PTR [esi]
  40c8e4:	8a ca                	mov    cl,dl
  40c8e6:	3a d3                	cmp    dl,bl
  40c8e8:	75 1e                	jne    0x40c908
  40c8ea:	84 c9                	test   cl,cl
  40c8ec:	74 16                	je     0x40c904
  40c8ee:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40c8f1:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40c8f4:	8a ca                	mov    cl,dl
  40c8f6:	3a d3                	cmp    dl,bl
  40c8f8:	75 0e                	jne    0x40c908
  40c8fa:	83 c0 02             	add    eax,0x2
  40c8fd:	83 c6 02             	add    esi,0x2
  40c900:	84 c9                	test   cl,cl
  40c902:	75 dc                	jne    0x40c8e0
  40c904:	33 c0                	xor    eax,eax
  40c906:	eb 05                	jmp    0x40c90d
  40c908:	1b c0                	sbb    eax,eax
  40c90a:	83 d8 ff             	sbb    eax,0xffffffff
  40c90d:	85 c0                	test   eax,eax
  40c90f:	75 0c                	jne    0x40c91d
  40c911:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40c914:	c6 40 10 06          	mov    BYTE PTR [eax+0x10],0x6
  40c918:	e9 be 27 00 00       	jmp    0x40f0db
  40c91d:	be 70 10 50 00       	mov    esi,0x501070
  40c922:	8b c7                	mov    eax,edi
  40c924:	8a 10                	mov    dl,BYTE PTR [eax]
  40c926:	8a 1e                	mov    bl,BYTE PTR [esi]
  40c928:	8a ca                	mov    cl,dl
  40c92a:	3a d3                	cmp    dl,bl
  40c92c:	75 1e                	jne    0x40c94c
  40c92e:	84 c9                	test   cl,cl
  40c930:	74 16                	je     0x40c948
  40c932:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40c935:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40c938:	8a ca                	mov    cl,dl
  40c93a:	3a d3                	cmp    dl,bl
  40c93c:	75 0e                	jne    0x40c94c
  40c93e:	83 c0 02             	add    eax,0x2
  40c941:	83 c6 02             	add    esi,0x2
  40c944:	84 c9                	test   cl,cl
  40c946:	75 dc                	jne    0x40c924
  40c948:	33 c0                	xor    eax,eax
  40c94a:	eb 05                	jmp    0x40c951
  40c94c:	1b c0                	sbb    eax,eax
  40c94e:	83 d8 ff             	sbb    eax,0xffffffff
  40c951:	85 c0                	test   eax,eax
  40c953:	75 0c                	jne    0x40c961
  40c955:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40c958:	c6 40 10 24          	mov    BYTE PTR [eax+0x10],0x24
  40c95c:	e9 7a 27 00 00       	jmp    0x40f0db
  40c961:	be 68 10 50 00       	mov    esi,0x501068
  40c966:	8b c7                	mov    eax,edi
  40c968:	8a 10                	mov    dl,BYTE PTR [eax]
  40c96a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40c96c:	8a ca                	mov    cl,dl
  40c96e:	3a d3                	cmp    dl,bl
  40c970:	75 1e                	jne    0x40c990
  40c972:	84 c9                	test   cl,cl
  40c974:	74 16                	je     0x40c98c
  40c976:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40c979:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40c97c:	8a ca                	mov    cl,dl
  40c97e:	3a d3                	cmp    dl,bl
  40c980:	75 0e                	jne    0x40c990
  40c982:	83 c0 02             	add    eax,0x2
  40c985:	83 c6 02             	add    esi,0x2
  40c988:	84 c9                	test   cl,cl
  40c98a:	75 dc                	jne    0x40c968
  40c98c:	33 c0                	xor    eax,eax
  40c98e:	eb 05                	jmp    0x40c995
  40c990:	1b c0                	sbb    eax,eax
  40c992:	83 d8 ff             	sbb    eax,0xffffffff
  40c995:	85 c0                	test   eax,eax
  40c997:	75 0c                	jne    0x40c9a5
  40c999:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40c99c:	c6 40 10 08          	mov    BYTE PTR [eax+0x10],0x8
  40c9a0:	e9 36 27 00 00       	jmp    0x40f0db
  40c9a5:	be 5c 10 50 00       	mov    esi,0x50105c
  40c9aa:	8b c7                	mov    eax,edi
  40c9ac:	8a 10                	mov    dl,BYTE PTR [eax]
  40c9ae:	8a 1e                	mov    bl,BYTE PTR [esi]
  40c9b0:	8a ca                	mov    cl,dl
  40c9b2:	3a d3                	cmp    dl,bl
  40c9b4:	75 1e                	jne    0x40c9d4
  40c9b6:	84 c9                	test   cl,cl
  40c9b8:	74 16                	je     0x40c9d0
  40c9ba:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40c9bd:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40c9c0:	8a ca                	mov    cl,dl
  40c9c2:	3a d3                	cmp    dl,bl
  40c9c4:	75 0e                	jne    0x40c9d4
  40c9c6:	83 c0 02             	add    eax,0x2
  40c9c9:	83 c6 02             	add    esi,0x2
  40c9cc:	84 c9                	test   cl,cl
  40c9ce:	75 dc                	jne    0x40c9ac
  40c9d0:	33 c0                	xor    eax,eax
  40c9d2:	eb 05                	jmp    0x40c9d9
  40c9d4:	1b c0                	sbb    eax,eax
  40c9d6:	83 d8 ff             	sbb    eax,0xffffffff
  40c9d9:	85 c0                	test   eax,eax
  40c9db:	75 0c                	jne    0x40c9e9
  40c9dd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40c9e0:	c6 40 10 09          	mov    BYTE PTR [eax+0x10],0x9
  40c9e4:	e9 f2 26 00 00       	jmp    0x40f0db
  40c9e9:	be 50 10 50 00       	mov    esi,0x501050
  40c9ee:	8b c7                	mov    eax,edi
  40c9f0:	8a 10                	mov    dl,BYTE PTR [eax]
  40c9f2:	8a 1e                	mov    bl,BYTE PTR [esi]
  40c9f4:	8a ca                	mov    cl,dl
  40c9f6:	3a d3                	cmp    dl,bl
  40c9f8:	75 1e                	jne    0x40ca18
  40c9fa:	84 c9                	test   cl,cl
  40c9fc:	74 16                	je     0x40ca14
  40c9fe:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40ca01:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40ca04:	8a ca                	mov    cl,dl
  40ca06:	3a d3                	cmp    dl,bl
  40ca08:	75 0e                	jne    0x40ca18
  40ca0a:	83 c0 02             	add    eax,0x2
  40ca0d:	83 c6 02             	add    esi,0x2
  40ca10:	84 c9                	test   cl,cl
  40ca12:	75 dc                	jne    0x40c9f0
  40ca14:	33 c0                	xor    eax,eax
  40ca16:	eb 05                	jmp    0x40ca1d
  40ca18:	1b c0                	sbb    eax,eax
  40ca1a:	83 d8 ff             	sbb    eax,0xffffffff
  40ca1d:	85 c0                	test   eax,eax
  40ca1f:	75 0c                	jne    0x40ca2d
  40ca21:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40ca24:	c6 40 10 0a          	mov    BYTE PTR [eax+0x10],0xa
  40ca28:	e9 ae 26 00 00       	jmp    0x40f0db
  40ca2d:	be 40 10 50 00       	mov    esi,0x501040
  40ca32:	8b c7                	mov    eax,edi
  40ca34:	8a 10                	mov    dl,BYTE PTR [eax]
  40ca36:	8a 1e                	mov    bl,BYTE PTR [esi]
  40ca38:	8a ca                	mov    cl,dl
  40ca3a:	3a d3                	cmp    dl,bl
  40ca3c:	75 1e                	jne    0x40ca5c
  40ca3e:	84 c9                	test   cl,cl
  40ca40:	74 16                	je     0x40ca58
  40ca42:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40ca45:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40ca48:	8a ca                	mov    cl,dl
  40ca4a:	3a d3                	cmp    dl,bl
  40ca4c:	75 0e                	jne    0x40ca5c
  40ca4e:	83 c0 02             	add    eax,0x2
  40ca51:	83 c6 02             	add    esi,0x2
  40ca54:	84 c9                	test   cl,cl
  40ca56:	75 dc                	jne    0x40ca34
  40ca58:	33 c0                	xor    eax,eax
  40ca5a:	eb 05                	jmp    0x40ca61
  40ca5c:	1b c0                	sbb    eax,eax
  40ca5e:	83 d8 ff             	sbb    eax,0xffffffff
  40ca61:	85 c0                	test   eax,eax
  40ca63:	75 0c                	jne    0x40ca71
  40ca65:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40ca68:	c6 40 10 0b          	mov    BYTE PTR [eax+0x10],0xb
  40ca6c:	e9 6a 26 00 00       	jmp    0x40f0db
  40ca71:	be 34 10 50 00       	mov    esi,0x501034
  40ca76:	8b c7                	mov    eax,edi
  40ca78:	8a 10                	mov    dl,BYTE PTR [eax]
  40ca7a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40ca7c:	8a ca                	mov    cl,dl
  40ca7e:	3a d3                	cmp    dl,bl
  40ca80:	75 1e                	jne    0x40caa0
  40ca82:	84 c9                	test   cl,cl
  40ca84:	74 16                	je     0x40ca9c
  40ca86:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40ca89:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40ca8c:	8a ca                	mov    cl,dl
  40ca8e:	3a d3                	cmp    dl,bl
  40ca90:	75 0e                	jne    0x40caa0
  40ca92:	83 c0 02             	add    eax,0x2
  40ca95:	83 c6 02             	add    esi,0x2
  40ca98:	84 c9                	test   cl,cl
  40ca9a:	75 dc                	jne    0x40ca78
  40ca9c:	33 c0                	xor    eax,eax
  40ca9e:	eb 05                	jmp    0x40caa5
  40caa0:	1b c0                	sbb    eax,eax
  40caa2:	83 d8 ff             	sbb    eax,0xffffffff
  40caa5:	85 c0                	test   eax,eax
  40caa7:	75 0c                	jne    0x40cab5
  40caa9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40caac:	c6 40 10 0c          	mov    BYTE PTR [eax+0x10],0xc
  40cab0:	e9 26 26 00 00       	jmp    0x40f0db
  40cab5:	be 28 10 50 00       	mov    esi,0x501028
  40caba:	8b c7                	mov    eax,edi
  40cabc:	8a 10                	mov    dl,BYTE PTR [eax]
  40cabe:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cac0:	8a ca                	mov    cl,dl
  40cac2:	3a d3                	cmp    dl,bl
  40cac4:	75 1e                	jne    0x40cae4
  40cac6:	84 c9                	test   cl,cl
  40cac8:	74 16                	je     0x40cae0
  40caca:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cacd:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cad0:	8a ca                	mov    cl,dl
  40cad2:	3a d3                	cmp    dl,bl
  40cad4:	75 0e                	jne    0x40cae4
  40cad6:	83 c0 02             	add    eax,0x2
  40cad9:	83 c6 02             	add    esi,0x2
  40cadc:	84 c9                	test   cl,cl
  40cade:	75 dc                	jne    0x40cabc
  40cae0:	33 c0                	xor    eax,eax
  40cae2:	eb 05                	jmp    0x40cae9
  40cae4:	1b c0                	sbb    eax,eax
  40cae6:	83 d8 ff             	sbb    eax,0xffffffff
  40cae9:	85 c0                	test   eax,eax
  40caeb:	75 0c                	jne    0x40caf9
  40caed:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40caf0:	c6 40 10 0d          	mov    BYTE PTR [eax+0x10],0xd
  40caf4:	e9 e2 25 00 00       	jmp    0x40f0db
  40caf9:	be 1c 10 50 00       	mov    esi,0x50101c
  40cafe:	8b c7                	mov    eax,edi
  40cb00:	8a 10                	mov    dl,BYTE PTR [eax]
  40cb02:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cb04:	8a ca                	mov    cl,dl
  40cb06:	3a d3                	cmp    dl,bl
  40cb08:	75 1e                	jne    0x40cb28
  40cb0a:	84 c9                	test   cl,cl
  40cb0c:	74 16                	je     0x40cb24
  40cb0e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cb11:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cb14:	8a ca                	mov    cl,dl
  40cb16:	3a d3                	cmp    dl,bl
  40cb18:	75 0e                	jne    0x40cb28
  40cb1a:	83 c0 02             	add    eax,0x2
  40cb1d:	83 c6 02             	add    esi,0x2
  40cb20:	84 c9                	test   cl,cl
  40cb22:	75 dc                	jne    0x40cb00
  40cb24:	33 c0                	xor    eax,eax
  40cb26:	eb 05                	jmp    0x40cb2d
  40cb28:	1b c0                	sbb    eax,eax
  40cb2a:	83 d8 ff             	sbb    eax,0xffffffff
  40cb2d:	85 c0                	test   eax,eax
  40cb2f:	75 0c                	jne    0x40cb3d
  40cb31:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cb34:	c6 40 10 0e          	mov    BYTE PTR [eax+0x10],0xe
  40cb38:	e9 9e 25 00 00       	jmp    0x40f0db
  40cb3d:	be 10 10 50 00       	mov    esi,0x501010
  40cb42:	8b c7                	mov    eax,edi
  40cb44:	8a 10                	mov    dl,BYTE PTR [eax]
  40cb46:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cb48:	8a ca                	mov    cl,dl
  40cb4a:	3a d3                	cmp    dl,bl
  40cb4c:	75 1e                	jne    0x40cb6c
  40cb4e:	84 c9                	test   cl,cl
  40cb50:	74 16                	je     0x40cb68
  40cb52:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cb55:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cb58:	8a ca                	mov    cl,dl
  40cb5a:	3a d3                	cmp    dl,bl
  40cb5c:	75 0e                	jne    0x40cb6c
  40cb5e:	83 c0 02             	add    eax,0x2
  40cb61:	83 c6 02             	add    esi,0x2
  40cb64:	84 c9                	test   cl,cl
  40cb66:	75 dc                	jne    0x40cb44
  40cb68:	33 c0                	xor    eax,eax
  40cb6a:	eb 05                	jmp    0x40cb71
  40cb6c:	1b c0                	sbb    eax,eax
  40cb6e:	83 d8 ff             	sbb    eax,0xffffffff
  40cb71:	85 c0                	test   eax,eax
  40cb73:	75 0c                	jne    0x40cb81
  40cb75:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cb78:	c6 40 10 16          	mov    BYTE PTR [eax+0x10],0x16
  40cb7c:	e9 5a 25 00 00       	jmp    0x40f0db
  40cb81:	be 04 10 50 00       	mov    esi,0x501004
  40cb86:	8b c7                	mov    eax,edi
  40cb88:	8a 10                	mov    dl,BYTE PTR [eax]
  40cb8a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cb8c:	8a ca                	mov    cl,dl
  40cb8e:	3a d3                	cmp    dl,bl
  40cb90:	75 1e                	jne    0x40cbb0
  40cb92:	84 c9                	test   cl,cl
  40cb94:	74 16                	je     0x40cbac
  40cb96:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cb99:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cb9c:	8a ca                	mov    cl,dl
  40cb9e:	3a d3                	cmp    dl,bl
  40cba0:	75 0e                	jne    0x40cbb0
  40cba2:	83 c0 02             	add    eax,0x2
  40cba5:	83 c6 02             	add    esi,0x2
  40cba8:	84 c9                	test   cl,cl
  40cbaa:	75 dc                	jne    0x40cb88
  40cbac:	33 c0                	xor    eax,eax
  40cbae:	eb 05                	jmp    0x40cbb5
  40cbb0:	1b c0                	sbb    eax,eax
  40cbb2:	83 d8 ff             	sbb    eax,0xffffffff
  40cbb5:	85 c0                	test   eax,eax
  40cbb7:	75 0c                	jne    0x40cbc5
  40cbb9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cbbc:	c6 40 10 17          	mov    BYTE PTR [eax+0x10],0x17
  40cbc0:	e9 16 25 00 00       	jmp    0x40f0db
  40cbc5:	be f8 0f 50 00       	mov    esi,0x500ff8
  40cbca:	8b c7                	mov    eax,edi
  40cbcc:	8a 10                	mov    dl,BYTE PTR [eax]
  40cbce:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cbd0:	8a ca                	mov    cl,dl
  40cbd2:	3a d3                	cmp    dl,bl
  40cbd4:	75 1e                	jne    0x40cbf4
  40cbd6:	84 c9                	test   cl,cl
  40cbd8:	74 16                	je     0x40cbf0
  40cbda:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cbdd:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cbe0:	8a ca                	mov    cl,dl
  40cbe2:	3a d3                	cmp    dl,bl
  40cbe4:	75 0e                	jne    0x40cbf4
  40cbe6:	83 c0 02             	add    eax,0x2
  40cbe9:	83 c6 02             	add    esi,0x2
  40cbec:	84 c9                	test   cl,cl
  40cbee:	75 dc                	jne    0x40cbcc
  40cbf0:	33 c0                	xor    eax,eax
  40cbf2:	eb 05                	jmp    0x40cbf9
  40cbf4:	1b c0                	sbb    eax,eax
  40cbf6:	83 d8 ff             	sbb    eax,0xffffffff
  40cbf9:	85 c0                	test   eax,eax
  40cbfb:	75 0c                	jne    0x40cc09
  40cbfd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cc00:	c6 40 10 18          	mov    BYTE PTR [eax+0x10],0x18
  40cc04:	e9 d2 24 00 00       	jmp    0x40f0db
  40cc09:	be ec 0f 50 00       	mov    esi,0x500fec
  40cc0e:	8b c7                	mov    eax,edi
  40cc10:	8a 10                	mov    dl,BYTE PTR [eax]
  40cc12:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cc14:	8a ca                	mov    cl,dl
  40cc16:	3a d3                	cmp    dl,bl
  40cc18:	75 1e                	jne    0x40cc38
  40cc1a:	84 c9                	test   cl,cl
  40cc1c:	74 16                	je     0x40cc34
  40cc1e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cc21:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cc24:	8a ca                	mov    cl,dl
  40cc26:	3a d3                	cmp    dl,bl
  40cc28:	75 0e                	jne    0x40cc38
  40cc2a:	83 c0 02             	add    eax,0x2
  40cc2d:	83 c6 02             	add    esi,0x2
  40cc30:	84 c9                	test   cl,cl
  40cc32:	75 dc                	jne    0x40cc10
  40cc34:	33 c0                	xor    eax,eax
  40cc36:	eb 05                	jmp    0x40cc3d
  40cc38:	1b c0                	sbb    eax,eax
  40cc3a:	83 d8 ff             	sbb    eax,0xffffffff
  40cc3d:	85 c0                	test   eax,eax
  40cc3f:	75 0c                	jne    0x40cc4d
  40cc41:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cc44:	c6 40 10 1a          	mov    BYTE PTR [eax+0x10],0x1a
  40cc48:	e9 8e 24 00 00       	jmp    0x40f0db
  40cc4d:	be e0 0f 50 00       	mov    esi,0x500fe0
  40cc52:	8b c7                	mov    eax,edi
  40cc54:	8a 10                	mov    dl,BYTE PTR [eax]
  40cc56:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cc58:	8a ca                	mov    cl,dl
  40cc5a:	3a d3                	cmp    dl,bl
  40cc5c:	75 1e                	jne    0x40cc7c
  40cc5e:	84 c9                	test   cl,cl
  40cc60:	74 16                	je     0x40cc78
  40cc62:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cc65:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cc68:	8a ca                	mov    cl,dl
  40cc6a:	3a d3                	cmp    dl,bl
  40cc6c:	75 0e                	jne    0x40cc7c
  40cc6e:	83 c0 02             	add    eax,0x2
  40cc71:	83 c6 02             	add    esi,0x2
  40cc74:	84 c9                	test   cl,cl
  40cc76:	75 dc                	jne    0x40cc54
  40cc78:	33 c0                	xor    eax,eax
  40cc7a:	eb 05                	jmp    0x40cc81
  40cc7c:	1b c0                	sbb    eax,eax
  40cc7e:	83 d8 ff             	sbb    eax,0xffffffff
  40cc81:	85 c0                	test   eax,eax
  40cc83:	75 0c                	jne    0x40cc91
  40cc85:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cc88:	c6 40 10 25          	mov    BYTE PTR [eax+0x10],0x25
  40cc8c:	e9 4a 24 00 00       	jmp    0x40f0db
  40cc91:	be d4 0f 50 00       	mov    esi,0x500fd4
  40cc96:	8b c7                	mov    eax,edi
  40cc98:	8a 10                	mov    dl,BYTE PTR [eax]
  40cc9a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cc9c:	8a ca                	mov    cl,dl
  40cc9e:	3a d3                	cmp    dl,bl
  40cca0:	75 1e                	jne    0x40ccc0
  40cca2:	84 c9                	test   cl,cl
  40cca4:	74 16                	je     0x40ccbc
  40cca6:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cca9:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40ccac:	8a ca                	mov    cl,dl
  40ccae:	3a d3                	cmp    dl,bl
  40ccb0:	75 0e                	jne    0x40ccc0
  40ccb2:	83 c0 02             	add    eax,0x2
  40ccb5:	83 c6 02             	add    esi,0x2
  40ccb8:	84 c9                	test   cl,cl
  40ccba:	75 dc                	jne    0x40cc98
  40ccbc:	33 c0                	xor    eax,eax
  40ccbe:	eb 05                	jmp    0x40ccc5
  40ccc0:	1b c0                	sbb    eax,eax
  40ccc2:	83 d8 ff             	sbb    eax,0xffffffff
  40ccc5:	85 c0                	test   eax,eax
  40ccc7:	75 0c                	jne    0x40ccd5
  40ccc9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cccc:	c6 40 10 1c          	mov    BYTE PTR [eax+0x10],0x1c
  40ccd0:	e9 06 24 00 00       	jmp    0x40f0db
  40ccd5:	be c4 0f 50 00       	mov    esi,0x500fc4
  40ccda:	8b c7                	mov    eax,edi
  40ccdc:	8a 10                	mov    dl,BYTE PTR [eax]
  40ccde:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cce0:	8a ca                	mov    cl,dl
  40cce2:	3a d3                	cmp    dl,bl
  40cce4:	75 1e                	jne    0x40cd04
  40cce6:	84 c9                	test   cl,cl
  40cce8:	74 16                	je     0x40cd00
  40ccea:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cced:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40ccf0:	8a ca                	mov    cl,dl
  40ccf2:	3a d3                	cmp    dl,bl
  40ccf4:	75 0e                	jne    0x40cd04
  40ccf6:	83 c0 02             	add    eax,0x2
  40ccf9:	83 c6 02             	add    esi,0x2
  40ccfc:	84 c9                	test   cl,cl
  40ccfe:	75 dc                	jne    0x40ccdc
  40cd00:	33 c0                	xor    eax,eax
  40cd02:	eb 05                	jmp    0x40cd09
  40cd04:	1b c0                	sbb    eax,eax
  40cd06:	83 d8 ff             	sbb    eax,0xffffffff
  40cd09:	85 c0                	test   eax,eax
  40cd0b:	75 0c                	jne    0x40cd19
  40cd0d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cd10:	c6 40 10 1d          	mov    BYTE PTR [eax+0x10],0x1d
  40cd14:	e9 c2 23 00 00       	jmp    0x40f0db
  40cd19:	be b8 0f 50 00       	mov    esi,0x500fb8
  40cd1e:	8b c7                	mov    eax,edi
  40cd20:	8a 10                	mov    dl,BYTE PTR [eax]
  40cd22:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cd24:	8a ca                	mov    cl,dl
  40cd26:	3a d3                	cmp    dl,bl
  40cd28:	75 1e                	jne    0x40cd48
  40cd2a:	84 c9                	test   cl,cl
  40cd2c:	74 16                	je     0x40cd44
  40cd2e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cd31:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cd34:	8a ca                	mov    cl,dl
  40cd36:	3a d3                	cmp    dl,bl
  40cd38:	75 0e                	jne    0x40cd48
  40cd3a:	83 c0 02             	add    eax,0x2
  40cd3d:	83 c6 02             	add    esi,0x2
  40cd40:	84 c9                	test   cl,cl
  40cd42:	75 dc                	jne    0x40cd20
  40cd44:	33 c0                	xor    eax,eax
  40cd46:	eb 05                	jmp    0x40cd4d
  40cd48:	1b c0                	sbb    eax,eax
  40cd4a:	83 d8 ff             	sbb    eax,0xffffffff
  40cd4d:	85 c0                	test   eax,eax
  40cd4f:	75 0c                	jne    0x40cd5d
  40cd51:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cd54:	c6 40 10 1e          	mov    BYTE PTR [eax+0x10],0x1e
  40cd58:	e9 7e 23 00 00       	jmp    0x40f0db
  40cd5d:	be a8 0f 50 00       	mov    esi,0x500fa8
  40cd62:	8b c7                	mov    eax,edi
  40cd64:	8a 10                	mov    dl,BYTE PTR [eax]
  40cd66:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cd68:	8a ca                	mov    cl,dl
  40cd6a:	3a d3                	cmp    dl,bl
  40cd6c:	75 1e                	jne    0x40cd8c
  40cd6e:	84 c9                	test   cl,cl
  40cd70:	74 16                	je     0x40cd88
  40cd72:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cd75:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cd78:	8a ca                	mov    cl,dl
  40cd7a:	3a d3                	cmp    dl,bl
  40cd7c:	75 0e                	jne    0x40cd8c
  40cd7e:	83 c0 02             	add    eax,0x2
  40cd81:	83 c6 02             	add    esi,0x2
  40cd84:	84 c9                	test   cl,cl
  40cd86:	75 dc                	jne    0x40cd64
  40cd88:	33 c0                	xor    eax,eax
  40cd8a:	eb 05                	jmp    0x40cd91
  40cd8c:	1b c0                	sbb    eax,eax
  40cd8e:	83 d8 ff             	sbb    eax,0xffffffff
  40cd91:	85 c0                	test   eax,eax
  40cd93:	75 0c                	jne    0x40cda1
  40cd95:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cd98:	c6 40 10 1f          	mov    BYTE PTR [eax+0x10],0x1f
  40cd9c:	e9 3a 23 00 00       	jmp    0x40f0db
  40cda1:	be 98 0f 50 00       	mov    esi,0x500f98
  40cda6:	8b c7                	mov    eax,edi
  40cda8:	8a 10                	mov    dl,BYTE PTR [eax]
  40cdaa:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cdac:	8a ca                	mov    cl,dl
  40cdae:	3a d3                	cmp    dl,bl
  40cdb0:	75 1e                	jne    0x40cdd0
  40cdb2:	84 c9                	test   cl,cl
  40cdb4:	74 16                	je     0x40cdcc
  40cdb6:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cdb9:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cdbc:	8a ca                	mov    cl,dl
  40cdbe:	3a d3                	cmp    dl,bl
  40cdc0:	75 0e                	jne    0x40cdd0
  40cdc2:	83 c0 02             	add    eax,0x2
  40cdc5:	83 c6 02             	add    esi,0x2
  40cdc8:	84 c9                	test   cl,cl
  40cdca:	75 dc                	jne    0x40cda8
  40cdcc:	33 c0                	xor    eax,eax
  40cdce:	eb 05                	jmp    0x40cdd5
  40cdd0:	1b c0                	sbb    eax,eax
  40cdd2:	83 d8 ff             	sbb    eax,0xffffffff
  40cdd5:	85 c0                	test   eax,eax
  40cdd7:	75 0c                	jne    0x40cde5
  40cdd9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cddc:	c6 40 10 20          	mov    BYTE PTR [eax+0x10],0x20
  40cde0:	e9 f6 22 00 00       	jmp    0x40f0db
  40cde5:	be 88 0f 50 00       	mov    esi,0x500f88
  40cdea:	8b c7                	mov    eax,edi
  40cdec:	8a 10                	mov    dl,BYTE PTR [eax]
  40cdee:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cdf0:	8a ca                	mov    cl,dl
  40cdf2:	3a d3                	cmp    dl,bl
  40cdf4:	75 1e                	jne    0x40ce14
  40cdf6:	84 c9                	test   cl,cl
  40cdf8:	74 16                	je     0x40ce10
  40cdfa:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cdfd:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40ce00:	8a ca                	mov    cl,dl
  40ce02:	3a d3                	cmp    dl,bl
  40ce04:	75 0e                	jne    0x40ce14
  40ce06:	83 c0 02             	add    eax,0x2
  40ce09:	83 c6 02             	add    esi,0x2
  40ce0c:	84 c9                	test   cl,cl
  40ce0e:	75 dc                	jne    0x40cdec
  40ce10:	33 c0                	xor    eax,eax
  40ce12:	eb 05                	jmp    0x40ce19
  40ce14:	1b c0                	sbb    eax,eax
  40ce16:	83 d8 ff             	sbb    eax,0xffffffff
  40ce19:	85 c0                	test   eax,eax
  40ce1b:	75 0c                	jne    0x40ce29
  40ce1d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40ce20:	c6 40 10 21          	mov    BYTE PTR [eax+0x10],0x21
  40ce24:	e9 b2 22 00 00       	jmp    0x40f0db
  40ce29:	be 78 0f 50 00       	mov    esi,0x500f78
  40ce2e:	8b c7                	mov    eax,edi
  40ce30:	8a 10                	mov    dl,BYTE PTR [eax]
  40ce32:	8a 1e                	mov    bl,BYTE PTR [esi]
  40ce34:	8a ca                	mov    cl,dl
  40ce36:	3a d3                	cmp    dl,bl
  40ce38:	75 1e                	jne    0x40ce58
  40ce3a:	84 c9                	test   cl,cl
  40ce3c:	74 16                	je     0x40ce54
  40ce3e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40ce41:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40ce44:	8a ca                	mov    cl,dl
  40ce46:	3a d3                	cmp    dl,bl
  40ce48:	75 0e                	jne    0x40ce58
  40ce4a:	83 c0 02             	add    eax,0x2
  40ce4d:	83 c6 02             	add    esi,0x2
  40ce50:	84 c9                	test   cl,cl
  40ce52:	75 dc                	jne    0x40ce30
  40ce54:	33 c0                	xor    eax,eax
  40ce56:	eb 05                	jmp    0x40ce5d
  40ce58:	1b c0                	sbb    eax,eax
  40ce5a:	83 d8 ff             	sbb    eax,0xffffffff
  40ce5d:	85 c0                	test   eax,eax
  40ce5f:	75 0c                	jne    0x40ce6d
  40ce61:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40ce64:	c6 40 10 23          	mov    BYTE PTR [eax+0x10],0x23
  40ce68:	e9 6e 22 00 00       	jmp    0x40f0db
  40ce6d:	be 68 0f 50 00       	mov    esi,0x500f68
  40ce72:	8b c7                	mov    eax,edi
  40ce74:	8a 10                	mov    dl,BYTE PTR [eax]
  40ce76:	8a 1e                	mov    bl,BYTE PTR [esi]
  40ce78:	8a ca                	mov    cl,dl
  40ce7a:	3a d3                	cmp    dl,bl
  40ce7c:	75 1e                	jne    0x40ce9c
  40ce7e:	84 c9                	test   cl,cl
  40ce80:	74 16                	je     0x40ce98
  40ce82:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40ce85:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40ce88:	8a ca                	mov    cl,dl
  40ce8a:	3a d3                	cmp    dl,bl
  40ce8c:	75 0e                	jne    0x40ce9c
  40ce8e:	83 c0 02             	add    eax,0x2
  40ce91:	83 c6 02             	add    esi,0x2
  40ce94:	84 c9                	test   cl,cl
  40ce96:	75 dc                	jne    0x40ce74
  40ce98:	33 c0                	xor    eax,eax
  40ce9a:	eb 05                	jmp    0x40cea1
  40ce9c:	1b c0                	sbb    eax,eax
  40ce9e:	83 d8 ff             	sbb    eax,0xffffffff
  40cea1:	85 c0                	test   eax,eax
  40cea3:	75 0c                	jne    0x40ceb1
  40cea5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cea8:	c6 40 10 22          	mov    BYTE PTR [eax+0x10],0x22
  40ceac:	e9 2a 22 00 00       	jmp    0x40f0db
  40ceb1:	be 64 0f 50 00       	mov    esi,0x500f64
  40ceb6:	8b c7                	mov    eax,edi
  40ceb8:	8a 10                	mov    dl,BYTE PTR [eax]
  40ceba:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cebc:	8a ca                	mov    cl,dl
  40cebe:	3a d3                	cmp    dl,bl
  40cec0:	75 1e                	jne    0x40cee0
  40cec2:	84 c9                	test   cl,cl
  40cec4:	74 16                	je     0x40cedc
  40cec6:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cec9:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cecc:	8a ca                	mov    cl,dl
  40cece:	3a d3                	cmp    dl,bl
  40ced0:	75 0e                	jne    0x40cee0
  40ced2:	83 c0 02             	add    eax,0x2
  40ced5:	83 c6 02             	add    esi,0x2
  40ced8:	84 c9                	test   cl,cl
  40ceda:	75 dc                	jne    0x40ceb8
  40cedc:	33 c0                	xor    eax,eax
  40cede:	eb 05                	jmp    0x40cee5
  40cee0:	1b c0                	sbb    eax,eax
  40cee2:	83 d8 ff             	sbb    eax,0xffffffff
  40cee5:	85 c0                	test   eax,eax
  40cee7:	0f 84 e7 21 00 00    	je     0x40f0d4
  40ceed:	be 58 0f 50 00       	mov    esi,0x500f58
  40cef2:	8b c7                	mov    eax,edi
  40cef4:	8a 10                	mov    dl,BYTE PTR [eax]
  40cef6:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cef8:	8a ca                	mov    cl,dl
  40cefa:	3a d3                	cmp    dl,bl
  40cefc:	75 1e                	jne    0x40cf1c
  40cefe:	84 c9                	test   cl,cl
  40cf00:	74 16                	je     0x40cf18
  40cf02:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cf05:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cf08:	8a ca                	mov    cl,dl
  40cf0a:	3a d3                	cmp    dl,bl
  40cf0c:	75 0e                	jne    0x40cf1c
  40cf0e:	83 c0 02             	add    eax,0x2
  40cf11:	83 c6 02             	add    esi,0x2
  40cf14:	84 c9                	test   cl,cl
  40cf16:	75 dc                	jne    0x40cef4
  40cf18:	33 c0                	xor    eax,eax
  40cf1a:	eb 05                	jmp    0x40cf21
  40cf1c:	1b c0                	sbb    eax,eax
  40cf1e:	83 d8 ff             	sbb    eax,0xffffffff
  40cf21:	85 c0                	test   eax,eax
  40cf23:	0f 84 ab 21 00 00    	je     0x40f0d4
  40cf29:	be 54 0f 50 00       	mov    esi,0x500f54
  40cf2e:	8b c7                	mov    eax,edi
  40cf30:	8a 10                	mov    dl,BYTE PTR [eax]
  40cf32:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cf34:	8a ca                	mov    cl,dl
  40cf36:	3a d3                	cmp    dl,bl
  40cf38:	75 1e                	jne    0x40cf58
  40cf3a:	84 c9                	test   cl,cl
  40cf3c:	74 16                	je     0x40cf54
  40cf3e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cf41:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cf44:	8a ca                	mov    cl,dl
  40cf46:	3a d3                	cmp    dl,bl
  40cf48:	75 0e                	jne    0x40cf58
  40cf4a:	83 c0 02             	add    eax,0x2
  40cf4d:	83 c6 02             	add    esi,0x2
  40cf50:	84 c9                	test   cl,cl
  40cf52:	75 dc                	jne    0x40cf30
  40cf54:	33 c0                	xor    eax,eax
  40cf56:	eb 05                	jmp    0x40cf5d
  40cf58:	1b c0                	sbb    eax,eax
  40cf5a:	83 d8 ff             	sbb    eax,0xffffffff
  40cf5d:	85 c0                	test   eax,eax
  40cf5f:	75 0c                	jne    0x40cf6d
  40cf61:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cf64:	c6 40 10 27          	mov    BYTE PTR [eax+0x10],0x27
  40cf68:	e9 6e 21 00 00       	jmp    0x40f0db
  40cf6d:	be 50 0f 50 00       	mov    esi,0x500f50
  40cf72:	8b c7                	mov    eax,edi
  40cf74:	8a 10                	mov    dl,BYTE PTR [eax]
  40cf76:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cf78:	8a ca                	mov    cl,dl
  40cf7a:	3a d3                	cmp    dl,bl
  40cf7c:	75 1e                	jne    0x40cf9c
  40cf7e:	84 c9                	test   cl,cl
  40cf80:	74 16                	je     0x40cf98
  40cf82:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cf85:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cf88:	8a ca                	mov    cl,dl
  40cf8a:	3a d3                	cmp    dl,bl
  40cf8c:	75 0e                	jne    0x40cf9c
  40cf8e:	83 c0 02             	add    eax,0x2
  40cf91:	83 c6 02             	add    esi,0x2
  40cf94:	84 c9                	test   cl,cl
  40cf96:	75 dc                	jne    0x40cf74
  40cf98:	33 c0                	xor    eax,eax
  40cf9a:	eb 05                	jmp    0x40cfa1
  40cf9c:	1b c0                	sbb    eax,eax
  40cf9e:	83 d8 ff             	sbb    eax,0xffffffff
  40cfa1:	85 c0                	test   eax,eax
  40cfa3:	75 0c                	jne    0x40cfb1
  40cfa5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cfa8:	c6 40 10 28          	mov    BYTE PTR [eax+0x10],0x28
  40cfac:	e9 2a 21 00 00       	jmp    0x40f0db
  40cfb1:	be 44 0f 50 00       	mov    esi,0x500f44
  40cfb6:	8b c7                	mov    eax,edi
  40cfb8:	8a 10                	mov    dl,BYTE PTR [eax]
  40cfba:	8a 1e                	mov    bl,BYTE PTR [esi]
  40cfbc:	8a ca                	mov    cl,dl
  40cfbe:	3a d3                	cmp    dl,bl
  40cfc0:	75 1e                	jne    0x40cfe0
  40cfc2:	84 c9                	test   cl,cl
  40cfc4:	74 16                	je     0x40cfdc
  40cfc6:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40cfc9:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40cfcc:	8a ca                	mov    cl,dl
  40cfce:	3a d3                	cmp    dl,bl
  40cfd0:	75 0e                	jne    0x40cfe0
  40cfd2:	83 c0 02             	add    eax,0x2
  40cfd5:	83 c6 02             	add    esi,0x2
  40cfd8:	84 c9                	test   cl,cl
  40cfda:	75 dc                	jne    0x40cfb8
  40cfdc:	33 c0                	xor    eax,eax
  40cfde:	eb 05                	jmp    0x40cfe5
  40cfe0:	1b c0                	sbb    eax,eax
  40cfe2:	83 d8 ff             	sbb    eax,0xffffffff
  40cfe5:	85 c0                	test   eax,eax
  40cfe7:	75 0c                	jne    0x40cff5
  40cfe9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40cfec:	c6 40 10 29          	mov    BYTE PTR [eax+0x10],0x29
  40cff0:	e9 e6 20 00 00       	jmp    0x40f0db
  40cff5:	be 38 0f 50 00       	mov    esi,0x500f38
  40cffa:	8b c7                	mov    eax,edi
  40cffc:	8a 10                	mov    dl,BYTE PTR [eax]
  40cffe:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d000:	8a ca                	mov    cl,dl
  40d002:	3a d3                	cmp    dl,bl
  40d004:	75 1e                	jne    0x40d024
  40d006:	84 c9                	test   cl,cl
  40d008:	74 16                	je     0x40d020
  40d00a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d00d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d010:	8a ca                	mov    cl,dl
  40d012:	3a d3                	cmp    dl,bl
  40d014:	75 0e                	jne    0x40d024
  40d016:	83 c0 02             	add    eax,0x2
  40d019:	83 c6 02             	add    esi,0x2
  40d01c:	84 c9                	test   cl,cl
  40d01e:	75 dc                	jne    0x40cffc
  40d020:	33 c0                	xor    eax,eax
  40d022:	eb 05                	jmp    0x40d029
  40d024:	1b c0                	sbb    eax,eax
  40d026:	83 d8 ff             	sbb    eax,0xffffffff
  40d029:	85 c0                	test   eax,eax
  40d02b:	75 0c                	jne    0x40d039
  40d02d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d030:	c6 40 10 2a          	mov    BYTE PTR [eax+0x10],0x2a
  40d034:	e9 a2 20 00 00       	jmp    0x40f0db
  40d039:	be 28 0f 50 00       	mov    esi,0x500f28
  40d03e:	8b c7                	mov    eax,edi
  40d040:	8a 10                	mov    dl,BYTE PTR [eax]
  40d042:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d044:	8a ca                	mov    cl,dl
  40d046:	3a d3                	cmp    dl,bl
  40d048:	75 1e                	jne    0x40d068
  40d04a:	84 c9                	test   cl,cl
  40d04c:	74 16                	je     0x40d064
  40d04e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d051:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d054:	8a ca                	mov    cl,dl
  40d056:	3a d3                	cmp    dl,bl
  40d058:	75 0e                	jne    0x40d068
  40d05a:	83 c0 02             	add    eax,0x2
  40d05d:	83 c6 02             	add    esi,0x2
  40d060:	84 c9                	test   cl,cl
  40d062:	75 dc                	jne    0x40d040
  40d064:	33 c0                	xor    eax,eax
  40d066:	eb 05                	jmp    0x40d06d
  40d068:	1b c0                	sbb    eax,eax
  40d06a:	83 d8 ff             	sbb    eax,0xffffffff
  40d06d:	85 c0                	test   eax,eax
  40d06f:	75 0c                	jne    0x40d07d
  40d071:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d074:	c6 40 10 2b          	mov    BYTE PTR [eax+0x10],0x2b
  40d078:	e9 5e 20 00 00       	jmp    0x40f0db
  40d07d:	be 18 0f 50 00       	mov    esi,0x500f18
  40d082:	8b c7                	mov    eax,edi
  40d084:	8a 10                	mov    dl,BYTE PTR [eax]
  40d086:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d088:	8a ca                	mov    cl,dl
  40d08a:	3a d3                	cmp    dl,bl
  40d08c:	75 1e                	jne    0x40d0ac
  40d08e:	84 c9                	test   cl,cl
  40d090:	74 16                	je     0x40d0a8
  40d092:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d095:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d098:	8a ca                	mov    cl,dl
  40d09a:	3a d3                	cmp    dl,bl
  40d09c:	75 0e                	jne    0x40d0ac
  40d09e:	83 c0 02             	add    eax,0x2
  40d0a1:	83 c6 02             	add    esi,0x2
  40d0a4:	84 c9                	test   cl,cl
  40d0a6:	75 dc                	jne    0x40d084
  40d0a8:	33 c0                	xor    eax,eax
  40d0aa:	eb 05                	jmp    0x40d0b1
  40d0ac:	1b c0                	sbb    eax,eax
  40d0ae:	83 d8 ff             	sbb    eax,0xffffffff
  40d0b1:	85 c0                	test   eax,eax
  40d0b3:	75 0c                	jne    0x40d0c1
  40d0b5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d0b8:	c6 40 10 2c          	mov    BYTE PTR [eax+0x10],0x2c
  40d0bc:	e9 1a 20 00 00       	jmp    0x40f0db
  40d0c1:	be 0c 0f 50 00       	mov    esi,0x500f0c
  40d0c6:	8b c7                	mov    eax,edi
  40d0c8:	8a 10                	mov    dl,BYTE PTR [eax]
  40d0ca:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d0cc:	8a ca                	mov    cl,dl
  40d0ce:	3a d3                	cmp    dl,bl
  40d0d0:	75 1e                	jne    0x40d0f0
  40d0d2:	84 c9                	test   cl,cl
  40d0d4:	74 16                	je     0x40d0ec
  40d0d6:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d0d9:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d0dc:	8a ca                	mov    cl,dl
  40d0de:	3a d3                	cmp    dl,bl
  40d0e0:	75 0e                	jne    0x40d0f0
  40d0e2:	83 c0 02             	add    eax,0x2
  40d0e5:	83 c6 02             	add    esi,0x2
  40d0e8:	84 c9                	test   cl,cl
  40d0ea:	75 dc                	jne    0x40d0c8
  40d0ec:	33 c0                	xor    eax,eax
  40d0ee:	eb 05                	jmp    0x40d0f5
  40d0f0:	1b c0                	sbb    eax,eax
  40d0f2:	83 d8 ff             	sbb    eax,0xffffffff
  40d0f5:	85 c0                	test   eax,eax
  40d0f7:	75 0c                	jne    0x40d105
  40d0f9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d0fc:	c6 40 10 2d          	mov    BYTE PTR [eax+0x10],0x2d
  40d100:	e9 d6 1f 00 00       	jmp    0x40f0db
  40d105:	be 00 0f 50 00       	mov    esi,0x500f00
  40d10a:	8b c7                	mov    eax,edi
  40d10c:	8a 10                	mov    dl,BYTE PTR [eax]
  40d10e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d110:	8a ca                	mov    cl,dl
  40d112:	3a d3                	cmp    dl,bl
  40d114:	75 1e                	jne    0x40d134
  40d116:	84 c9                	test   cl,cl
  40d118:	74 16                	je     0x40d130
  40d11a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d11d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d120:	8a ca                	mov    cl,dl
  40d122:	3a d3                	cmp    dl,bl
  40d124:	75 0e                	jne    0x40d134
  40d126:	83 c0 02             	add    eax,0x2
  40d129:	83 c6 02             	add    esi,0x2
  40d12c:	84 c9                	test   cl,cl
  40d12e:	75 dc                	jne    0x40d10c
  40d130:	33 c0                	xor    eax,eax
  40d132:	eb 05                	jmp    0x40d139
  40d134:	1b c0                	sbb    eax,eax
  40d136:	83 d8 ff             	sbb    eax,0xffffffff
  40d139:	85 c0                	test   eax,eax
  40d13b:	75 0c                	jne    0x40d149
  40d13d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d140:	c6 40 10 2e          	mov    BYTE PTR [eax+0x10],0x2e
  40d144:	e9 92 1f 00 00       	jmp    0x40f0db
  40d149:	be f4 0e 50 00       	mov    esi,0x500ef4
  40d14e:	8b c7                	mov    eax,edi
  40d150:	8a 10                	mov    dl,BYTE PTR [eax]
  40d152:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d154:	8a ca                	mov    cl,dl
  40d156:	3a d3                	cmp    dl,bl
  40d158:	75 1e                	jne    0x40d178
  40d15a:	84 c9                	test   cl,cl
  40d15c:	74 16                	je     0x40d174
  40d15e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d161:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d164:	8a ca                	mov    cl,dl
  40d166:	3a d3                	cmp    dl,bl
  40d168:	75 0e                	jne    0x40d178
  40d16a:	83 c0 02             	add    eax,0x2
  40d16d:	83 c6 02             	add    esi,0x2
  40d170:	84 c9                	test   cl,cl
  40d172:	75 dc                	jne    0x40d150
  40d174:	33 c0                	xor    eax,eax
  40d176:	eb 05                	jmp    0x40d17d
  40d178:	1b c0                	sbb    eax,eax
  40d17a:	83 d8 ff             	sbb    eax,0xffffffff
  40d17d:	85 c0                	test   eax,eax
  40d17f:	75 0c                	jne    0x40d18d
  40d181:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d184:	c6 40 10 2f          	mov    BYTE PTR [eax+0x10],0x2f
  40d188:	e9 4e 1f 00 00       	jmp    0x40f0db
  40d18d:	be e8 0e 50 00       	mov    esi,0x500ee8
  40d192:	8b c7                	mov    eax,edi
  40d194:	8a 10                	mov    dl,BYTE PTR [eax]
  40d196:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d198:	8a ca                	mov    cl,dl
  40d19a:	3a d3                	cmp    dl,bl
  40d19c:	75 1e                	jne    0x40d1bc
  40d19e:	84 c9                	test   cl,cl
  40d1a0:	74 16                	je     0x40d1b8
  40d1a2:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d1a5:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d1a8:	8a ca                	mov    cl,dl
  40d1aa:	3a d3                	cmp    dl,bl
  40d1ac:	75 0e                	jne    0x40d1bc
  40d1ae:	83 c0 02             	add    eax,0x2
  40d1b1:	83 c6 02             	add    esi,0x2
  40d1b4:	84 c9                	test   cl,cl
  40d1b6:	75 dc                	jne    0x40d194
  40d1b8:	33 c0                	xor    eax,eax
  40d1ba:	eb 05                	jmp    0x40d1c1
  40d1bc:	1b c0                	sbb    eax,eax
  40d1be:	83 d8 ff             	sbb    eax,0xffffffff
  40d1c1:	85 c0                	test   eax,eax
  40d1c3:	75 0c                	jne    0x40d1d1
  40d1c5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d1c8:	c6 40 10 30          	mov    BYTE PTR [eax+0x10],0x30
  40d1cc:	e9 0a 1f 00 00       	jmp    0x40f0db
  40d1d1:	be d8 0e 50 00       	mov    esi,0x500ed8
  40d1d6:	8b c7                	mov    eax,edi
  40d1d8:	8a 10                	mov    dl,BYTE PTR [eax]
  40d1da:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d1dc:	8a ca                	mov    cl,dl
  40d1de:	3a d3                	cmp    dl,bl
  40d1e0:	75 1e                	jne    0x40d200
  40d1e2:	84 c9                	test   cl,cl
  40d1e4:	74 16                	je     0x40d1fc
  40d1e6:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d1e9:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d1ec:	8a ca                	mov    cl,dl
  40d1ee:	3a d3                	cmp    dl,bl
  40d1f0:	75 0e                	jne    0x40d200
  40d1f2:	83 c0 02             	add    eax,0x2
  40d1f5:	83 c6 02             	add    esi,0x2
  40d1f8:	84 c9                	test   cl,cl
  40d1fa:	75 dc                	jne    0x40d1d8
  40d1fc:	33 c0                	xor    eax,eax
  40d1fe:	eb 05                	jmp    0x40d205
  40d200:	1b c0                	sbb    eax,eax
  40d202:	83 d8 ff             	sbb    eax,0xffffffff
  40d205:	85 c0                	test   eax,eax
  40d207:	75 0c                	jne    0x40d215
  40d209:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d20c:	c6 40 10 31          	mov    BYTE PTR [eax+0x10],0x31
  40d210:	e9 c6 1e 00 00       	jmp    0x40f0db
  40d215:	be c8 0e 50 00       	mov    esi,0x500ec8
  40d21a:	8b c7                	mov    eax,edi
  40d21c:	8a 10                	mov    dl,BYTE PTR [eax]
  40d21e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d220:	8a ca                	mov    cl,dl
  40d222:	3a d3                	cmp    dl,bl
  40d224:	75 1e                	jne    0x40d244
  40d226:	84 c9                	test   cl,cl
  40d228:	74 16                	je     0x40d240
  40d22a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d22d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d230:	8a ca                	mov    cl,dl
  40d232:	3a d3                	cmp    dl,bl
  40d234:	75 0e                	jne    0x40d244
  40d236:	83 c0 02             	add    eax,0x2
  40d239:	83 c6 02             	add    esi,0x2
  40d23c:	84 c9                	test   cl,cl
  40d23e:	75 dc                	jne    0x40d21c
  40d240:	33 c0                	xor    eax,eax
  40d242:	eb 05                	jmp    0x40d249
  40d244:	1b c0                	sbb    eax,eax
  40d246:	83 d8 ff             	sbb    eax,0xffffffff
  40d249:	85 c0                	test   eax,eax
  40d24b:	75 0c                	jne    0x40d259
  40d24d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d250:	c6 40 10 32          	mov    BYTE PTR [eax+0x10],0x32
  40d254:	e9 82 1e 00 00       	jmp    0x40f0db
  40d259:	be b8 0e 50 00       	mov    esi,0x500eb8
  40d25e:	8b c7                	mov    eax,edi
  40d260:	8a 10                	mov    dl,BYTE PTR [eax]
  40d262:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d264:	8a ca                	mov    cl,dl
  40d266:	3a d3                	cmp    dl,bl
  40d268:	75 1e                	jne    0x40d288
  40d26a:	84 c9                	test   cl,cl
  40d26c:	74 16                	je     0x40d284
  40d26e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d271:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d274:	8a ca                	mov    cl,dl
  40d276:	3a d3                	cmp    dl,bl
  40d278:	75 0e                	jne    0x40d288
  40d27a:	83 c0 02             	add    eax,0x2
  40d27d:	83 c6 02             	add    esi,0x2
  40d280:	84 c9                	test   cl,cl
  40d282:	75 dc                	jne    0x40d260
  40d284:	33 c0                	xor    eax,eax
  40d286:	eb 05                	jmp    0x40d28d
  40d288:	1b c0                	sbb    eax,eax
  40d28a:	83 d8 ff             	sbb    eax,0xffffffff
  40d28d:	85 c0                	test   eax,eax
  40d28f:	75 0c                	jne    0x40d29d
  40d291:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d294:	c6 40 10 33          	mov    BYTE PTR [eax+0x10],0x33
  40d298:	e9 3e 1e 00 00       	jmp    0x40f0db
  40d29d:	be a8 0e 50 00       	mov    esi,0x500ea8
  40d2a2:	8b c7                	mov    eax,edi
  40d2a4:	8a 10                	mov    dl,BYTE PTR [eax]
  40d2a6:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d2a8:	8a ca                	mov    cl,dl
  40d2aa:	3a d3                	cmp    dl,bl
  40d2ac:	75 1e                	jne    0x40d2cc
  40d2ae:	84 c9                	test   cl,cl
  40d2b0:	74 16                	je     0x40d2c8
  40d2b2:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d2b5:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d2b8:	8a ca                	mov    cl,dl
  40d2ba:	3a d3                	cmp    dl,bl
  40d2bc:	75 0e                	jne    0x40d2cc
  40d2be:	83 c0 02             	add    eax,0x2
  40d2c1:	83 c6 02             	add    esi,0x2
  40d2c4:	84 c9                	test   cl,cl
  40d2c6:	75 dc                	jne    0x40d2a4
  40d2c8:	33 c0                	xor    eax,eax
  40d2ca:	eb 05                	jmp    0x40d2d1
  40d2cc:	1b c0                	sbb    eax,eax
  40d2ce:	83 d8 ff             	sbb    eax,0xffffffff
  40d2d1:	85 c0                	test   eax,eax
  40d2d3:	75 0c                	jne    0x40d2e1
  40d2d5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d2d8:	c6 40 10 34          	mov    BYTE PTR [eax+0x10],0x34
  40d2dc:	e9 fa 1d 00 00       	jmp    0x40f0db
  40d2e1:	be 9c 0e 50 00       	mov    esi,0x500e9c
  40d2e6:	8b c7                	mov    eax,edi
  40d2e8:	8a 10                	mov    dl,BYTE PTR [eax]
  40d2ea:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d2ec:	8a ca                	mov    cl,dl
  40d2ee:	3a d3                	cmp    dl,bl
  40d2f0:	75 1e                	jne    0x40d310
  40d2f2:	84 c9                	test   cl,cl
  40d2f4:	74 16                	je     0x40d30c
  40d2f6:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d2f9:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d2fc:	8a ca                	mov    cl,dl
  40d2fe:	3a d3                	cmp    dl,bl
  40d300:	75 0e                	jne    0x40d310
  40d302:	83 c0 02             	add    eax,0x2
  40d305:	83 c6 02             	add    esi,0x2
  40d308:	84 c9                	test   cl,cl
  40d30a:	75 dc                	jne    0x40d2e8
  40d30c:	33 c0                	xor    eax,eax
  40d30e:	eb 05                	jmp    0x40d315
  40d310:	1b c0                	sbb    eax,eax
  40d312:	83 d8 ff             	sbb    eax,0xffffffff
  40d315:	85 c0                	test   eax,eax
  40d317:	75 0c                	jne    0x40d325
  40d319:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d31c:	c6 40 10 35          	mov    BYTE PTR [eax+0x10],0x35
  40d320:	e9 b6 1d 00 00       	jmp    0x40f0db
  40d325:	be 90 0e 50 00       	mov    esi,0x500e90
  40d32a:	8b c7                	mov    eax,edi
  40d32c:	8a 10                	mov    dl,BYTE PTR [eax]
  40d32e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d330:	8a ca                	mov    cl,dl
  40d332:	3a d3                	cmp    dl,bl
  40d334:	75 1e                	jne    0x40d354
  40d336:	84 c9                	test   cl,cl
  40d338:	74 16                	je     0x40d350
  40d33a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d33d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d340:	8a ca                	mov    cl,dl
  40d342:	3a d3                	cmp    dl,bl
  40d344:	75 0e                	jne    0x40d354
  40d346:	83 c0 02             	add    eax,0x2
  40d349:	83 c6 02             	add    esi,0x2
  40d34c:	84 c9                	test   cl,cl
  40d34e:	75 dc                	jne    0x40d32c
  40d350:	33 c0                	xor    eax,eax
  40d352:	eb 05                	jmp    0x40d359
  40d354:	1b c0                	sbb    eax,eax
  40d356:	83 d8 ff             	sbb    eax,0xffffffff
  40d359:	85 c0                	test   eax,eax
  40d35b:	75 0c                	jne    0x40d369
  40d35d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d360:	c6 40 10 36          	mov    BYTE PTR [eax+0x10],0x36
  40d364:	e9 72 1d 00 00       	jmp    0x40f0db
  40d369:	be 80 0e 50 00       	mov    esi,0x500e80
  40d36e:	8b c7                	mov    eax,edi
  40d370:	8a 10                	mov    dl,BYTE PTR [eax]
  40d372:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d374:	8a ca                	mov    cl,dl
  40d376:	3a d3                	cmp    dl,bl
  40d378:	75 1e                	jne    0x40d398
  40d37a:	84 c9                	test   cl,cl
  40d37c:	74 16                	je     0x40d394
  40d37e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d381:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d384:	8a ca                	mov    cl,dl
  40d386:	3a d3                	cmp    dl,bl
  40d388:	75 0e                	jne    0x40d398
  40d38a:	83 c0 02             	add    eax,0x2
  40d38d:	83 c6 02             	add    esi,0x2
  40d390:	84 c9                	test   cl,cl
  40d392:	75 dc                	jne    0x40d370
  40d394:	33 c0                	xor    eax,eax
  40d396:	eb 05                	jmp    0x40d39d
  40d398:	1b c0                	sbb    eax,eax
  40d39a:	83 d8 ff             	sbb    eax,0xffffffff
  40d39d:	85 c0                	test   eax,eax
  40d39f:	75 0c                	jne    0x40d3ad
  40d3a1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d3a4:	c6 40 10 37          	mov    BYTE PTR [eax+0x10],0x37
  40d3a8:	e9 2e 1d 00 00       	jmp    0x40f0db
  40d3ad:	be 70 0e 50 00       	mov    esi,0x500e70
  40d3b2:	8b c7                	mov    eax,edi
  40d3b4:	8a 10                	mov    dl,BYTE PTR [eax]
  40d3b6:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d3b8:	8a ca                	mov    cl,dl
  40d3ba:	3a d3                	cmp    dl,bl
  40d3bc:	75 1e                	jne    0x40d3dc
  40d3be:	84 c9                	test   cl,cl
  40d3c0:	74 16                	je     0x40d3d8
  40d3c2:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d3c5:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d3c8:	8a ca                	mov    cl,dl
  40d3ca:	3a d3                	cmp    dl,bl
  40d3cc:	75 0e                	jne    0x40d3dc
  40d3ce:	83 c0 02             	add    eax,0x2
  40d3d1:	83 c6 02             	add    esi,0x2
  40d3d4:	84 c9                	test   cl,cl
  40d3d6:	75 dc                	jne    0x40d3b4
  40d3d8:	33 c0                	xor    eax,eax
  40d3da:	eb 05                	jmp    0x40d3e1
  40d3dc:	1b c0                	sbb    eax,eax
  40d3de:	83 d8 ff             	sbb    eax,0xffffffff
  40d3e1:	85 c0                	test   eax,eax
  40d3e3:	75 0c                	jne    0x40d3f1
  40d3e5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d3e8:	c6 40 10 38          	mov    BYTE PTR [eax+0x10],0x38
  40d3ec:	e9 ea 1c 00 00       	jmp    0x40f0db

