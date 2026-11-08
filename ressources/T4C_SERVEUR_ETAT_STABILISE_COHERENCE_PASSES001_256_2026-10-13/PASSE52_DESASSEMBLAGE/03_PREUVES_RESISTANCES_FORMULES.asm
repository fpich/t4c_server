; PASSE52 — preuve assembleur du binaire original 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Intervalles semi-ouverts, extraits relus semantiquement ; aucune zone de table en octets assimilee a du code

; [0x40ad01,0x40af54) — Huit codes de resistances et puissances sur premier contexte: flag plus boost plus base 100
  40ad01:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40ad04:	3b f3                	cmp    esi,ebx
  40ad06:	74 35                	je     0x40ad3d
  40ad08:	8b 16                	mov    edx,DWORD PTR [esi]
  40ad0a:	53                   	push   ebx
  40ad0b:	68 3e 4e 00 00       	push   0x4e3e
  40ad10:	8b ce                	mov    ecx,esi
  40ad12:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40ad15:	6a 0c                	push   0xc
  40ad17:	8b ce                	mov    ecx,esi
  40ad19:	8b f8                	mov    edi,eax
  40ad1b:	e8 40 31 08 00       	call   0x48de60
  40ad20:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40ad24:	5f                   	pop    edi
  40ad25:	5e                   	pop    esi
  40ad26:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ad29:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ad2c:	5b                   	pop    ebx
  40ad2d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ad30:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ad37:	8b e5                	mov    esp,ebp
  40ad39:	5d                   	pop    ebp
  40ad3a:	c2 28 00             	ret    0x28
  40ad3d:	5f                   	pop    edi
  40ad3e:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ad41:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ad44:	5e                   	pop    esi
  40ad45:	5b                   	pop    ebx
  40ad46:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ad49:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ad50:	8b e5                	mov    esp,ebp
  40ad52:	5d                   	pop    ebp
  40ad53:	c2 28 00             	ret    0x28
  40ad56:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40ad59:	3b f3                	cmp    esi,ebx
  40ad5b:	74 35                	je     0x40ad92
  40ad5d:	8b 16                	mov    edx,DWORD PTR [esi]
  40ad5f:	53                   	push   ebx
  40ad60:	68 40 4e 00 00       	push   0x4e40
  40ad65:	8b ce                	mov    ecx,esi
  40ad67:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40ad6a:	6a 0d                	push   0xd
  40ad6c:	8b ce                	mov    ecx,esi
  40ad6e:	8b f8                	mov    edi,eax
  40ad70:	e8 eb 30 08 00       	call   0x48de60
  40ad75:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40ad79:	5f                   	pop    edi
  40ad7a:	5e                   	pop    esi
  40ad7b:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ad7e:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ad81:	5b                   	pop    ebx
  40ad82:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ad85:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ad8c:	8b e5                	mov    esp,ebp
  40ad8e:	5d                   	pop    ebp
  40ad8f:	c2 28 00             	ret    0x28
  40ad92:	5f                   	pop    edi
  40ad93:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ad96:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ad99:	5e                   	pop    esi
  40ad9a:	5b                   	pop    ebx
  40ad9b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ad9e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ada5:	8b e5                	mov    esp,ebp
  40ada7:	5d                   	pop    ebp
  40ada8:	c2 28 00             	ret    0x28
  40adab:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40adae:	3b f3                	cmp    esi,ebx
  40adb0:	74 35                	je     0x40ade7
  40adb2:	8b 16                	mov    edx,DWORD PTR [esi]
  40adb4:	53                   	push   ebx
  40adb5:	68 3f 4e 00 00       	push   0x4e3f
  40adba:	8b ce                	mov    ecx,esi
  40adbc:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40adbf:	6a 0e                	push   0xe
  40adc1:	8b ce                	mov    ecx,esi
  40adc3:	8b f8                	mov    edi,eax
  40adc5:	e8 96 30 08 00       	call   0x48de60
  40adca:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40adce:	5f                   	pop    edi
  40adcf:	5e                   	pop    esi
  40add0:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40add3:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40add6:	5b                   	pop    ebx
  40add7:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40adda:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ade1:	8b e5                	mov    esp,ebp
  40ade3:	5d                   	pop    ebp
  40ade4:	c2 28 00             	ret    0x28
  40ade7:	5f                   	pop    edi
  40ade8:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40adeb:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40adee:	5e                   	pop    esi
  40adef:	5b                   	pop    ebx
  40adf0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40adf3:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40adfa:	8b e5                	mov    esp,ebp
  40adfc:	5d                   	pop    ebp
  40adfd:	c2 28 00             	ret    0x28
  40ae00:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40ae03:	3b f3                	cmp    esi,ebx
  40ae05:	74 35                	je     0x40ae3c
  40ae07:	8b 16                	mov    edx,DWORD PTR [esi]
  40ae09:	53                   	push   ebx
  40ae0a:	68 41 4e 00 00       	push   0x4e41
  40ae0f:	8b ce                	mov    ecx,esi
  40ae11:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40ae14:	6a 0f                	push   0xf
  40ae16:	8b ce                	mov    ecx,esi
  40ae18:	8b f8                	mov    edi,eax
  40ae1a:	e8 41 30 08 00       	call   0x48de60
  40ae1f:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40ae23:	5f                   	pop    edi
  40ae24:	5e                   	pop    esi
  40ae25:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ae28:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ae2b:	5b                   	pop    ebx
  40ae2c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ae2f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ae36:	8b e5                	mov    esp,ebp
  40ae38:	5d                   	pop    ebp
  40ae39:	c2 28 00             	ret    0x28
  40ae3c:	5f                   	pop    edi
  40ae3d:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ae40:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ae43:	5e                   	pop    esi
  40ae44:	5b                   	pop    ebx
  40ae45:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ae48:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ae4f:	8b e5                	mov    esp,ebp
  40ae51:	5d                   	pop    ebp
  40ae52:	c2 28 00             	ret    0x28
  40ae55:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40ae58:	3b f3                	cmp    esi,ebx
  40ae5a:	74 35                	je     0x40ae91
  40ae5c:	8b 16                	mov    edx,DWORD PTR [esi]
  40ae5e:	53                   	push   ebx
  40ae5f:	68 49 4e 00 00       	push   0x4e49
  40ae64:	8b ce                	mov    ecx,esi
  40ae66:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40ae69:	6a 10                	push   0x10
  40ae6b:	8b ce                	mov    ecx,esi
  40ae6d:	8b f8                	mov    edi,eax
  40ae6f:	e8 ec 2f 08 00       	call   0x48de60
  40ae74:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40ae78:	5f                   	pop    edi
  40ae79:	5e                   	pop    esi
  40ae7a:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ae7d:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ae80:	5b                   	pop    ebx
  40ae81:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ae84:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ae8b:	8b e5                	mov    esp,ebp
  40ae8d:	5d                   	pop    ebp
  40ae8e:	c2 28 00             	ret    0x28
  40ae91:	5f                   	pop    edi
  40ae92:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ae95:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ae98:	5e                   	pop    esi
  40ae99:	5b                   	pop    ebx
  40ae9a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ae9d:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aea4:	8b e5                	mov    esp,ebp
  40aea6:	5d                   	pop    ebp
  40aea7:	c2 28 00             	ret    0x28
  40aeaa:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40aead:	3b f3                	cmp    esi,ebx
  40aeaf:	74 35                	je     0x40aee6
  40aeb1:	8b 16                	mov    edx,DWORD PTR [esi]
  40aeb3:	53                   	push   ebx
  40aeb4:	68 4b 4e 00 00       	push   0x4e4b
  40aeb9:	8b ce                	mov    ecx,esi
  40aebb:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40aebe:	6a 11                	push   0x11
  40aec0:	8b ce                	mov    ecx,esi
  40aec2:	8b f8                	mov    edi,eax
  40aec4:	e8 97 2f 08 00       	call   0x48de60
  40aec9:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40aecd:	5f                   	pop    edi
  40aece:	5e                   	pop    esi
  40aecf:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40aed2:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40aed5:	5b                   	pop    ebx
  40aed6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40aed9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aee0:	8b e5                	mov    esp,ebp
  40aee2:	5d                   	pop    ebp
  40aee3:	c2 28 00             	ret    0x28
  40aee6:	5f                   	pop    edi
  40aee7:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40aeea:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40aeed:	5e                   	pop    esi
  40aeee:	5b                   	pop    ebx
  40aeef:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40aef2:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aef9:	8b e5                	mov    esp,ebp
  40aefb:	5d                   	pop    ebp
  40aefc:	c2 28 00             	ret    0x28
  40aeff:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40af02:	3b f3                	cmp    esi,ebx
  40af04:	74 35                	je     0x40af3b
  40af06:	8b 16                	mov    edx,DWORD PTR [esi]
  40af08:	53                   	push   ebx
  40af09:	68 4a 4e 00 00       	push   0x4e4a
  40af0e:	8b ce                	mov    ecx,esi
  40af10:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40af13:	6a 12                	push   0x12
  40af15:	8b ce                	mov    ecx,esi
  40af17:	8b f8                	mov    edi,eax
  40af19:	e8 42 2f 08 00       	call   0x48de60
  40af1e:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40af22:	5f                   	pop    edi
  40af23:	5e                   	pop    esi
  40af24:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40af27:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40af2a:	5b                   	pop    ebx
  40af2b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40af2e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40af35:	8b e5                	mov    esp,ebp
  40af37:	5d                   	pop    ebp
  40af38:	c2 28 00             	ret    0x28
  40af3b:	5f                   	pop    edi
  40af3c:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40af3f:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40af42:	5e                   	pop    esi
  40af43:	5b                   	pop    ebx
  40af44:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40af47:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40af4e:	8b e5                	mov    esp,ebp
  40af50:	5d                   	pop    ebp
  40af51:	c2 28 00             	ret    0x28

