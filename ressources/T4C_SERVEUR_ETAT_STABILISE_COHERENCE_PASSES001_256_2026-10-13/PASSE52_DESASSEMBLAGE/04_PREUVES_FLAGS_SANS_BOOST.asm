; PASSE52 — preuve assembleur du binaire original 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Intervalles semi-ouverts, extraits relus semantiquement ; aucune zone de table en octets assimilee a du code

; [0x40b6ce,0x40b994) — Vues de flags élémentaires sans QueryBoost, premier contexte
  40b6ce:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b6d1:	3b cb                	cmp    ecx,ebx
  40b6d3:	74 27                	je     0x40b6fc
  40b6d5:	8b 11                	mov    edx,DWORD PTR [ecx]
  40b6d7:	53                   	push   ebx
  40b6d8:	68 3e 4e 00 00       	push   0x4e3e
  40b6dd:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b6e0:	5f                   	pop    edi
  40b6e1:	83 c0 64             	add    eax,0x64
  40b6e4:	5e                   	pop    esi
  40b6e5:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b6e8:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b6eb:	5b                   	pop    ebx
  40b6ec:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b6ef:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b6f6:	8b e5                	mov    esp,ebp
  40b6f8:	5d                   	pop    ebp
  40b6f9:	c2 28 00             	ret    0x28
  40b6fc:	5f                   	pop    edi
  40b6fd:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b700:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b703:	5e                   	pop    esi
  40b704:	5b                   	pop    ebx
  40b705:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b708:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b70f:	8b e5                	mov    esp,ebp
  40b711:	5d                   	pop    ebp
  40b712:	c2 28 00             	ret    0x28
  40b715:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b718:	3b cb                	cmp    ecx,ebx
  40b71a:	74 27                	je     0x40b743
  40b71c:	8b 01                	mov    eax,DWORD PTR [ecx]
  40b71e:	53                   	push   ebx
  40b71f:	68 40 4e 00 00       	push   0x4e40
  40b724:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40b727:	5f                   	pop    edi
  40b728:	83 c0 64             	add    eax,0x64
  40b72b:	5e                   	pop    esi
  40b72c:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b72f:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b732:	5b                   	pop    ebx
  40b733:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b736:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b73d:	8b e5                	mov    esp,ebp
  40b73f:	5d                   	pop    ebp
  40b740:	c2 28 00             	ret    0x28
  40b743:	5f                   	pop    edi
  40b744:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b747:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b74a:	5e                   	pop    esi
  40b74b:	5b                   	pop    ebx
  40b74c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b74f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b756:	8b e5                	mov    esp,ebp
  40b758:	5d                   	pop    ebp
  40b759:	c2 28 00             	ret    0x28
  40b75c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b75f:	3b cb                	cmp    ecx,ebx
  40b761:	74 27                	je     0x40b78a
  40b763:	8b 11                	mov    edx,DWORD PTR [ecx]
  40b765:	53                   	push   ebx
  40b766:	68 3f 4e 00 00       	push   0x4e3f
  40b76b:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b76e:	5f                   	pop    edi
  40b76f:	83 c0 64             	add    eax,0x64
  40b772:	5e                   	pop    esi
  40b773:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b776:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b779:	5b                   	pop    ebx
  40b77a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b77d:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b784:	8b e5                	mov    esp,ebp
  40b786:	5d                   	pop    ebp
  40b787:	c2 28 00             	ret    0x28
  40b78a:	5f                   	pop    edi
  40b78b:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b78e:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b791:	5e                   	pop    esi
  40b792:	5b                   	pop    ebx
  40b793:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b796:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b79d:	8b e5                	mov    esp,ebp
  40b79f:	5d                   	pop    ebp
  40b7a0:	c2 28 00             	ret    0x28
  40b7a3:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b7a6:	3b cb                	cmp    ecx,ebx
  40b7a8:	74 27                	je     0x40b7d1
  40b7aa:	8b 01                	mov    eax,DWORD PTR [ecx]
  40b7ac:	53                   	push   ebx
  40b7ad:	68 41 4e 00 00       	push   0x4e41
  40b7b2:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40b7b5:	5f                   	pop    edi
  40b7b6:	83 c0 64             	add    eax,0x64
  40b7b9:	5e                   	pop    esi
  40b7ba:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b7bd:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b7c0:	5b                   	pop    ebx
  40b7c1:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b7c4:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b7cb:	8b e5                	mov    esp,ebp
  40b7cd:	5d                   	pop    ebp
  40b7ce:	c2 28 00             	ret    0x28
  40b7d1:	5f                   	pop    edi
  40b7d2:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b7d5:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b7d8:	5e                   	pop    esi
  40b7d9:	5b                   	pop    ebx
  40b7da:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b7dd:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b7e4:	8b e5                	mov    esp,ebp
  40b7e6:	5d                   	pop    ebp
  40b7e7:	c2 28 00             	ret    0x28
  40b7ea:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b7ed:	3b cb                	cmp    ecx,ebx
  40b7ef:	74 27                	je     0x40b818
  40b7f1:	8b 11                	mov    edx,DWORD PTR [ecx]
  40b7f3:	53                   	push   ebx
  40b7f4:	68 46 4e 00 00       	push   0x4e46
  40b7f9:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b7fc:	5f                   	pop    edi
  40b7fd:	83 c0 64             	add    eax,0x64
  40b800:	5e                   	pop    esi
  40b801:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b804:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b807:	5b                   	pop    ebx
  40b808:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b80b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b812:	8b e5                	mov    esp,ebp
  40b814:	5d                   	pop    ebp
  40b815:	c2 28 00             	ret    0x28
  40b818:	5f                   	pop    edi
  40b819:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b81c:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b81f:	5e                   	pop    esi
  40b820:	5b                   	pop    ebx
  40b821:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b824:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b82b:	8b e5                	mov    esp,ebp
  40b82d:	5d                   	pop    ebp
  40b82e:	c2 28 00             	ret    0x28
  40b831:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b834:	3b cb                	cmp    ecx,ebx
  40b836:	74 27                	je     0x40b85f
  40b838:	8b 01                	mov    eax,DWORD PTR [ecx]
  40b83a:	53                   	push   ebx
  40b83b:	68 45 4e 00 00       	push   0x4e45
  40b840:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40b843:	5f                   	pop    edi
  40b844:	83 c0 64             	add    eax,0x64
  40b847:	5e                   	pop    esi
  40b848:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b84b:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b84e:	5b                   	pop    ebx
  40b84f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b852:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b859:	8b e5                	mov    esp,ebp
  40b85b:	5d                   	pop    ebp
  40b85c:	c2 28 00             	ret    0x28
  40b85f:	5f                   	pop    edi
  40b860:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b863:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b866:	5e                   	pop    esi
  40b867:	5b                   	pop    ebx
  40b868:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b86b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b872:	8b e5                	mov    esp,ebp
  40b874:	5d                   	pop    ebp
  40b875:	c2 28 00             	ret    0x28
  40b878:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b87b:	3b cb                	cmp    ecx,ebx
  40b87d:	74 27                	je     0x40b8a6
  40b87f:	8b 11                	mov    edx,DWORD PTR [ecx]
  40b881:	53                   	push   ebx
  40b882:	68 49 4e 00 00       	push   0x4e49
  40b887:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b88a:	5f                   	pop    edi
  40b88b:	83 c0 64             	add    eax,0x64
  40b88e:	5e                   	pop    esi
  40b88f:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b892:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b895:	5b                   	pop    ebx
  40b896:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b899:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b8a0:	8b e5                	mov    esp,ebp
  40b8a2:	5d                   	pop    ebp
  40b8a3:	c2 28 00             	ret    0x28
  40b8a6:	5f                   	pop    edi
  40b8a7:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b8aa:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b8ad:	5e                   	pop    esi
  40b8ae:	5b                   	pop    ebx
  40b8af:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b8b2:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b8b9:	8b e5                	mov    esp,ebp
  40b8bb:	5d                   	pop    ebp
  40b8bc:	c2 28 00             	ret    0x28
  40b8bf:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b8c2:	3b cb                	cmp    ecx,ebx
  40b8c4:	74 27                	je     0x40b8ed
  40b8c6:	8b 01                	mov    eax,DWORD PTR [ecx]
  40b8c8:	53                   	push   ebx
  40b8c9:	68 4b 4e 00 00       	push   0x4e4b
  40b8ce:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40b8d1:	5f                   	pop    edi
  40b8d2:	83 c0 64             	add    eax,0x64
  40b8d5:	5e                   	pop    esi
  40b8d6:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b8d9:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b8dc:	5b                   	pop    ebx
  40b8dd:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b8e0:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b8e7:	8b e5                	mov    esp,ebp
  40b8e9:	5d                   	pop    ebp
  40b8ea:	c2 28 00             	ret    0x28
  40b8ed:	5f                   	pop    edi
  40b8ee:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b8f1:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b8f4:	5e                   	pop    esi
  40b8f5:	5b                   	pop    ebx
  40b8f6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b8f9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b900:	8b e5                	mov    esp,ebp
  40b902:	5d                   	pop    ebp
  40b903:	c2 28 00             	ret    0x28
  40b906:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b909:	3b cb                	cmp    ecx,ebx
  40b90b:	74 27                	je     0x40b934
  40b90d:	8b 11                	mov    edx,DWORD PTR [ecx]
  40b90f:	53                   	push   ebx
  40b910:	68 4a 4e 00 00       	push   0x4e4a
  40b915:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b918:	5f                   	pop    edi
  40b919:	83 c0 64             	add    eax,0x64
  40b91c:	5e                   	pop    esi
  40b91d:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b920:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b923:	5b                   	pop    ebx
  40b924:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b927:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b92e:	8b e5                	mov    esp,ebp
  40b930:	5d                   	pop    ebp
  40b931:	c2 28 00             	ret    0x28
  40b934:	5f                   	pop    edi
  40b935:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b938:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b93b:	5e                   	pop    esi
  40b93c:	5b                   	pop    ebx
  40b93d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b940:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b947:	8b e5                	mov    esp,ebp
  40b949:	5d                   	pop    ebp
  40b94a:	c2 28 00             	ret    0x28
  40b94d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b950:	3b cb                	cmp    ecx,ebx
  40b952:	74 27                	je     0x40b97b
  40b954:	8b 01                	mov    eax,DWORD PTR [ecx]
  40b956:	53                   	push   ebx
  40b957:	68 4c 4e 00 00       	push   0x4e4c
  40b95c:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40b95f:	5f                   	pop    edi
  40b960:	83 c0 64             	add    eax,0x64
  40b963:	5e                   	pop    esi
  40b964:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b967:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b96a:	5b                   	pop    ebx
  40b96b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b96e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b975:	8b e5                	mov    esp,ebp
  40b977:	5d                   	pop    ebp
  40b978:	c2 28 00             	ret    0x28
  40b97b:	5f                   	pop    edi
  40b97c:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b97f:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b982:	5e                   	pop    esi
  40b983:	5b                   	pop    ebx
  40b984:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b987:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b98e:	8b e5                	mov    esp,ebp
  40b990:	5d                   	pop    ebp
  40b991:	c2 28 00             	ret    0x28

