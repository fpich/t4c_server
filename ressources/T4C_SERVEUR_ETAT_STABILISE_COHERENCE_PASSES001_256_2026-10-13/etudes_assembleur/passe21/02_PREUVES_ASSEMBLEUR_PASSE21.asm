; Passe 21 — instruction désassemblées de T4C Server(1).exe, format PE32
; Binaire SHA-256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc

; ===== Character::attacked — traitement AC et borne inférieure [0x41b149..0x41b1aa] =====
  41b149:	8b 8e c0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c0]
  41b14f:	3b 8e c4 01 00 00    	cmp    ecx,DWORD PTR [esi+0x1c4]
  41b155:	75 06                	jne    0x41b15d
  41b157:	85 c9                	test   ecx,ecx
  41b159:	74 2a                	je     0x41b185
  41b15b:	eb 1b                	jmp    0x41b178
  41b15d:	85 c9                	test   ecx,ecx
  41b15f:	74 0d                	je     0x41b16e
  41b161:	8b 11                	mov    edx,DWORD PTR [ecx]
  41b163:	6a 00                	push   0x0
  41b165:	57                   	push   edi
  41b166:	53                   	push   ebx
  41b167:	56                   	push   esi
  41b168:	51                   	push   ecx
  41b169:	6a 02                	push   0x2
  41b16b:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41b16e:	8b 8e c4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c4]
  41b174:	85 c9                	test   ecx,ecx
  41b176:	74 0d                	je     0x41b185
  41b178:	8b 01                	mov    eax,DWORD PTR [ecx]
  41b17a:	6a 00                	push   0x0
  41b17c:	57                   	push   edi
  41b17d:	53                   	push   ebx
  41b17e:	56                   	push   esi
  41b17f:	51                   	push   ecx
  41b180:	6a 02                	push   0x2
  41b182:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41b185:	8b 16                	mov    edx,DWORD PTR [esi]
  41b187:	8b ce                	mov    ecx,esi
  41b189:	ff 92 68 01 00 00    	call   DWORD PTR [edx+0x168]
  41b18f:	dc 2f                	fsubr  QWORD PTR [edi]
  41b191:	dc 15 30 e6 4d 00    	fcom   QWORD PTR ds:0x4de630
  41b197:	dd 17                	fst    QWORD PTR [edi]
  41b199:	df e0                	fnstsw ax
  41b19b:	f6 c4 41             	test   ah,0x41
  41b19e:	74 08                	je     0x41b1a8
  41b1a0:	dd d8                	fstp   st(0)
  41b1a2:	dd 05 c0 e8 4d 00    	fld    QWORD PTR ds:0x4de8c0
  41b1a8:	dd 1f                	fstp   QWORD PTR [edi]

; ===== Character::hit — récupération HP, effets, décision mort [0x41cc99..0x41cd35] =====
  41cc99:	8b 86 f0 02 00 00    	mov    eax,DWORD PTR [esi+0x2f0]
  41cc9f:	85 c0                	test   eax,eax
  41cca1:	74 07                	je     0x41ccaa
  41cca3:	c6 86 e4 02 00 00 07 	mov    BYTE PTR [esi+0x2e4],0x7
  41ccaa:	3b fe                	cmp    edi,esi
  41ccac:	c7 86 f0 02 00 00 00 	mov    DWORD PTR [esi+0x2f0],0x0
  41ccb3:	00 00 00 
  41ccb6:	74 0d                	je     0x41ccc5
  41ccb8:	57                   	push   edi
  41ccb9:	6a 00                	push   0x0
  41ccbb:	53                   	push   ebx
  41ccbc:	6a 0e                	push   0xe
  41ccbe:	8b ce                	mov    ecx,esi
  41ccc0:	e8 4b 04 07 00       	call   0x48d110
  41ccc5:	8b 06                	mov    eax,DWORD PTR [esi]
  41ccc7:	8b ce                	mov    ecx,esi
  41ccc9:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  41cccf:	8b 16                	mov    edx,DWORD PTR [esi]
  41ccd1:	8b ce                	mov    ecx,esi
  41ccd3:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  41ccd6:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  41ccdc:	8b 8e 78 01 00 00    	mov    ecx,DWORD PTR [esi+0x178]
  41cce2:	85 c9                	test   ecx,ecx
  41cce4:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  41cce7:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
  41ccea:	74 1a                	je     0x41cd06
  41ccec:	e8 ef 7d 03 00       	call   0x454ae0
  41ccf1:	25 00 00 00 40       	and    eax,0x40000000
  41ccf6:	33 c9                	xor    ecx,ecx
  41ccf8:	0b c1                	or     eax,ecx
  41ccfa:	75 0a                	jne    0x41cd06
  41ccfc:	dd 03                	fld    QWORD PTR [ebx]
  41ccfe:	e8 77 50 0b 00       	call   0x4d1d7a
  41cd03:	29 45 0c             	sub    DWORD PTR [ebp+0xc],eax
  41cd06:	8b 8e cc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1cc]
  41cd0c:	85 c9                	test   ecx,ecx
  41cd0e:	74 0d                	je     0x41cd1d
  41cd10:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cd12:	6a 00                	push   0x0
  41cd14:	53                   	push   ebx
  41cd15:	57                   	push   edi
  41cd16:	56                   	push   esi
  41cd17:	51                   	push   ecx
  41cd18:	6a 0e                	push   0xe
  41cd1a:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41cd1d:	8b 8e d0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d0]
  41cd23:	85 c9                	test   ecx,ecx
  41cd25:	74 0d                	je     0x41cd34
  41cd27:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cd29:	6a 00                	push   0x0
  41cd2b:	53                   	push   ebx
  41cd2c:	57                   	push   edi
  41cd2d:	56                   	push   esi
  41cd2e:	51                   	push   ecx
  41cd2f:	6a 0e                	push   0xe
  41cd31:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41cd34:	8b 8e b8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b8]

