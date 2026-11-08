; Preuves assembleur PASSE55 du serveur original SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Les plages VA sont semi-ouvertes; tables de saut et donnees exclues.

; [0x0040affe, 0x0040b251) : branches de resistances et puissances elementaires avec ViewFlag et QueryBoost
  40affe:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40b001:	3b f3                	cmp    esi,ebx
  40b003:	74 35                	je     0x40b03a
  40b005:	8b 16                	mov    edx,DWORD PTR [esi]
  40b007:	53                   	push   ebx
  40b008:	68 40 4e 00 00       	push   0x4e40
  40b00d:	8b ce                	mov    ecx,esi
  40b00f:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b012:	6a 0d                	push   0xd
  40b014:	8b ce                	mov    ecx,esi
  40b016:	8b f8                	mov    edi,eax
  40b018:	e8 43 2e 08 00       	call   0x48de60
  40b01d:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b021:	5f                   	pop    edi
  40b022:	5e                   	pop    esi
  40b023:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b026:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b029:	5b                   	pop    ebx
  40b02a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b02d:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b034:	8b e5                	mov    esp,ebp
  40b036:	5d                   	pop    ebp
  40b037:	c2 28 00             	ret    0x28
  40b03a:	5f                   	pop    edi
  40b03b:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b03e:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b041:	5e                   	pop    esi
  40b042:	5b                   	pop    ebx
  40b043:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b046:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b04d:	8b e5                	mov    esp,ebp
  40b04f:	5d                   	pop    ebp
  40b050:	c2 28 00             	ret    0x28
  40b053:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40b056:	3b f3                	cmp    esi,ebx
  40b058:	74 35                	je     0x40b08f
  40b05a:	8b 16                	mov    edx,DWORD PTR [esi]
  40b05c:	53                   	push   ebx
  40b05d:	68 3f 4e 00 00       	push   0x4e3f
  40b062:	8b ce                	mov    ecx,esi
  40b064:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b067:	6a 0e                	push   0xe
  40b069:	8b ce                	mov    ecx,esi
  40b06b:	8b f8                	mov    edi,eax
  40b06d:	e8 ee 2d 08 00       	call   0x48de60
  40b072:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b076:	5f                   	pop    edi
  40b077:	5e                   	pop    esi
  40b078:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b07b:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b07e:	5b                   	pop    ebx
  40b07f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b082:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b089:	8b e5                	mov    esp,ebp
  40b08b:	5d                   	pop    ebp
  40b08c:	c2 28 00             	ret    0x28
  40b08f:	5f                   	pop    edi
  40b090:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b093:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b096:	5e                   	pop    esi
  40b097:	5b                   	pop    ebx
  40b098:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b09b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b0a2:	8b e5                	mov    esp,ebp
  40b0a4:	5d                   	pop    ebp
  40b0a5:	c2 28 00             	ret    0x28
  40b0a8:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40b0ab:	3b f3                	cmp    esi,ebx
  40b0ad:	74 35                	je     0x40b0e4
  40b0af:	8b 16                	mov    edx,DWORD PTR [esi]
  40b0b1:	53                   	push   ebx
  40b0b2:	68 41 4e 00 00       	push   0x4e41
  40b0b7:	8b ce                	mov    ecx,esi
  40b0b9:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b0bc:	6a 0f                	push   0xf
  40b0be:	8b ce                	mov    ecx,esi
  40b0c0:	8b f8                	mov    edi,eax
  40b0c2:	e8 99 2d 08 00       	call   0x48de60
  40b0c7:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b0cb:	5f                   	pop    edi
  40b0cc:	5e                   	pop    esi
  40b0cd:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b0d0:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b0d3:	5b                   	pop    ebx
  40b0d4:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b0d7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b0de:	8b e5                	mov    esp,ebp
  40b0e0:	5d                   	pop    ebp
  40b0e1:	c2 28 00             	ret    0x28
  40b0e4:	5f                   	pop    edi
  40b0e5:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b0e8:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b0eb:	5e                   	pop    esi
  40b0ec:	5b                   	pop    ebx
  40b0ed:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b0f0:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b0f7:	8b e5                	mov    esp,ebp
  40b0f9:	5d                   	pop    ebp
  40b0fa:	c2 28 00             	ret    0x28
  40b0fd:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40b100:	3b f3                	cmp    esi,ebx
  40b102:	74 35                	je     0x40b139
  40b104:	8b 16                	mov    edx,DWORD PTR [esi]
  40b106:	53                   	push   ebx
  40b107:	68 49 4e 00 00       	push   0x4e49
  40b10c:	8b ce                	mov    ecx,esi
  40b10e:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b111:	6a 10                	push   0x10
  40b113:	8b ce                	mov    ecx,esi
  40b115:	8b f8                	mov    edi,eax
  40b117:	e8 44 2d 08 00       	call   0x48de60
  40b11c:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b120:	5f                   	pop    edi
  40b121:	5e                   	pop    esi
  40b122:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b125:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b128:	5b                   	pop    ebx
  40b129:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b12c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b133:	8b e5                	mov    esp,ebp
  40b135:	5d                   	pop    ebp
  40b136:	c2 28 00             	ret    0x28
  40b139:	5f                   	pop    edi
  40b13a:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b13d:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b140:	5e                   	pop    esi
  40b141:	5b                   	pop    ebx
  40b142:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b145:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b14c:	8b e5                	mov    esp,ebp
  40b14e:	5d                   	pop    ebp
  40b14f:	c2 28 00             	ret    0x28
  40b152:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40b155:	3b f3                	cmp    esi,ebx
  40b157:	74 35                	je     0x40b18e
  40b159:	8b 16                	mov    edx,DWORD PTR [esi]
  40b15b:	53                   	push   ebx
  40b15c:	68 4b 4e 00 00       	push   0x4e4b
  40b161:	8b ce                	mov    ecx,esi
  40b163:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b166:	6a 11                	push   0x11
  40b168:	8b ce                	mov    ecx,esi
  40b16a:	8b f8                	mov    edi,eax
  40b16c:	e8 ef 2c 08 00       	call   0x48de60
  40b171:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b175:	5f                   	pop    edi
  40b176:	5e                   	pop    esi
  40b177:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b17a:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b17d:	5b                   	pop    ebx
  40b17e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b181:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b188:	8b e5                	mov    esp,ebp
  40b18a:	5d                   	pop    ebp
  40b18b:	c2 28 00             	ret    0x28
  40b18e:	5f                   	pop    edi
  40b18f:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b192:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b195:	5e                   	pop    esi
  40b196:	5b                   	pop    ebx
  40b197:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b19a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b1a1:	8b e5                	mov    esp,ebp
  40b1a3:	5d                   	pop    ebp
  40b1a4:	c2 28 00             	ret    0x28
  40b1a7:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40b1aa:	3b f3                	cmp    esi,ebx
  40b1ac:	74 35                	je     0x40b1e3
  40b1ae:	8b 16                	mov    edx,DWORD PTR [esi]
  40b1b0:	53                   	push   ebx
  40b1b1:	68 4a 4e 00 00       	push   0x4e4a
  40b1b6:	8b ce                	mov    ecx,esi
  40b1b8:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b1bb:	6a 12                	push   0x12
  40b1bd:	8b ce                	mov    ecx,esi
  40b1bf:	8b f8                	mov    edi,eax
  40b1c1:	e8 9a 2c 08 00       	call   0x48de60
  40b1c6:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b1ca:	5f                   	pop    edi
  40b1cb:	5e                   	pop    esi
  40b1cc:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b1cf:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b1d2:	5b                   	pop    ebx
  40b1d3:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b1d6:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b1dd:	8b e5                	mov    esp,ebp
  40b1df:	5d                   	pop    ebp
  40b1e0:	c2 28 00             	ret    0x28
  40b1e3:	5f                   	pop    edi
  40b1e4:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b1e7:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b1ea:	5e                   	pop    esi
  40b1eb:	5b                   	pop    ebx
  40b1ec:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b1ef:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b1f6:	8b e5                	mov    esp,ebp
  40b1f8:	5d                   	pop    ebp
  40b1f9:	c2 28 00             	ret    0x28
  40b1fc:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40b1ff:	3b f3                	cmp    esi,ebx
  40b201:	74 35                	je     0x40b238
  40b203:	8b 16                	mov    edx,DWORD PTR [esi]
  40b205:	53                   	push   ebx
  40b206:	68 4c 4e 00 00       	push   0x4e4c
  40b20b:	8b ce                	mov    ecx,esi
  40b20d:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b210:	6a 13                	push   0x13
  40b212:	8b ce                	mov    ecx,esi
  40b214:	8b f8                	mov    edi,eax
  40b216:	e8 45 2c 08 00       	call   0x48de60
  40b21b:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b21f:	5f                   	pop    edi
  40b220:	5e                   	pop    esi
  40b221:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b224:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b227:	5b                   	pop    ebx
  40b228:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b22b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b232:	8b e5                	mov    esp,ebp
  40b234:	5d                   	pop    ebp
  40b235:	c2 28 00             	ret    0x28
  40b238:	5f                   	pop    edi
  40b239:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b23c:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b23f:	5e                   	pop    esi
  40b240:	5b                   	pop    ebx
  40b241:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b244:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b24b:	8b e5                	mov    esp,ebp
  40b24d:	5d                   	pop    ebp
  40b24e:	c2 28 00             	ret    0x28