; [0x40af54,0x40b053) — Trois premieres variantes sur second contexte: air feu eau, mêmes clés/boosts
  40af54:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40af57:	3b f3                	cmp    esi,ebx
  40af59:	74 35                	je     0x40af90
  40af5b:	8b 16                	mov    edx,DWORD PTR [esi]
  40af5d:	53                   	push   ebx
  40af5e:	68 4c 4e 00 00       	push   0x4e4c
  40af63:	8b ce                	mov    ecx,esi
  40af65:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40af68:	6a 13                	push   0x13
  40af6a:	8b ce                	mov    ecx,esi
  40af6c:	8b f8                	mov    edi,eax
  40af6e:	e8 ed 2e 08 00       	call   0x48de60
  40af73:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40af77:	5f                   	pop    edi
  40af78:	5e                   	pop    esi
  40af79:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40af7c:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40af7f:	5b                   	pop    ebx
  40af80:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40af83:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40af8a:	8b e5                	mov    esp,ebp
  40af8c:	5d                   	pop    ebp
  40af8d:	c2 28 00             	ret    0x28
  40af90:	5f                   	pop    edi
  40af91:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40af94:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40af97:	5e                   	pop    esi
  40af98:	5b                   	pop    ebx
  40af99:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40af9c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40afa3:	8b e5                	mov    esp,ebp
  40afa5:	5d                   	pop    ebp
  40afa6:	c2 28 00             	ret    0x28
  40afa9:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40afac:	3b f3                	cmp    esi,ebx
  40afae:	74 35                	je     0x40afe5
  40afb0:	8b 16                	mov    edx,DWORD PTR [esi]
  40afb2:	53                   	push   ebx
  40afb3:	68 3e 4e 00 00       	push   0x4e3e
  40afb8:	8b ce                	mov    ecx,esi
  40afba:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40afbd:	6a 0c                	push   0xc
  40afbf:	8b ce                	mov    ecx,esi
  40afc1:	8b f8                	mov    edi,eax
  40afc3:	e8 98 2e 08 00       	call   0x48de60
  40afc8:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40afcc:	5f                   	pop    edi
  40afcd:	5e                   	pop    esi
  40afce:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40afd1:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40afd4:	5b                   	pop    ebx
  40afd5:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40afd8:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40afdf:	8b e5                	mov    esp,ebp
  40afe1:	5d                   	pop    ebp
  40afe2:	c2 28 00             	ret    0x28
  40afe5:	5f                   	pop    edi
  40afe6:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40afe9:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40afec:	5e                   	pop    esi
  40afed:	5b                   	pop    ebx
  40afee:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40aff1:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aff8:	8b e5                	mov    esp,ebp
  40affa:	5d                   	pop    ebp
  40affb:	c2 28 00             	ret    0x28
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