; ===== Character::hit — borne HP et message, branche mort [0x41ce17..0x41cef0] =====
  41ce17:	85 c9                	test   ecx,ecx
  41ce19:	74 0d                	je     0x41ce28
  41ce1b:	8b 01                	mov    eax,DWORD PTR [ecx]
  41ce1d:	6a 00                	push   0x0
  41ce1f:	53                   	push   ebx
  41ce20:	57                   	push   edi
  41ce21:	56                   	push   esi
  41ce22:	51                   	push   ecx
  41ce23:	6a 0e                	push   0xe
  41ce25:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41ce28:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  41ce2b:	85 c0                	test   eax,eax
  41ce2d:	7d 07                	jge    0x41ce36
  41ce2f:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
  41ce36:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce39:	e8 b2 8f 06 00       	call   0x485df0
  41ce3e:	6a 21                	push   0x21
  41ce40:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce43:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  41ce4a:	e8 01 93 06 00       	call   0x486150
  41ce4f:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  41ce52:	51                   	push   ecx
  41ce53:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce56:	e8 95 93 06 00       	call   0x4861f0
  41ce5b:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  41ce5e:	52                   	push   edx
  41ce5f:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce62:	e8 89 93 06 00       	call   0x4861f0
  41ce67:	8b 06                	mov    eax,DWORD PTR [esi]
  41ce69:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce6c:	51                   	push   ecx
  41ce6d:	8b ce                	mov    ecx,esi
  41ce6f:	ff 90 4c 01 00 00    	call   DWORD PTR [eax+0x14c]
  41ce75:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce78:	e8 43 90 06 00       	call   0x485ec0
  41ce7d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  41ce80:	85 c9                	test   ecx,ecx
  41ce82:	74 78                	je     0x41cefc
  41ce84:	8b 41 44             	mov    eax,DWORD PTR [ecx+0x44]
  41ce87:	85 c0                	test   eax,eax
  41ce89:	74 71                	je     0x41cefc
  41ce8b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  41ce8e:	85 c0                	test   eax,eax
  41ce90:	7f 5a                	jg     0x41ceec
  41ce92:	e8 49 7c 03 00       	call   0x454ae0
  41ce97:	25 00 00 00 40       	and    eax,0x40000000
  41ce9c:	33 c9                	xor    ecx,ecx
  41ce9e:	0b c1                	or     eax,ecx
  41cea0:	75 4a                	jne    0x41ceec
  41cea2:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  41cea5:	e8 36 7c 03 00       	call   0x454ae0
  41ceaa:	81 e2 80 00 00 00    	and    edx,0x80
  41ceb0:	33 c0                	xor    eax,eax
  41ceb2:	0b c2                	or     eax,edx
  41ceb4:	75 36                	jne    0x41ceec
  41ceb6:	8b 16                	mov    edx,DWORD PTR [esi]
  41ceb8:	57                   	push   edi
  41ceb9:	53                   	push   ebx
  41ceba:	8b ce                	mov    ecx,esi
  41cebc:	ff 52 44             	call   DWORD PTR [edx+0x44]
  41cebf:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  41cec2:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cec4:	ff 50 08             	call   DWORD PTR [eax+0x8]
  41cec7:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ceca:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  41ced1:	e8 aa 8f 06 00       	call   0x485e80
  41ced6:	5f                   	pop    edi
  41ced7:	5e                   	pop    esi
  41ced8:	83 c8 ff             	or     eax,0xffffffff
  41cedb:	5b                   	pop    ebx
  41cedc:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41cedf:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  41cee6:	8b e5                	mov    esp,ebp
  41cee8:	5d                   	pop    ebp
  41cee9:	c2 08 00             	ret    0x8
  41ceec:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  41ceef:	8b 16                	mov    edx,DWORD PTR [esi]