; [0x0040b831, 0x0040c114) : true_* et target.true_*, AC, gold, range, infinite; terminaison avant table de saut
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
  40b994:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b997:	3b cb                	cmp    ecx,ebx
  40b999:	74 27                	je     0x40b9c2
  40b99b:	8b 11                	mov    edx,DWORD PTR [ecx]
  40b99d:	53                   	push   ebx
  40b99e:	68 48 4e 00 00       	push   0x4e48
  40b9a3:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b9a6:	5f                   	pop    edi
  40b9a7:	83 c0 64             	add    eax,0x64
  40b9aa:	5e                   	pop    esi
  40b9ab:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b9ae:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b9b1:	5b                   	pop    ebx
  40b9b2:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b9b5:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b9bc:	8b e5                	mov    esp,ebp
  40b9be:	5d                   	pop    ebp
  40b9bf:	c2 28 00             	ret    0x28
  40b9c2:	5f                   	pop    edi
  40b9c3:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b9c6:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b9c9:	5e                   	pop    esi
  40b9ca:	5b                   	pop    ebx
  40b9cb:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b9ce:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b9d5:	8b e5                	mov    esp,ebp
  40b9d7:	5d                   	pop    ebp
  40b9d8:	c2 28 00             	ret    0x28
  40b9db:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b9de:	3b cb                	cmp    ecx,ebx
  40b9e0:	74 27                	je     0x40ba09
  40b9e2:	8b 01                	mov    eax,DWORD PTR [ecx]
  40b9e4:	53                   	push   ebx
  40b9e5:	68 47 4e 00 00       	push   0x4e47
  40b9ea:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40b9ed:	5f                   	pop    edi
  40b9ee:	83 c0 64             	add    eax,0x64
  40b9f1:	5e                   	pop    esi
  40b9f2:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b9f5:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b9f8:	5b                   	pop    ebx
  40b9f9:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b9fc:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ba03:	8b e5                	mov    esp,ebp
  40ba05:	5d                   	pop    ebp
  40ba06:	c2 28 00             	ret    0x28
  40ba09:	5f                   	pop    edi
  40ba0a:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ba0d:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ba10:	5e                   	pop    esi
  40ba11:	5b                   	pop    ebx
  40ba12:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ba15:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ba1c:	8b e5                	mov    esp,ebp
  40ba1e:	5d                   	pop    ebp
  40ba1f:	c2 28 00             	ret    0x28
  40ba22:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40ba25:	3b cb                	cmp    ecx,ebx
  40ba27:	74 23                	je     0x40ba4c
  40ba29:	e8 02 28 08 00       	call   0x48e230
  40ba2e:	5f                   	pop    edi
  40ba2f:	5e                   	pop    esi
  40ba30:	5b                   	pop    ebx
  40ba31:	25 ff ff 00 00       	and    eax,0xffff
  40ba36:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ba39:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ba3c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ba3f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ba46:	8b e5                	mov    esp,ebp
  40ba48:	5d                   	pop    ebp
  40ba49:	c2 28 00             	ret    0x28
  40ba4c:	5f                   	pop    edi
  40ba4d:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ba50:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ba53:	5e                   	pop    esi
  40ba54:	5b                   	pop    ebx
  40ba55:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ba58:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ba5f:	8b e5                	mov    esp,ebp
  40ba61:	5d                   	pop    ebp
  40ba62:	c2 28 00             	ret    0x28
  40ba65:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40ba68:	3b cb                	cmp    ecx,ebx
  40ba6a:	74 23                	je     0x40ba8f
  40ba6c:	e8 df 27 08 00       	call   0x48e250
  40ba71:	5f                   	pop    edi
  40ba72:	5e                   	pop    esi
  40ba73:	5b                   	pop    ebx
  40ba74:	25 ff ff 00 00       	and    eax,0xffff
  40ba79:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ba7c:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ba7f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ba82:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ba89:	8b e5                	mov    esp,ebp
  40ba8b:	5d                   	pop    ebp
  40ba8c:	c2 28 00             	ret    0x28
  40ba8f:	5f                   	pop    edi
  40ba90:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ba93:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ba96:	5e                   	pop    esi
  40ba97:	5b                   	pop    ebx
  40ba98:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ba9b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40baa2:	8b e5                	mov    esp,ebp
  40baa4:	5d                   	pop    ebp
  40baa5:	c2 28 00             	ret    0x28
  40baa8:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40baab:	3b cb                	cmp    ecx,ebx
  40baad:	74 23                	je     0x40bad2
  40baaf:	e8 8c 27 08 00       	call   0x48e240
  40bab4:	5f                   	pop    edi
  40bab5:	5e                   	pop    esi
  40bab6:	5b                   	pop    ebx
  40bab7:	25 ff ff 00 00       	and    eax,0xffff
  40babc:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40babf:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bac2:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bac5:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bacc:	8b e5                	mov    esp,ebp
  40bace:	5d                   	pop    ebp
  40bacf:	c2 28 00             	ret    0x28
  40bad2:	5f                   	pop    edi
  40bad3:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bad6:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bad9:	5e                   	pop    esi
  40bada:	5b                   	pop    ebx
  40badb:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bade:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bae5:	8b e5                	mov    esp,ebp
  40bae7:	5d                   	pop    ebp
  40bae8:	c2 28 00             	ret    0x28
  40baeb:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40baee:	3b cb                	cmp    ecx,ebx
  40baf0:	74 23                	je     0x40bb15
  40baf2:	e8 79 27 08 00       	call   0x48e270
  40baf7:	5f                   	pop    edi
  40baf8:	5e                   	pop    esi
  40baf9:	5b                   	pop    ebx
  40bafa:	25 ff ff 00 00       	and    eax,0xffff
  40baff:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bb02:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bb05:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bb08:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bb0f:	8b e5                	mov    esp,ebp
  40bb11:	5d                   	pop    ebp
  40bb12:	c2 28 00             	ret    0x28
  40bb15:	5f                   	pop    edi
  40bb16:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bb19:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bb1c:	5e                   	pop    esi
  40bb1d:	5b                   	pop    ebx
  40bb1e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bb21:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bb28:	8b e5                	mov    esp,ebp
  40bb2a:	5d                   	pop    ebp
  40bb2b:	c2 28 00             	ret    0x28
  40bb2e:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bb31:	3b cb                	cmp    ecx,ebx
  40bb33:	74 23                	je     0x40bb58
  40bb35:	e8 26 27 08 00       	call   0x48e260
  40bb3a:	5f                   	pop    edi
  40bb3b:	5e                   	pop    esi
  40bb3c:	5b                   	pop    ebx
  40bb3d:	25 ff ff 00 00       	and    eax,0xffff
  40bb42:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bb45:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bb48:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bb4b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bb52:	8b e5                	mov    esp,ebp
  40bb54:	5d                   	pop    ebp
  40bb55:	c2 28 00             	ret    0x28
  40bb58:	5f                   	pop    edi
  40bb59:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bb5c:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bb5f:	5e                   	pop    esi
  40bb60:	5b                   	pop    ebx
  40bb61:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bb64:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bb6b:	8b e5                	mov    esp,ebp
  40bb6d:	5d                   	pop    ebp
  40bb6e:	c2 28 00             	ret    0x28
  40bb71:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bb74:	3b cb                	cmp    ecx,ebx
  40bb76:	74 23                	je     0x40bb9b
  40bb78:	e8 03 27 08 00       	call   0x48e280
  40bb7d:	5f                   	pop    edi
  40bb7e:	5e                   	pop    esi
  40bb7f:	5b                   	pop    ebx
  40bb80:	25 ff ff 00 00       	and    eax,0xffff
  40bb85:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bb88:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bb8b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bb8e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bb95:	8b e5                	mov    esp,ebp
  40bb97:	5d                   	pop    ebp
  40bb98:	c2 28 00             	ret    0x28
  40bb9b:	5f                   	pop    edi
  40bb9c:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bb9f:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bba2:	5e                   	pop    esi
  40bba3:	5b                   	pop    ebx
  40bba4:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bba7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bbae:	8b e5                	mov    esp,ebp
  40bbb0:	5d                   	pop    ebp
  40bbb1:	c2 28 00             	ret    0x28
  40bbb4:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bbb7:	3b cb                	cmp    ecx,ebx
  40bbb9:	74 23                	je     0x40bbde
  40bbbb:	e8 d0 26 08 00       	call   0x48e290
  40bbc0:	5f                   	pop    edi
  40bbc1:	5e                   	pop    esi
  40bbc2:	5b                   	pop    ebx
  40bbc3:	25 ff ff 00 00       	and    eax,0xffff
  40bbc8:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bbcb:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bbce:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bbd1:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bbd8:	8b e5                	mov    esp,ebp
  40bbda:	5d                   	pop    ebp
  40bbdb:	c2 28 00             	ret    0x28
  40bbde:	5f                   	pop    edi
  40bbdf:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bbe2:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bbe5:	5e                   	pop    esi
  40bbe6:	5b                   	pop    ebx
  40bbe7:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bbea:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bbf1:	8b e5                	mov    esp,ebp
  40bbf3:	5d                   	pop    ebp
  40bbf4:	c2 28 00             	ret    0x28
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
  40bd13:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bd16:	3b cb                	cmp    ecx,ebx
  40bd18:	74 27                	je     0x40bd41
  40bd1a:	8b 11                	mov    edx,DWORD PTR [ecx]
  40bd1c:	53                   	push   ebx
  40bd1d:	68 46 4e 00 00       	push   0x4e46
  40bd22:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40bd25:	5f                   	pop    edi
  40bd26:	83 c0 64             	add    eax,0x64
  40bd29:	5e                   	pop    esi
  40bd2a:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bd2d:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bd30:	5b                   	pop    ebx
  40bd31:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bd34:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bd3b:	8b e5                	mov    esp,ebp
  40bd3d:	5d                   	pop    ebp
  40bd3e:	c2 28 00             	ret    0x28
  40bd41:	5f                   	pop    edi
  40bd42:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bd45:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bd48:	5e                   	pop    esi
  40bd49:	5b                   	pop    ebx
  40bd4a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bd4d:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bd54:	8b e5                	mov    esp,ebp
  40bd56:	5d                   	pop    ebp
  40bd57:	c2 28 00             	ret    0x28
  40bd5a:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bd5d:	3b cb                	cmp    ecx,ebx
  40bd5f:	74 27                	je     0x40bd88
  40bd61:	8b 01                	mov    eax,DWORD PTR [ecx]
  40bd63:	53                   	push   ebx
  40bd64:	68 45 4e 00 00       	push   0x4e45
  40bd69:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40bd6c:	5f                   	pop    edi
  40bd6d:	83 c0 64             	add    eax,0x64
  40bd70:	5e                   	pop    esi
  40bd71:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bd74:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bd77:	5b                   	pop    ebx
  40bd78:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bd7b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bd82:	8b e5                	mov    esp,ebp
  40bd84:	5d                   	pop    ebp
  40bd85:	c2 28 00             	ret    0x28
  40bd88:	5f                   	pop    edi
  40bd89:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bd8c:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bd8f:	5e                   	pop    esi
  40bd90:	5b                   	pop    ebx
  40bd91:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bd94:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bd9b:	8b e5                	mov    esp,ebp
  40bd9d:	5d                   	pop    ebp
  40bd9e:	c2 28 00             	ret    0x28
  40bda1:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bda4:	3b cb                	cmp    ecx,ebx
  40bda6:	74 27                	je     0x40bdcf
  40bda8:	8b 11                	mov    edx,DWORD PTR [ecx]
  40bdaa:	53                   	push   ebx
  40bdab:	68 49 4e 00 00       	push   0x4e49
  40bdb0:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40bdb3:	5f                   	pop    edi
  40bdb4:	83 c0 64             	add    eax,0x64
  40bdb7:	5e                   	pop    esi
  40bdb8:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bdbb:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bdbe:	5b                   	pop    ebx
  40bdbf:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bdc2:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bdc9:	8b e5                	mov    esp,ebp
  40bdcb:	5d                   	pop    ebp
  40bdcc:	c2 28 00             	ret    0x28
  40bdcf:	5f                   	pop    edi
  40bdd0:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bdd3:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bdd6:	5e                   	pop    esi
  40bdd7:	5b                   	pop    ebx
  40bdd8:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bddb:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bde2:	8b e5                	mov    esp,ebp
  40bde4:	5d                   	pop    ebp
  40bde5:	c2 28 00             	ret    0x28
  40bde8:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bdeb:	3b cb                	cmp    ecx,ebx
  40bded:	74 27                	je     0x40be16
  40bdef:	8b 01                	mov    eax,DWORD PTR [ecx]
  40bdf1:	53                   	push   ebx
  40bdf2:	68 4b 4e 00 00       	push   0x4e4b
  40bdf7:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40bdfa:	5f                   	pop    edi
  40bdfb:	83 c0 64             	add    eax,0x64
  40bdfe:	5e                   	pop    esi
  40bdff:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40be02:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40be05:	5b                   	pop    ebx
  40be06:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40be09:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40be10:	8b e5                	mov    esp,ebp
  40be12:	5d                   	pop    ebp
  40be13:	c2 28 00             	ret    0x28
  40be16:	5f                   	pop    edi
  40be17:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40be1a:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40be1d:	5e                   	pop    esi
  40be1e:	5b                   	pop    ebx
  40be1f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40be22:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40be29:	8b e5                	mov    esp,ebp
  40be2b:	5d                   	pop    ebp
  40be2c:	c2 28 00             	ret    0x28
  40be2f:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40be32:	3b cb                	cmp    ecx,ebx
  40be34:	74 27                	je     0x40be5d
  40be36:	8b 11                	mov    edx,DWORD PTR [ecx]
  40be38:	53                   	push   ebx
  40be39:	68 4a 4e 00 00       	push   0x4e4a
  40be3e:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40be41:	5f                   	pop    edi
  40be42:	83 c0 64             	add    eax,0x64
  40be45:	5e                   	pop    esi
  40be46:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40be49:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40be4c:	5b                   	pop    ebx
  40be4d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40be50:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40be57:	8b e5                	mov    esp,ebp
  40be59:	5d                   	pop    ebp
  40be5a:	c2 28 00             	ret    0x28
  40be5d:	5f                   	pop    edi
  40be5e:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40be61:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40be64:	5e                   	pop    esi
  40be65:	5b                   	pop    ebx
  40be66:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40be69:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40be70:	8b e5                	mov    esp,ebp
  40be72:	5d                   	pop    ebp
  40be73:	c2 28 00             	ret    0x28
  40be76:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40be79:	3b cb                	cmp    ecx,ebx
  40be7b:	74 27                	je     0x40bea4
  40be7d:	8b 01                	mov    eax,DWORD PTR [ecx]
  40be7f:	53                   	push   ebx
  40be80:	68 4c 4e 00 00       	push   0x4e4c
  40be85:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40be88:	5f                   	pop    edi
  40be89:	83 c0 64             	add    eax,0x64
  40be8c:	5e                   	pop    esi
  40be8d:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40be90:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40be93:	5b                   	pop    ebx
  40be94:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40be97:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40be9e:	8b e5                	mov    esp,ebp
  40bea0:	5d                   	pop    ebp
  40bea1:	c2 28 00             	ret    0x28
  40bea4:	5f                   	pop    edi
  40bea5:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bea8:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40beab:	5e                   	pop    esi
  40beac:	5b                   	pop    ebx
  40bead:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40beb0:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40beb7:	8b e5                	mov    esp,ebp
  40beb9:	5d                   	pop    ebp
  40beba:	c2 28 00             	ret    0x28
  40bebd:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bec0:	3b cb                	cmp    ecx,ebx
  40bec2:	74 27                	je     0x40beeb
  40bec4:	8b 11                	mov    edx,DWORD PTR [ecx]
  40bec6:	53                   	push   ebx
  40bec7:	68 48 4e 00 00       	push   0x4e48
  40becc:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40becf:	5f                   	pop    edi
  40bed0:	83 c0 64             	add    eax,0x64
  40bed3:	5e                   	pop    esi
  40bed4:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bed7:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40beda:	5b                   	pop    ebx
  40bedb:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bede:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bee5:	8b e5                	mov    esp,ebp
  40bee7:	5d                   	pop    ebp
  40bee8:	c2 28 00             	ret    0x28
  40beeb:	5f                   	pop    edi
  40beec:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40beef:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bef2:	5e                   	pop    esi
  40bef3:	5b                   	pop    ebx
  40bef4:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bef7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40befe:	8b e5                	mov    esp,ebp
  40bf00:	5d                   	pop    ebp
  40bf01:	c2 28 00             	ret    0x28
  40bf04:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40bf07:	3b cb                	cmp    ecx,ebx
  40bf09:	74 27                	je     0x40bf32
  40bf0b:	8b 01                	mov    eax,DWORD PTR [ecx]
  40bf0d:	53                   	push   ebx
  40bf0e:	68 47 4e 00 00       	push   0x4e47
  40bf13:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  40bf16:	5f                   	pop    edi
  40bf17:	83 c0 64             	add    eax,0x64
  40bf1a:	5e                   	pop    esi
  40bf1b:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40bf1e:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bf21:	5b                   	pop    ebx
  40bf22:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bf25:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bf2c:	8b e5                	mov    esp,ebp
  40bf2e:	5d                   	pop    ebp
  40bf2f:	c2 28 00             	ret    0x28
  40bf32:	5f                   	pop    edi
  40bf33:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bf36:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bf39:	5e                   	pop    esi
  40bf3a:	5b                   	pop    ebx
  40bf3b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bf3e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bf45:	8b e5                	mov    esp,ebp
  40bf47:	5d                   	pop    ebp
  40bf48:	c2 28 00             	ret    0x28
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
  40c07e:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  40c081:	3b fb                	cmp    edi,ebx
  40c083:	75 19                	jne    0x40c09e
  40c085:	dd 05 30 e6 4d 00    	fld    QWORD PTR ds:0x4de630
  40c08b:	5f                   	pop    edi
  40c08c:	5e                   	pop    esi
  40c08d:	5b                   	pop    ebx
  40c08e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40c091:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40c098:	8b e5                	mov    esp,ebp
  40c09a:	5d                   	pop    ebp
  40c09b:	c2 28 00             	ret    0x28
  40c09e:	8b 17                	mov    edx,DWORD PTR [edi]
  40c0a0:	8d 45 dc             	lea    eax,[ebp-0x24]
  40c0a3:	50                   	push   eax
  40c0a4:	8b cf                	mov    ecx,edi
  40c0a6:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0a9:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40c0ac:	8b 13                	mov    edx,DWORD PTR [ebx]
  40c0ae:	8b f0                	mov    esi,eax
  40c0b0:	8d 45 d0             	lea    eax,[ebp-0x30]
  40c0b3:	50                   	push   eax
  40c0b4:	8b cb                	mov    ecx,ebx
  40c0b6:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0b9:	8b 16                	mov    edx,DWORD PTR [esi]
  40c0bb:	8b 00                	mov    eax,DWORD PTR [eax]
  40c0bd:	2b c2                	sub    eax,edx
  40c0bf:	99                   	cdq
  40c0c0:	8b f0                	mov    esi,eax
  40c0c2:	33 f2                	xor    esi,edx
  40c0c4:	8d 45 c4             	lea    eax,[ebp-0x3c]
  40c0c7:	2b f2                	sub    esi,edx
  40c0c9:	8b 13                	mov    edx,DWORD PTR [ebx]
  40c0cb:	50                   	push   eax
  40c0cc:	8b cb                	mov    ecx,ebx
  40c0ce:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0d1:	8b 17                	mov    edx,DWORD PTR [edi]
  40c0d3:	8b d8                	mov    ebx,eax
  40c0d5:	8d 45 b8             	lea    eax,[ebp-0x48]
  40c0d8:	50                   	push   eax
  40c0d9:	8b cf                	mov    ecx,edi
  40c0db:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0de:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40c0e1:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  40c0e4:	2b ca                	sub    ecx,edx
  40c0e6:	8b c1                	mov    eax,ecx
  40c0e8:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40c0eb:	99                   	cdq
  40c0ec:	33 c2                	xor    eax,edx
  40c0ee:	2b c2                	sub    eax,edx
  40c0f0:	8b d0                	mov    edx,eax
  40c0f2:	0f af d0             	imul   edx,eax
  40c0f5:	8b c6                	mov    eax,esi
  40c0f7:	0f af c6             	imul   eax,esi
  40c0fa:	03 d0                	add    edx,eax
  40c0fc:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
  40c0ff:	5f                   	pop    edi
  40c100:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40c103:	5e                   	pop    esi
  40c104:	5b                   	pop    ebx
  40c105:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40c10c:	d9 fa                	fsqrt
  40c10e:	8b e5                	mov    esp,ebp
  40c110:	5d                   	pop    ebp
  40c111:	c2 28 00             	ret    0x28