; [0x40b251,0x40b4f9) — Quatre derniers codes et leurs variantes contextuelles
  40b251:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40b254:	3b f3                	cmp    esi,ebx
  40b256:	74 35                	je     0x40b28d
  40b258:	8b 16                	mov    edx,DWORD PTR [esi]
  40b25a:	53                   	push   ebx
  40b25b:	68 45 4e 00 00       	push   0x4e45
  40b260:	8b ce                	mov    ecx,esi
  40b262:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b265:	6a 15                	push   0x15
  40b267:	8b ce                	mov    ecx,esi
  40b269:	8b f8                	mov    edi,eax
  40b26b:	e8 f0 2b 08 00       	call   0x48de60
  40b270:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b274:	5f                   	pop    edi
  40b275:	5e                   	pop    esi
  40b276:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b279:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b27c:	5b                   	pop    ebx
  40b27d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b280:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b287:	8b e5                	mov    esp,ebp
  40b289:	5d                   	pop    ebp
  40b28a:	c2 28 00             	ret    0x28
  40b28d:	5f                   	pop    edi
  40b28e:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b291:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b294:	5e                   	pop    esi
  40b295:	5b                   	pop    ebx
  40b296:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b299:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b2a0:	8b e5                	mov    esp,ebp
  40b2a2:	5d                   	pop    ebp
  40b2a3:	c2 28 00             	ret    0x28
  40b2a6:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40b2a9:	3b f3                	cmp    esi,ebx
  40b2ab:	74 35                	je     0x40b2e2
  40b2ad:	8b 16                	mov    edx,DWORD PTR [esi]
  40b2af:	53                   	push   ebx
  40b2b0:	68 46 4e 00 00       	push   0x4e46
  40b2b5:	8b ce                	mov    ecx,esi
  40b2b7:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b2ba:	6a 16                	push   0x16
  40b2bc:	8b ce                	mov    ecx,esi
  40b2be:	8b f8                	mov    edi,eax
  40b2c0:	e8 9b 2b 08 00       	call   0x48de60
  40b2c5:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b2c9:	5f                   	pop    edi
  40b2ca:	5e                   	pop    esi
  40b2cb:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b2ce:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b2d1:	5b                   	pop    ebx
  40b2d2:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b2d5:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b2dc:	8b e5                	mov    esp,ebp
  40b2de:	5d                   	pop    ebp
  40b2df:	c2 28 00             	ret    0x28
  40b2e2:	5f                   	pop    edi
  40b2e3:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b2e6:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b2e9:	5e                   	pop    esi
  40b2ea:	5b                   	pop    ebx
  40b2eb:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b2ee:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b2f5:	8b e5                	mov    esp,ebp
  40b2f7:	5d                   	pop    ebp
  40b2f8:	c2 28 00             	ret    0x28
  40b2fb:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40b2fe:	3b f3                	cmp    esi,ebx
  40b300:	74 35                	je     0x40b337
  40b302:	8b 16                	mov    edx,DWORD PTR [esi]
  40b304:	53                   	push   ebx
  40b305:	68 47 4e 00 00       	push   0x4e47
  40b30a:	8b ce                	mov    ecx,esi
  40b30c:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b30f:	6a 17                	push   0x17
  40b311:	8b ce                	mov    ecx,esi
  40b313:	8b f8                	mov    edi,eax
  40b315:	e8 46 2b 08 00       	call   0x48de60
  40b31a:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b31e:	5f                   	pop    edi
  40b31f:	5e                   	pop    esi
  40b320:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b323:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b326:	5b                   	pop    ebx
  40b327:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b32a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b331:	8b e5                	mov    esp,ebp
  40b333:	5d                   	pop    ebp
  40b334:	c2 28 00             	ret    0x28
  40b337:	5f                   	pop    edi
  40b338:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b33b:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b33e:	5e                   	pop    esi
  40b33f:	5b                   	pop    ebx
  40b340:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b343:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b34a:	8b e5                	mov    esp,ebp
  40b34c:	5d                   	pop    ebp
  40b34d:	c2 28 00             	ret    0x28
  40b350:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40b353:	3b f3                	cmp    esi,ebx
  40b355:	74 35                	je     0x40b38c
  40b357:	8b 16                	mov    edx,DWORD PTR [esi]
  40b359:	53                   	push   ebx
  40b35a:	68 48 4e 00 00       	push   0x4e48
  40b35f:	8b ce                	mov    ecx,esi
  40b361:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b364:	6a 18                	push   0x18
  40b366:	8b ce                	mov    ecx,esi
  40b368:	8b f8                	mov    edi,eax
  40b36a:	e8 f1 2a 08 00       	call   0x48de60
  40b36f:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b373:	5f                   	pop    edi
  40b374:	5e                   	pop    esi
  40b375:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b378:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b37b:	5b                   	pop    ebx
  40b37c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b37f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b386:	8b e5                	mov    esp,ebp
  40b388:	5d                   	pop    ebp
  40b389:	c2 28 00             	ret    0x28
  40b38c:	5f                   	pop    edi
  40b38d:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b390:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b393:	5e                   	pop    esi
  40b394:	5b                   	pop    ebx
  40b395:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b398:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b39f:	8b e5                	mov    esp,ebp
  40b3a1:	5d                   	pop    ebp
  40b3a2:	c2 28 00             	ret    0x28
  40b3a5:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40b3a8:	3b f3                	cmp    esi,ebx
  40b3aa:	74 35                	je     0x40b3e1
  40b3ac:	8b 16                	mov    edx,DWORD PTR [esi]
  40b3ae:	53                   	push   ebx
  40b3af:	68 45 4e 00 00       	push   0x4e45
  40b3b4:	8b ce                	mov    ecx,esi
  40b3b6:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b3b9:	6a 15                	push   0x15
  40b3bb:	8b ce                	mov    ecx,esi
  40b3bd:	8b f8                	mov    edi,eax
  40b3bf:	e8 9c 2a 08 00       	call   0x48de60
  40b3c4:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b3c8:	5f                   	pop    edi
  40b3c9:	5e                   	pop    esi
  40b3ca:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b3cd:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b3d0:	5b                   	pop    ebx
  40b3d1:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b3d4:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b3db:	8b e5                	mov    esp,ebp
  40b3dd:	5d                   	pop    ebp
  40b3de:	c2 28 00             	ret    0x28
  40b3e1:	5f                   	pop    edi
  40b3e2:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b3e5:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b3e8:	5e                   	pop    esi
  40b3e9:	5b                   	pop    ebx
  40b3ea:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b3ed:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b3f4:	8b e5                	mov    esp,ebp
  40b3f6:	5d                   	pop    ebp
  40b3f7:	c2 28 00             	ret    0x28
  40b3fa:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40b3fd:	3b f3                	cmp    esi,ebx
  40b3ff:	74 35                	je     0x40b436
  40b401:	8b 16                	mov    edx,DWORD PTR [esi]
  40b403:	53                   	push   ebx
  40b404:	68 46 4e 00 00       	push   0x4e46
  40b409:	8b ce                	mov    ecx,esi
  40b40b:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b40e:	6a 16                	push   0x16
  40b410:	8b ce                	mov    ecx,esi
  40b412:	8b f8                	mov    edi,eax
  40b414:	e8 47 2a 08 00       	call   0x48de60
  40b419:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b41d:	5f                   	pop    edi
  40b41e:	5e                   	pop    esi
  40b41f:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b422:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b425:	5b                   	pop    ebx
  40b426:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b429:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b430:	8b e5                	mov    esp,ebp
  40b432:	5d                   	pop    ebp
  40b433:	c2 28 00             	ret    0x28
  40b436:	5f                   	pop    edi
  40b437:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b43a:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b43d:	5e                   	pop    esi
  40b43e:	5b                   	pop    ebx
  40b43f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b442:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b449:	8b e5                	mov    esp,ebp
  40b44b:	5d                   	pop    ebp
  40b44c:	c2 28 00             	ret    0x28
  40b44f:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40b452:	3b f3                	cmp    esi,ebx
  40b454:	74 35                	je     0x40b48b
  40b456:	8b 16                	mov    edx,DWORD PTR [esi]
  40b458:	53                   	push   ebx
  40b459:	68 47 4e 00 00       	push   0x4e47
  40b45e:	8b ce                	mov    ecx,esi
  40b460:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b463:	6a 17                	push   0x17
  40b465:	8b ce                	mov    ecx,esi
  40b467:	8b f8                	mov    edi,eax
  40b469:	e8 f2 29 08 00       	call   0x48de60
  40b46e:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b472:	5f                   	pop    edi
  40b473:	5e                   	pop    esi
  40b474:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b477:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b47a:	5b                   	pop    ebx
  40b47b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b47e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b485:	8b e5                	mov    esp,ebp
  40b487:	5d                   	pop    ebp
  40b488:	c2 28 00             	ret    0x28
  40b48b:	5f                   	pop    edi
  40b48c:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b48f:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b492:	5e                   	pop    esi
  40b493:	5b                   	pop    ebx
  40b494:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b497:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b49e:	8b e5                	mov    esp,ebp
  40b4a0:	5d                   	pop    ebp
  40b4a1:	c2 28 00             	ret    0x28
  40b4a4:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40b4a7:	3b f3                	cmp    esi,ebx
  40b4a9:	74 35                	je     0x40b4e0
  40b4ab:	8b 16                	mov    edx,DWORD PTR [esi]
  40b4ad:	53                   	push   ebx
  40b4ae:	68 48 4e 00 00       	push   0x4e48
  40b4b3:	8b ce                	mov    ecx,esi
  40b4b5:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40b4b8:	6a 18                	push   0x18
  40b4ba:	8b ce                	mov    ecx,esi
  40b4bc:	8b f8                	mov    edi,eax
  40b4be:	e8 9d 29 08 00       	call   0x48de60
  40b4c3:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  40b4c7:	5f                   	pop    edi
  40b4c8:	5e                   	pop    esi
  40b4c9:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b4cc:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b4cf:	5b                   	pop    ebx
  40b4d0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b4d3:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b4da:	8b e5                	mov    esp,ebp
  40b4dc:	5d                   	pop    ebp
  40b4dd:	c2 28 00             	ret    0x28
  40b4e0:	5f                   	pop    edi
  40b4e1:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b4e4:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b4e7:	5e                   	pop    esi
  40b4e8:	5b                   	pop    ebx
  40b4e9:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b4ec:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b4f3:	8b e5                	mov    esp,ebp
  40b4f5:	5d                   	pop    ebp
  40b4f6:	c2 28 00             	ret    0x28