; ===== Creatures::hit — événement, garde et soustraction HP [0x432900..0x43298c] =====
  432900:	55                   	push   ebp
  432901:	8b ec                	mov    ebp,esp
  432903:	53                   	push   ebx
  432904:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  432907:	56                   	push   esi
  432908:	57                   	push   edi
  432909:	6a 00                	push   0x0
  43290b:	8b f1                	mov    esi,ecx
  43290d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  432910:	8b 06                	mov    eax,DWORD PTR [esi]
  432912:	53                   	push   ebx
  432913:	51                   	push   ecx
  432914:	6a 00                	push   0x0
  432916:	56                   	push   esi
  432917:	6a 0e                	push   0xe
  432919:	8b ce                	mov    ecx,esi
  43291b:	ff 50 24             	call   DWORD PTR [eax+0x24]
  43291e:	8b 16                	mov    edx,DWORD PTR [esi]
  432920:	8d 45 08             	lea    eax,[ebp+0x8]
  432923:	50                   	push   eax
  432924:	6a 00                	push   0x0
  432926:	6a 00                	push   0x0
  432928:	6a 00                	push   0x0
  43292a:	56                   	push   esi
  43292b:	6a 14                	push   0x14
  43292d:	8b ce                	mov    ecx,esi
  43292f:	c7 45 08 00 00 00 00 	mov    DWORD PTR [ebp+0x8],0x0
  432936:	ff 52 24             	call   DWORD PTR [edx+0x24]
  432939:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  43293c:	85 c0                	test   eax,eax
  43293e:	74 45                	je     0x432985
  432940:	81 78 18 a0 86 01 00 	cmp    DWORD PTR [eax+0x18],0x186a0
  432947:	7d 3c                	jge    0x432985
  432949:	8b 16                	mov    edx,DWORD PTR [esi]
  43294b:	8b ce                	mov    ecx,esi
  43294d:	ff 92 d8 00 00 00    	call   DWORD PTR [edx+0xd8]
  432953:	dd 03                	fld    QWORD PTR [ebx]
  432955:	8b f8                	mov    edi,eax
  432957:	e8 1e f4 09 00       	call   0x4d1d7a
  43295c:	2b f8                	sub    edi,eax
  43295e:	85 ff                	test   edi,edi
  432960:	7f 16                	jg     0x432978
  432962:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  432965:	8b 06                	mov    eax,DWORD PTR [esi]
  432967:	51                   	push   ecx
  432968:	53                   	push   ebx
  432969:	8b ce                	mov    ecx,esi
  43296b:	ff 50 44             	call   DWORD PTR [eax+0x44]
  43296e:	5f                   	pop    edi
  43296f:	5e                   	pop    esi
  432970:	83 c8 ff             	or     eax,0xffffffff
  432973:	5b                   	pop    ebx
  432974:	5d                   	pop    ebp
  432975:	c2 08 00             	ret    0x8
  432978:	8b 16                	mov    edx,DWORD PTR [esi]
  43297a:	6a 00                	push   0x0
  43297c:	57                   	push   edi
  43297d:	8b ce                	mov    ecx,esi
  43297f:	ff 92 dc 00 00 00    	call   DWORD PTR [edx+0xdc]
  432985:	5f                   	pop    edi
  432986:	5e                   	pop    esi
  432987:	33 c0                	xor    eax,eax
  432989:	5b                   	pop    ebx
  43298a:	5d                   	pop    ebp
  43298b:	c2 08 00             	ret    0x8