; [0x40bbf7,0x40bd13) — Vues de flags second contexte, premiers quatre cas
  40bbf7:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bbfa:	3b cb                	cmp    ecx,ebx
  40bbfc:	74 27                	je     0x40bc25
  40bbfe:	8b 11                	mov    edx,DWORD PTR [ecx]
  40bc00:	53                   	push   ebx
  40bc01:	68 3e 4e 00 00       	push   0x4e3e
  40bc06:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40bc09:	5f                   	pop    edi
  40bc0a:	83 c0 64             	add    eax,0x64
  40bc0d:	5e                   	pop    esi
  40bc0e:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bc11:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bc14:	5b                   	pop    ebx
  40bc15:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bc18:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bc1f:	8b e5                	mov    esp,ebp
  40bc21:	5d                   	pop    ebp
  40bc22:	c2 28 00             	ret    0x28
  40bc25:	5f                   	pop    edi
  40bc26:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bc29:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bc2c:	5e                   	pop    esi
  40bc2d:	5b                   	pop    ebx
  40bc2e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bc31:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bc38:	8b e5                	mov    esp,ebp
  40bc3a:	5d                   	pop    ebp
  40bc3b:	c2 28 00             	ret    0x28
  40bc3e:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bc41:	3b cb                	cmp    ecx,ebx
  40bc43:	74 27                	je     0x40bc6c
  40bc45:	8b 01                	mov    eax,DWORD PTR [ecx]
  40bc47:	53                   	push   ebx
  40bc48:	68 40 4e 00 00       	push   0x4e40
  40bc4d:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40bc50:	5f                   	pop    edi
  40bc51:	83 c0 64             	add    eax,0x64
  40bc54:	5e                   	pop    esi
  40bc55:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bc58:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bc5b:	5b                   	pop    ebx
  40bc5c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bc5f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bc66:	8b e5                	mov    esp,ebp
  40bc68:	5d                   	pop    ebp
  40bc69:	c2 28 00             	ret    0x28
  40bc6c:	5f                   	pop    edi
  40bc6d:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bc70:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bc73:	5e                   	pop    esi
  40bc74:	5b                   	pop    ebx
  40bc75:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bc78:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bc7f:	8b e5                	mov    esp,ebp
  40bc81:	5d                   	pop    ebp
  40bc82:	c2 28 00             	ret    0x28
  40bc85:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bc88:	3b cb                	cmp    ecx,ebx
  40bc8a:	74 27                	je     0x40bcb3
  40bc8c:	8b 11                	mov    edx,DWORD PTR [ecx]
  40bc8e:	53                   	push   ebx
  40bc8f:	68 3f 4e 00 00       	push   0x4e3f
  40bc94:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40bc97:	5f                   	pop    edi
  40bc98:	83 c0 64             	add    eax,0x64
  40bc9b:	5e                   	pop    esi
  40bc9c:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bc9f:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bca2:	5b                   	pop    ebx
  40bca3:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bca6:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bcad:	8b e5                	mov    esp,ebp
  40bcaf:	5d                   	pop    ebp
  40bcb0:	c2 28 00             	ret    0x28
  40bcb3:	5f                   	pop    edi
  40bcb4:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bcb7:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bcba:	5e                   	pop    esi
  40bcbb:	5b                   	pop    ebx
  40bcbc:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bcbf:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bcc6:	8b e5                	mov    esp,ebp
  40bcc8:	5d                   	pop    ebp
  40bcc9:	c2 28 00             	ret    0x28
  40bccc:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bccf:	3b cb                	cmp    ecx,ebx
  40bcd1:	74 27                	je     0x40bcfa
  40bcd3:	8b 01                	mov    eax,DWORD PTR [ecx]
  40bcd5:	53                   	push   ebx
  40bcd6:	68 41 4e 00 00       	push   0x4e41
  40bcdb:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40bcde:	5f                   	pop    edi
  40bcdf:	83 c0 64             	add    eax,0x64
  40bce2:	5e                   	pop    esi
  40bce3:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bce6:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bce9:	5b                   	pop    ebx
  40bcea:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bced:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bcf4:	8b e5                	mov    esp,ebp
  40bcf6:	5d                   	pop    ebp
  40bcf7:	c2 28 00             	ret    0x28
  40bcfa:	5f                   	pop    edi
  40bcfb:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bcfe:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bd01:	5e                   	pop    esi
  40bd02:	5b                   	pop    ebx
  40bd03:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bd06:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bd0d:	8b e5                	mov    esp,ebp
  40bd0f:	5d                   	pop    ebp
  40bd10:	c2 28 00             	ret    0x28