; ===== Group::DistributeKillXP — algorithme complet [0x439fa0..0x43a1bf] =====
  439fa0:	55                   	push   ebp
  439fa1:	8b ec                	mov    ebp,esp
  439fa3:	6a ff                	push   0xffffffff
  439fa5:	68 d8 56 4d 00       	push   0x4d56d8
  439faa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  439fb0:	50                   	push   eax
  439fb1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  439fb8:	81 ec 1c 08 00 00    	sub    esp,0x81c
  439fbe:	8a 45 0b             	mov    al,BYTE PTR [ebp+0xb]
  439fc1:	53                   	push   ebx
  439fc2:	56                   	push   esi
  439fc3:	57                   	push   edi
  439fc4:	8b f1                	mov    esi,ecx
  439fc6:	6a 00                	push   0x0
  439fc8:	8d 4d d8             	lea    ecx,[ebp-0x28]
  439fcb:	88 45 d8             	mov    BYTE PTR [ebp-0x28],al
  439fce:	e8 ad 17 00 00       	call   0x43b780
  439fd3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  439fd6:	8d 4d d8             	lea    ecx,[ebp-0x28]
  439fd9:	51                   	push   ecx
  439fda:	52                   	push   edx
  439fdb:	8b ce                	mov    ecx,esi
  439fdd:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  439fe4:	e8 c7 0c 00 00       	call   0x43acb0
  439fe9:	8b 75 dc             	mov    esi,DWORD PTR [ebp-0x24]
  439fec:	85 f6                	test   esi,esi
  439fee:	0f 84 ba 01 00 00    	je     0x43a1ae
  439ff4:	8b 5d e0             	mov    ebx,DWORD PTR [ebp-0x20]
  439ff7:	8b fb                	mov    edi,ebx
  439ff9:	2b fe                	sub    edi,esi
  439ffb:	c1 ff 02             	sar    edi,0x2
  439ffe:	0f 84 9d 01 00 00    	je     0x43a1a1
  43a004:	8d 47 ff             	lea    eax,[edi-0x1]
  43a007:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  43a00a:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
  43a011:	df 6d e8             	fild   QWORD PTR [ebp-0x18]
  43a014:	dc 0d 18 ef 4d 00    	fmul   QWORD PTR ds:0x4def18
  43a01a:	dc 05 c0 e8 4d 00    	fadd   QWORD PTR ds:0x4de8c0
  43a020:	dc 15 10 ef 4d 00    	fcom   QWORD PTR ds:0x4def10
  43a026:	df e0                	fnstsw ax
  43a028:	f6 c4 41             	test   ah,0x41
  43a02b:	75 08                	jne    0x43a035
  43a02d:	dd d8                	fstp   st(0)
  43a02f:	dd 05 10 ef 4d 00    	fld    QWORD PTR ds:0x4def10
  43a035:	df 6d 0c             	fild   QWORD PTR [ebp+0xc]
  43a038:	d8 c9                	fmul   st,st(1)
  43a03a:	e8 3b 7d 09 00       	call   0x4d1d7a
  43a03f:	dd d8                	fstp   st(0)
  43a041:	6a 00                	push   0x0
  43a043:	57                   	push   edi
  43a044:	52                   	push   edx
  43a045:	50                   	push   eax
  43a046:	e8 15 7e 09 00       	call   0x4d1e60
  43a04b:	3b f3                	cmp    esi,ebx
  43a04d:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  43a050:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
  43a053:	c7 45 08 00 00 00 00 	mov    DWORD PTR [ebp+0x8],0x0
  43a05a:	74 35                	je     0x43a091
  43a05c:	8b 0e                	mov    ecx,DWORD PTR [esi]
  43a05e:	8b 11                	mov    edx,DWORD PTR [ecx]
  43a060:	ff 92 3c 01 00 00    	call   DWORD PTR [edx+0x13c]
  43a066:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  43a069:	25 ff ff 00 00       	and    eax,0xffff
  43a06e:	3b c1                	cmp    eax,ecx
  43a070:	76 12                	jbe    0x43a084
  43a072:	8b 0e                	mov    ecx,DWORD PTR [esi]
  43a074:	8b 01                	mov    eax,DWORD PTR [ecx]
  43a076:	ff 90 3c 01 00 00    	call   DWORD PTR [eax+0x13c]
  43a07c:	25 ff ff 00 00       	and    eax,0xffff
  43a081:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  43a084:	8b 5d e0             	mov    ebx,DWORD PTR [ebp-0x20]
  43a087:	83 c6 04             	add    esi,0x4
  43a08a:	3b f3                	cmp    esi,ebx
  43a08c:	75 ce                	jne    0x43a05c
  43a08e:	8b 75 dc             	mov    esi,DWORD PTR [ebp-0x24]
  43a091:	8b c6                	mov    eax,esi
  43a093:	3b c3                	cmp    eax,ebx
  43a095:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  43a098:	0f 84 03 01 00 00    	je     0x43a1a1
  43a09e:	eb 03                	jmp    0x43a0a3
  43a0a0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  43a0a3:	8b 30                	mov    esi,DWORD PTR [eax]
  43a0a5:	8b 16                	mov    edx,DWORD PTR [esi]
  43a0a7:	8b ce                	mov    ecx,esi
  43a0a9:	ff 92 3c 01 00 00    	call   DWORD PTR [edx+0x13c]
  43a0af:	33 c9                	xor    ecx,ecx
  43a0b1:	66 8b c8             	mov    cx,ax
  43a0b4:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  43a0b9:	81 e1 ff ff 00 00    	and    ecx,0xffff
  43a0bf:	f7 e9                	imul   ecx
  43a0c1:	c1 fa 03             	sar    edx,0x3
  43a0c4:	8b c2                	mov    eax,edx
  43a0c6:	c1 e8 1f             	shr    eax,0x1f
  43a0c9:	03 d0                	add    edx,eax
  43a0cb:	8d 3c 95 04 00 00 00 	lea    edi,[edx*4+0x4]
  43a0d2:	8b 16                	mov    edx,DWORD PTR [esi]
  43a0d4:	8b ce                	mov    ecx,esi
  43a0d6:	ff 92 3c 01 00 00    	call   DWORD PTR [edx+0x13c]
  43a0dc:	66 8b c8             	mov    cx,ax
  43a0df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  43a0e2:	33 d2                	xor    edx,edx
  43a0e4:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  43a0e7:	81 e1 ff ff 00 00    	and    ecx,0xffff
  43a0ed:	2b c1                	sub    eax,ecx
  43a0ef:	f7 f7                	div    edi
  43a0f1:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  43a0f4:	85 c0                	test   eax,eax
  43a0f6:	76 25                	jbe    0x43a11d
  43a0f8:	83 f8 01             	cmp    eax,0x1
  43a0fb:	dd 05 18 ef 4d 00    	fld    QWORD PTR ds:0x4def18
  43a101:	76 0a                	jbe    0x43a10d
  43a103:	48                   	dec    eax
  43a104:	48                   	dec    eax
  43a105:	dc 0d 08 ef 4d 00    	fmul   QWORD PTR ds:0x4def08
  43a10b:	75 f7                	jne    0x43a104
  43a10d:	df 6d 0c             	fild   QWORD PTR [ebp+0xc]
  43a110:	d8 c9                	fmul   st,st(1)
  43a112:	e8 63 7c 09 00       	call   0x4d1d7a
  43a117:	dd d8                	fstp   st(0)
  43a119:	8b f8                	mov    edi,eax
  43a11b:	8b da                	mov    ebx,edx
  43a11d:	8b 06                	mov    eax,DWORD PTR [esi]
  43a11f:	8b ce                	mov    ecx,esi
  43a121:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  43a124:	ff 50 54             	call   DWORD PTR [eax+0x54]
  43a127:	03 c7                	add    eax,edi
  43a129:	13 d3                	adc    edx,ebx
  43a12b:	52                   	push   edx
  43a12c:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  43a12f:	50                   	push   eax
  43a130:	8b ce                	mov    ecx,esi
  43a132:	ff 52 50             	call   DWORD PTR [edx+0x50]
  43a135:	8b ce                	mov    ecx,esi
  43a137:	e8 b4 09 fe ff       	call   0x41aaf0
  43a13c:	85 c0                	test   eax,eax
  43a13e:	74 40                	je     0x43a180
  43a140:	8b c8                	mov    ecx,eax
  43a142:	e8 99 a9 01 00       	call   0x454ae0
  43a147:	25 00 00 00 80       	and    eax,0x80000000
  43a14c:	33 c9                	xor    ecx,ecx
  43a14e:	0b c1                	or     eax,ecx
  43a150:	74 2e                	je     0x43a180
  43a152:	53                   	push   ebx
  43a153:	57                   	push   edi
  43a154:	8d 85 d8 f7 ff ff    	lea    eax,[ebp-0x828]
  43a15a:	68 b4 34 50 00       	push   0x5034b4
  43a15f:	50                   	push   eax
  43a160:	88 8d d8 f7 ff ff    	mov    BYTE PTR [ebp-0x828],cl
  43a166:	e8 d5 97 fc ff       	call   0x403940
  43a16b:	83 c4 0c             	add    esp,0xc
  43a16e:	8b cc                	mov    ecx,esp
  43a170:	89 65 ec             	mov    DWORD PTR [ebp-0x14],esp
  43a173:	50                   	push   eax
  43a174:	e8 eb 78 09 00       	call   0x4d1a64
  43a179:	8b ce                	mov    ecx,esi
  43a17b:	e8 10 8d fe ff       	call   0x422e90
  43a180:	8b 16                	mov    edx,DWORD PTR [esi]
  43a182:	8b ce                	mov    ecx,esi
  43a184:	ff 92 30 01 00 00    	call   DWORD PTR [edx+0x130]
  43a18a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  43a18d:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  43a190:	83 c0 04             	add    eax,0x4
  43a193:	3b c1                	cmp    eax,ecx
  43a195:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  43a198:	0f 85 02 ff ff ff    	jne    0x43a0a0
  43a19e:	8b 75 dc             	mov    esi,DWORD PTR [ebp-0x24]
  43a1a1:	85 f6                	test   esi,esi
  43a1a3:	74 09                	je     0x43a1ae
  43a1a5:	56                   	push   esi
  43a1a6:	e8 b5 7e 00 00       	call   0x442060
  43a1ab:	83 c4 04             	add    esp,0x4
  43a1ae:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  43a1b1:	5f                   	pop    edi
  43a1b2:	5e                   	pop    esi
  43a1b3:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  43a1ba:	5b                   	pop    ebx
  43a1bb:	8b e5                	mov    esp,ebp
  43a1bd:	5d                   	pop    ebp
  43a1be:	c2 0c 00             	ret    0xc

; ===== NPCstructure::OnDeath — branche expérience groupe [0x44a944..0x44a96c] =====
  44a944:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
  44a947:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
  44a94a:	8b 06                	mov    eax,DWORD PTR [esi]
  44a94c:	51                   	push   ecx
  44a94d:	52                   	push   edx
  44a94e:	8b ce                	mov    ecx,esi
  44a950:	ff 50 50             	call   DWORD PTR [eax+0x50]
  44a953:	eb 14                	jmp    0x44a969
  44a955:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  44a958:	50                   	push   eax
  44a959:	53                   	push   ebx
  44a95a:	56                   	push   esi
  44a95b:	8b ce                	mov    ecx,esi
  44a95d:	e8 5e 53 fd ff       	call   0x41fcc0
  44a962:	8b c8                	mov    ecx,eax
  44a964:	e8 37 f6 fe ff       	call   0x439fa0
  44a969:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]

; ===== Character::Death — appel aux pénalités [0x41bc3d..0x41bc92] =====
  41bc3d:	8d 95 e0 fe ff ff    	lea    edx,[ebp-0x120]
  41bc43:	52                   	push   edx
  41bc44:	8d 85 28 ff ff ff    	lea    eax,[ebp-0xd8]
  41bc4a:	50                   	push   eax
  41bc4b:	8d 8d e4 fe ff ff    	lea    ecx,[ebp-0x11c]
  41bc51:	51                   	push   ecx
  41bc52:	57                   	push   edi
  41bc53:	56                   	push   esi
  41bc54:	c6 45 fc 10          	mov    BYTE PTR [ebp-0x4],0x10
  41bc58:	e8 c3 cd 01 00       	call   0x438a20
  41bc5d:	8b 16                	mov    edx,DWORD PTR [esi]
  41bc5f:	83 c4 14             	add    esp,0x14
  41bc62:	8b ce                	mov    ecx,esi
  41bc64:	ff 92 04 01 00 00    	call   DWORD PTR [edx+0x104]
  41bc6a:	8b 8d e0 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x120]
  41bc70:	3b c8                	cmp    ecx,eax
  41bc72:	73 11                	jae    0x41bc85
  41bc74:	8b 16                	mov    edx,DWORD PTR [esi]
  41bc76:	2b c1                	sub    eax,ecx
  41bc78:	6a 01                	push   0x1
  41bc7a:	50                   	push   eax
  41bc7b:	8b ce                	mov    ecx,esi
  41bc7d:	ff 92 08 01 00 00    	call   DWORD PTR [edx+0x108]
  41bc83:	eb 0d                	jmp    0x41bc92
  41bc85:	8b 06                	mov    eax,DWORD PTR [esi]
  41bc87:	6a 01                	push   0x1
  41bc89:	53                   	push   ebx
  41bc8a:	8b ce                	mov    ecx,esi
  41bc8c:	ff 90 08 01 00 00    	call   DWORD PTR [eax+0x108]