; [0x40bf4b,0x40c07e) — Autres operandes: GetAC, type de unite, thunk et autre methode virtuelle
  40bf4b:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40bf4e:	3b cb                	cmp    ecx,ebx
  40bf50:	0f 84 2f 01 00 00    	je     0x40c085
  40bf56:	8b 11                	mov    edx,DWORD PTR [ecx]
  40bf58:	ff 92 68 01 00 00    	call   DWORD PTR [edx+0x168]
  40bf5e:	5f                   	pop    edi
  40bf5f:	5e                   	pop    esi
  40bf60:	5b                   	pop    ebx
  40bf61:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bf64:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bf6b:	8b e5                	mov    esp,ebp
  40bf6d:	5d                   	pop    ebp
  40bf6e:	c2 28 00             	ret    0x28
  40bf71:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bf74:	3b cb                	cmp    ecx,ebx
  40bf76:	0f 84 09 01 00 00    	je     0x40c085
  40bf7c:	8b 01                	mov    eax,DWORD PTR [ecx]
  40bf7e:	ff 90 68 01 00 00    	call   DWORD PTR [eax+0x168]
  40bf84:	5f                   	pop    edi
  40bf85:	5e                   	pop    esi
  40bf86:	5b                   	pop    ebx
  40bf87:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bf8a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bf91:	8b e5                	mov    esp,ebp
  40bf93:	5d                   	pop    ebp
  40bf94:	c2 28 00             	ret    0x28
  40bf97:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bf9a:	3b cb                	cmp    ecx,ebx
  40bf9c:	74 21                	je     0x40bfbf
  40bf9e:	e8 cd f6 07 00       	call   0x48b670
  40bfa3:	0f be c8             	movsx  ecx,al
  40bfa6:	5f                   	pop    edi
  40bfa7:	5e                   	pop    esi
  40bfa8:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  40bfab:	5b                   	pop    ebx
  40bfac:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bfaf:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bfb2:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bfb9:	8b e5                	mov    esp,ebp
  40bfbb:	5d                   	pop    ebp
  40bfbc:	c2 28 00             	ret    0x28
  40bfbf:	5f                   	pop    edi
  40bfc0:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bfc3:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bfc6:	5e                   	pop    esi
  40bfc7:	5b                   	pop    ebx
  40bfc8:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bfcb:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bfd2:	8b e5                	mov    esp,ebp
  40bfd4:	5d                   	pop    ebp
  40bfd5:	c2 28 00             	ret    0x28
  40bfd8:	dd 05 28 e6 4d 00    	fld    QWORD PTR ds:0x4de628
  40bfde:	dd 05 20 e6 4d 00    	fld    QWORD PTR ds:0x4de620
  40bfe4:	e8 97 5d 0c 00       	call   0x4d1d80
  40bfe9:	5f                   	pop    edi
  40bfea:	5e                   	pop    esi
  40bfeb:	5b                   	pop    ebx
  40bfec:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bfef:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bff6:	8b e5                	mov    esp,ebp
  40bff8:	5d                   	pop    ebp
  40bff9:	c2 28 00             	ret    0x28
  40bffc:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40bfff:	3b cb                	cmp    ecx,ebx
  40c001:	74 21                	je     0x40c024
  40c003:	8b 11                	mov    edx,DWORD PTR [ecx]
  40c005:	ff 92 04 01 00 00    	call   DWORD PTR [edx+0x104]
  40c00b:	5f                   	pop    edi
  40c00c:	5e                   	pop    esi
  40c00d:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40c010:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40c013:	5b                   	pop    ebx
  40c014:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40c017:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40c01e:	8b e5                	mov    esp,ebp
  40c020:	5d                   	pop    ebp
  40c021:	c2 28 00             	ret    0x28
  40c024:	5f                   	pop    edi
  40c025:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40c028:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40c02b:	5e                   	pop    esi
  40c02c:	5b                   	pop    ebx
  40c02d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40c030:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40c037:	8b e5                	mov    esp,ebp
  40c039:	5d                   	pop    ebp
  40c03a:	c2 28 00             	ret    0x28
  40c03d:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40c040:	3b cb                	cmp    ecx,ebx
  40c042:	74 21                	je     0x40c065
  40c044:	8b 01                	mov    eax,DWORD PTR [ecx]
  40c046:	ff 90 04 01 00 00    	call   DWORD PTR [eax+0x104]
  40c04c:	5f                   	pop    edi
  40c04d:	5e                   	pop    esi
  40c04e:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40c051:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40c054:	5b                   	pop    ebx
  40c055:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40c058:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40c05f:	8b e5                	mov    esp,ebp
  40c061:	5d                   	pop    ebp
  40c062:	c2 28 00             	ret    0x28
  40c065:	5f                   	pop    edi
  40c066:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40c069:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40c06c:	5e                   	pop    esi
  40c06d:	5b                   	pop    ebx
  40c06e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40c071:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40c078:	8b e5                	mov    esp,ebp
  40c07a:	5d                   	pop    ebp
  40c07b:	c2 28 00             	ret    0x28