; ===== Unit::Get{Air/Water/Fire/Earth/Light/Dark}Resist [0x462fd0..0x4630e2] =====
  462fd0:	56                   	push   esi
  462fd1:	57                   	push   edi
  462fd2:	8b f1                	mov    esi,ecx
  462fd4:	8b 06                	mov    eax,DWORD PTR [esi]
  462fd6:	6a 00                	push   0x0
  462fd8:	68 3e 4e 00 00       	push   0x4e3e
  462fdd:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  462fe0:	6a 0c                	push   0xc
  462fe2:	8b ce                	mov    ecx,esi
  462fe4:	8b f8                	mov    edi,eax
  462fe6:	e8 75 ae 02 00       	call   0x48de60
  462feb:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  462fef:	5f                   	pop    edi
  462ff0:	5e                   	pop    esi
  462ff1:	c3                   	ret
  462ff2:	90                   	nop
  462ff3:	90                   	nop
  462ff4:	90                   	nop
  462ff5:	90                   	nop
  462ff6:	90                   	nop
  462ff7:	90                   	nop
  462ff8:	90                   	nop
  462ff9:	90                   	nop
  462ffa:	90                   	nop
  462ffb:	90                   	nop
  462ffc:	90                   	nop
  462ffd:	90                   	nop
  462ffe:	90                   	nop
  462fff:	90                   	nop
  463000:	56                   	push   esi
  463001:	57                   	push   edi
  463002:	8b f1                	mov    esi,ecx
  463004:	8b 06                	mov    eax,DWORD PTR [esi]
  463006:	6a 00                	push   0x0
  463008:	68 3f 4e 00 00       	push   0x4e3f
  46300d:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  463010:	6a 0e                	push   0xe
  463012:	8b ce                	mov    ecx,esi
  463014:	8b f8                	mov    edi,eax
  463016:	e8 45 ae 02 00       	call   0x48de60
  46301b:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  46301f:	5f                   	pop    edi
  463020:	5e                   	pop    esi
  463021:	c3                   	ret
  463022:	90                   	nop
  463023:	90                   	nop
  463024:	90                   	nop
  463025:	90                   	nop
  463026:	90                   	nop
  463027:	90                   	nop
  463028:	90                   	nop
  463029:	90                   	nop
  46302a:	90                   	nop
  46302b:	90                   	nop
  46302c:	90                   	nop
  46302d:	90                   	nop
  46302e:	90                   	nop
  46302f:	90                   	nop
  463030:	56                   	push   esi
  463031:	57                   	push   edi
  463032:	8b f1                	mov    esi,ecx
  463034:	8b 06                	mov    eax,DWORD PTR [esi]
  463036:	6a 00                	push   0x0
  463038:	68 40 4e 00 00       	push   0x4e40
  46303d:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  463040:	6a 0d                	push   0xd
  463042:	8b ce                	mov    ecx,esi
  463044:	8b f8                	mov    edi,eax
  463046:	e8 15 ae 02 00       	call   0x48de60
  46304b:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  46304f:	5f                   	pop    edi
  463050:	5e                   	pop    esi
  463051:	c3                   	ret
  463052:	90                   	nop
  463053:	90                   	nop
  463054:	90                   	nop
  463055:	90                   	nop
  463056:	90                   	nop
  463057:	90                   	nop
  463058:	90                   	nop
  463059:	90                   	nop
  46305a:	90                   	nop
  46305b:	90                   	nop
  46305c:	90                   	nop
  46305d:	90                   	nop
  46305e:	90                   	nop
  46305f:	90                   	nop
  463060:	56                   	push   esi
  463061:	57                   	push   edi
  463062:	8b f1                	mov    esi,ecx
  463064:	8b 06                	mov    eax,DWORD PTR [esi]
  463066:	6a 00                	push   0x0
  463068:	68 41 4e 00 00       	push   0x4e41
  46306d:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  463070:	6a 0f                	push   0xf
  463072:	8b ce                	mov    ecx,esi
  463074:	8b f8                	mov    edi,eax
  463076:	e8 e5 ad 02 00       	call   0x48de60
  46307b:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  46307f:	5f                   	pop    edi
  463080:	5e                   	pop    esi
  463081:	c3                   	ret
  463082:	90                   	nop
  463083:	90                   	nop
  463084:	90                   	nop
  463085:	90                   	nop
  463086:	90                   	nop
  463087:	90                   	nop
  463088:	90                   	nop
  463089:	90                   	nop
  46308a:	90                   	nop
  46308b:	90                   	nop
  46308c:	90                   	nop
  46308d:	90                   	nop
  46308e:	90                   	nop
  46308f:	90                   	nop
  463090:	56                   	push   esi
  463091:	57                   	push   edi
  463092:	8b f1                	mov    esi,ecx
  463094:	8b 06                	mov    eax,DWORD PTR [esi]
  463096:	6a 00                	push   0x0
  463098:	68 45 4e 00 00       	push   0x4e45
  46309d:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  4630a0:	6a 15                	push   0x15
  4630a2:	8b ce                	mov    ecx,esi
  4630a4:	8b f8                	mov    edi,eax
  4630a6:	e8 b5 ad 02 00       	call   0x48de60
  4630ab:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  4630af:	5f                   	pop    edi
  4630b0:	5e                   	pop    esi
  4630b1:	c3                   	ret
  4630b2:	90                   	nop
  4630b3:	90                   	nop
  4630b4:	90                   	nop
  4630b5:	90                   	nop
  4630b6:	90                   	nop
  4630b7:	90                   	nop
  4630b8:	90                   	nop
  4630b9:	90                   	nop
  4630ba:	90                   	nop
  4630bb:	90                   	nop
  4630bc:	90                   	nop
  4630bd:	90                   	nop
  4630be:	90                   	nop
  4630bf:	90                   	nop
  4630c0:	56                   	push   esi
  4630c1:	57                   	push   edi
  4630c2:	8b f1                	mov    esi,ecx
  4630c4:	8b 06                	mov    eax,DWORD PTR [esi]
  4630c6:	6a 00                	push   0x0
  4630c8:	68 46 4e 00 00       	push   0x4e46
  4630cd:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  4630d0:	6a 16                	push   0x16
  4630d2:	8b ce                	mov    ecx,esi
  4630d4:	8b f8                	mov    edi,eax
  4630d6:	e8 85 ad 02 00       	call   0x48de60
  4630db:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  4630df:	5f                   	pop    edi
  4630e0:	5e                   	pop    esi
  4630e1:	c3                   	ret

; ===== Unit::GetTrue*Resist [0x4630f0..0x463150] =====
  4630f0:	8b 01                	mov    eax,DWORD PTR [ecx]
  4630f2:	6a 00                	push   0x0
  4630f4:	68 3e 4e 00 00       	push   0x4e3e
  4630f9:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  4630fc:	83 c0 64             	add    eax,0x64
  4630ff:	c3                   	ret
  463100:	8b 01                	mov    eax,DWORD PTR [ecx]
  463102:	6a 00                	push   0x0
  463104:	68 3f 4e 00 00       	push   0x4e3f
  463109:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46310c:	83 c0 64             	add    eax,0x64
  46310f:	c3                   	ret
  463110:	8b 01                	mov    eax,DWORD PTR [ecx]
  463112:	6a 00                	push   0x0
  463114:	68 40 4e 00 00       	push   0x4e40
  463119:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46311c:	83 c0 64             	add    eax,0x64
  46311f:	c3                   	ret
  463120:	8b 01                	mov    eax,DWORD PTR [ecx]
  463122:	6a 00                	push   0x0
  463124:	68 41 4e 00 00       	push   0x4e41
  463129:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46312c:	83 c0 64             	add    eax,0x64
  46312f:	c3                   	ret
  463130:	8b 01                	mov    eax,DWORD PTR [ecx]
  463132:	6a 00                	push   0x0
  463134:	68 45 4e 00 00       	push   0x4e45
  463139:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46313c:	83 c0 64             	add    eax,0x64
  46313f:	c3                   	ret
  463140:	8b 01                	mov    eax,DWORD PTR [ecx]
  463142:	6a 00                	push   0x0
  463144:	68 46 4e 00 00       	push   0x4e46
  463149:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46314c:	83 c0 64             	add    eax,0x64
  46314f:	c3                   	ret

