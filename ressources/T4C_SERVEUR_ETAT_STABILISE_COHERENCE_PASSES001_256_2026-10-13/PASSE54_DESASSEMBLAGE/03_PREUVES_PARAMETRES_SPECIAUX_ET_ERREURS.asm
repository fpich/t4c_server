; T4C Server.exe — preuve passe 54 SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; VA demi-ouvertes. Code seulement, tables de données explicitement exclues.

; [0x0040ed7e,0x0040f11f) — Analyse d arguments skill/spell/true_skill/target et sortie commune; aucun octet de table de saut
  40ed7e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40ed81:	6a 20                	push   0x20
  40ed83:	c6 43 11 09          	mov    BYTE PTR [ebx+0x11],0x9
  40ed87:	e8 64 32 03 00       	call   0x441ff0
  40ed8c:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
  40ed8f:	8b f8                	mov    edi,eax
  40ed91:	89 7b 18             	mov    DWORD PTR [ebx+0x18],edi
  40ed94:	8b 46 54             	mov    eax,DWORD PTR [esi+0x54]
  40ed97:	8b 56 64             	mov    edx,DWORD PTR [esi+0x64]
  40ed9a:	83 c4 04             	add    esp,0x4
  40ed9d:	42                   	inc    edx
  40ed9e:	85 c0                	test   eax,eax
  40eda0:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40eda3:	c7 46 6c 00 00 00 00 	mov    DWORD PTR [esi+0x6c],0x0
  40edaa:	c6 46 60 08          	mov    BYTE PTR [esi+0x60],0x8
  40edae:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  40edb1:	89 56 64             	mov    DWORD PTR [esi+0x64],edx
  40edb4:	6a 0c                	push   0xc
  40edb6:	75 2a                	jne    0x40ede2
  40edb8:	e8 33 32 03 00       	call   0x441ff0
  40edbd:	33 c9                	xor    ecx,ecx
  40edbf:	83 c4 04             	add    esp,0x4
  40edc2:	3b c1                	cmp    eax,ecx
  40edc4:	74 07                	je     0x40edcd
  40edc6:	89 08                	mov    DWORD PTR [eax],ecx
  40edc8:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  40edcb:	eb 02                	jmp    0x40edcf
  40edcd:	33 c0                	xor    eax,eax
  40edcf:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40edd2:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40edd5:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  40edd8:	89 08                	mov    DWORD PTR [eax],ecx
  40edda:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40eddd:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  40ede0:	eb 37                	jmp    0x40ee19
  40ede2:	e8 09 32 03 00       	call   0x441ff0
  40ede7:	83 c4 04             	add    esp,0x4
  40edea:	85 c0                	test   eax,eax
  40edec:	74 0f                	je     0x40edfd
  40edee:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40edf4:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40edfb:	eb 02                	jmp    0x40edff
  40edfd:	33 c0                	xor    eax,eax
  40edff:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40ee02:	89 01                	mov    DWORD PTR [ecx],eax
  40ee04:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  40ee07:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40ee0a:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40ee0d:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  40ee10:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40ee13:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40ee19:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40ee1c:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  40ee1f:	8b 7b 18             	mov    edi,DWORD PTR [ebx+0x18]
  40ee22:	33 c0                	xor    eax,eax
  40ee24:	b9 08 00 00 00       	mov    ecx,0x8
  40ee29:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40ee2b:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
  40ee2e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40ee31:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  40ee34:	03 c1                	add    eax,ecx
  40ee36:	52                   	push   edx
  40ee37:	50                   	push   eax
  40ee38:	8b ce                	mov    ecx,esi
  40ee3a:	e8 c1 d5 ff ff       	call   0x40c400
  40ee3f:	85 c0                	test   eax,eax
  40ee41:	0f 85 94 02 00 00    	jne    0x40f0db
  40ee47:	68 38 08 50 00       	push   0x500838
  40ee4c:	e9 70 02 00 00       	jmp    0x40f0c1
  40ee51:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40ee54:	6a 20                	push   0x20
  40ee56:	c6 43 11 08          	mov    BYTE PTR [ebx+0x11],0x8
  40ee5a:	e8 91 31 03 00       	call   0x441ff0
  40ee5f:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
  40ee62:	8b f8                	mov    edi,eax
  40ee64:	89 7b 18             	mov    DWORD PTR [ebx+0x18],edi
  40ee67:	8b 46 54             	mov    eax,DWORD PTR [esi+0x54]
  40ee6a:	8b 56 64             	mov    edx,DWORD PTR [esi+0x64]
  40ee6d:	83 c4 04             	add    esp,0x4
  40ee70:	42                   	inc    edx
  40ee71:	85 c0                	test   eax,eax
  40ee73:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40ee76:	c7 46 6c 00 00 00 00 	mov    DWORD PTR [esi+0x6c],0x0
  40ee7d:	c6 46 60 08          	mov    BYTE PTR [esi+0x60],0x8
  40ee81:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  40ee84:	89 56 64             	mov    DWORD PTR [esi+0x64],edx
  40ee87:	6a 0c                	push   0xc
  40ee89:	75 2a                	jne    0x40eeb5
  40ee8b:	e8 60 31 03 00       	call   0x441ff0
  40ee90:	33 c9                	xor    ecx,ecx
  40ee92:	83 c4 04             	add    esp,0x4
  40ee95:	3b c1                	cmp    eax,ecx
  40ee97:	74 07                	je     0x40eea0
  40ee99:	89 08                	mov    DWORD PTR [eax],ecx
  40ee9b:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  40ee9e:	eb 02                	jmp    0x40eea2
  40eea0:	33 c0                	xor    eax,eax
  40eea2:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40eea5:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40eea8:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  40eeab:	89 08                	mov    DWORD PTR [eax],ecx
  40eead:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  40eeb0:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  40eeb3:	eb 37                	jmp    0x40eeec
  40eeb5:	e8 36 31 03 00       	call   0x441ff0
  40eeba:	83 c4 04             	add    esp,0x4
  40eebd:	85 c0                	test   eax,eax
  40eebf:	74 0f                	je     0x40eed0
  40eec1:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40eec7:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40eece:	eb 02                	jmp    0x40eed2
  40eed0:	33 c0                	xor    eax,eax
  40eed2:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40eed5:	89 01                	mov    DWORD PTR [ecx],eax
  40eed7:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  40eeda:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40eedd:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40eee0:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  40eee3:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40eee6:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40eeec:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40eeef:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  40eef2:	8b 7b 18             	mov    edi,DWORD PTR [ebx+0x18]
  40eef5:	33 c0                	xor    eax,eax
  40eef7:	b9 08 00 00 00       	mov    ecx,0x8
  40eefc:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40eefe:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
  40ef01:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40ef04:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  40ef07:	03 c1                	add    eax,ecx
  40ef09:	52                   	push   edx
  40ef0a:	50                   	push   eax
  40ef0b:	8b ce                	mov    ecx,esi
  40ef0d:	e8 ee d4 ff ff       	call   0x40c400
  40ef12:	85 c0                	test   eax,eax
  40ef14:	0f 85 c1 01 00 00    	jne    0x40f0db
  40ef1a:	68 fc 07 50 00       	push   0x5007fc
  40ef1f:	e9 9d 01 00 00       	jmp    0x40f0c1
  40ef24:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40ef27:	6a 20                	push   0x20
  40ef29:	c6 43 11 0a          	mov    BYTE PTR [ebx+0x11],0xa
  40ef2d:	e8 be 30 03 00       	call   0x441ff0
  40ef32:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
  40ef35:	8b f8                	mov    edi,eax
  40ef37:	89 7b 18             	mov    DWORD PTR [ebx+0x18],edi
  40ef3a:	8b 46 54             	mov    eax,DWORD PTR [esi+0x54]
  40ef3d:	8b 56 64             	mov    edx,DWORD PTR [esi+0x64]
  40ef40:	83 c4 04             	add    esp,0x4
  40ef43:	42                   	inc    edx
  40ef44:	85 c0                	test   eax,eax
  40ef46:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40ef49:	c7 46 6c 00 00 00 00 	mov    DWORD PTR [esi+0x6c],0x0
  40ef50:	c6 46 60 08          	mov    BYTE PTR [esi+0x60],0x8
  40ef54:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  40ef57:	89 56 64             	mov    DWORD PTR [esi+0x64],edx
  40ef5a:	6a 0c                	push   0xc
  40ef5c:	75 2a                	jne    0x40ef88
  40ef5e:	e8 8d 30 03 00       	call   0x441ff0
  40ef63:	33 c9                	xor    ecx,ecx
  40ef65:	83 c4 04             	add    esp,0x4
  40ef68:	3b c1                	cmp    eax,ecx
  40ef6a:	74 07                	je     0x40ef73
  40ef6c:	89 08                	mov    DWORD PTR [eax],ecx
  40ef6e:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  40ef71:	eb 02                	jmp    0x40ef75
  40ef73:	33 c0                	xor    eax,eax
  40ef75:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40ef78:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40ef7b:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  40ef7e:	89 08                	mov    DWORD PTR [eax],ecx
  40ef80:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  40ef83:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  40ef86:	eb 37                	jmp    0x40efbf
  40ef88:	e8 63 30 03 00       	call   0x441ff0
  40ef8d:	83 c4 04             	add    esp,0x4
  40ef90:	85 c0                	test   eax,eax
  40ef92:	74 0f                	je     0x40efa3
  40ef94:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40ef9a:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40efa1:	eb 02                	jmp    0x40efa5
  40efa3:	33 c0                	xor    eax,eax
  40efa5:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40efa8:	89 01                	mov    DWORD PTR [ecx],eax
  40efaa:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  40efad:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40efb0:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40efb3:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  40efb6:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40efb9:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40efbf:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40efc2:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  40efc5:	8b 7b 18             	mov    edi,DWORD PTR [ebx+0x18]
  40efc8:	33 c0                	xor    eax,eax
  40efca:	b9 08 00 00 00       	mov    ecx,0x8
  40efcf:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40efd1:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
  40efd4:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40efd7:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  40efda:	03 c1                	add    eax,ecx
  40efdc:	52                   	push   edx
  40efdd:	50                   	push   eax
  40efde:	8b ce                	mov    ecx,esi
  40efe0:	e8 1b d4 ff ff       	call   0x40c400
  40efe5:	85 c0                	test   eax,eax
  40efe7:	0f 85 ee 00 00 00    	jne    0x40f0db
  40efed:	68 c4 07 50 00       	push   0x5007c4
  40eff2:	e9 ca 00 00 00       	jmp    0x40f0c1
  40eff7:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40effa:	6a 20                	push   0x20
  40effc:	c6 43 11 03          	mov    BYTE PTR [ebx+0x11],0x3
  40f000:	e8 eb 2f 03 00       	call   0x441ff0
  40f005:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
  40f008:	8b f8                	mov    edi,eax
  40f00a:	89 7b 18             	mov    DWORD PTR [ebx+0x18],edi
  40f00d:	8b 46 54             	mov    eax,DWORD PTR [esi+0x54]
  40f010:	8b 56 64             	mov    edx,DWORD PTR [esi+0x64]
  40f013:	83 c4 04             	add    esp,0x4
  40f016:	42                   	inc    edx
  40f017:	85 c0                	test   eax,eax
  40f019:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40f01c:	c7 46 6c 00 00 00 00 	mov    DWORD PTR [esi+0x6c],0x0
  40f023:	c6 46 60 08          	mov    BYTE PTR [esi+0x60],0x8
  40f027:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  40f02a:	89 56 64             	mov    DWORD PTR [esi+0x64],edx
  40f02d:	6a 0c                	push   0xc
  40f02f:	75 2a                	jne    0x40f05b
  40f031:	e8 ba 2f 03 00       	call   0x441ff0
  40f036:	33 c9                	xor    ecx,ecx
  40f038:	83 c4 04             	add    esp,0x4
  40f03b:	3b c1                	cmp    eax,ecx
  40f03d:	74 07                	je     0x40f046
  40f03f:	89 08                	mov    DWORD PTR [eax],ecx
  40f041:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  40f044:	eb 02                	jmp    0x40f048
  40f046:	33 c0                	xor    eax,eax
  40f048:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40f04b:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40f04e:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  40f051:	89 08                	mov    DWORD PTR [eax],ecx
  40f053:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  40f056:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  40f059:	eb 37                	jmp    0x40f092
  40f05b:	e8 90 2f 03 00       	call   0x441ff0
  40f060:	83 c4 04             	add    esp,0x4
  40f063:	85 c0                	test   eax,eax
  40f065:	74 0f                	je     0x40f076
  40f067:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40f06d:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40f074:	eb 02                	jmp    0x40f078
  40f076:	33 c0                	xor    eax,eax
  40f078:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40f07b:	89 01                	mov    DWORD PTR [ecx],eax
  40f07d:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  40f080:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40f083:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40f086:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  40f089:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40f08c:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40f092:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40f095:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  40f098:	8b 7b 18             	mov    edi,DWORD PTR [ebx+0x18]
  40f09b:	33 c0                	xor    eax,eax
  40f09d:	b9 08 00 00 00       	mov    ecx,0x8
  40f0a2:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40f0a4:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
  40f0a7:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40f0aa:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  40f0ad:	03 c1                	add    eax,ecx
  40f0af:	52                   	push   edx
  40f0b0:	50                   	push   eax
  40f0b1:	8b ce                	mov    ecx,esi
  40f0b3:	e8 48 d3 ff ff       	call   0x40c400
  40f0b8:	85 c0                	test   eax,eax
  40f0ba:	75 1f                	jne    0x40f0db
  40f0bc:	68 94 07 50 00       	push   0x500794
  40f0c1:	6a 08                	push   0x8
  40f0c3:	e8 78 2c 06 00       	call   0x471d40
  40f0c8:	83 c4 08             	add    esp,0x8
  40f0cb:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40f0d2:	eb 07                	jmp    0x40f0db
  40f0d4:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  40f0d7:	c6 42 10 26          	mov    BYTE PTR [edx+0x10],0x26
  40f0db:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40f0de:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  40f0e5:	e8 56 29 0c 00       	call   0x4d1a40
  40f0ea:	e9 a4 d5 ff ff       	jmp    0x40c693
  40f0ef:	0f be 06             	movsx  eax,BYTE PTR [esi]
  40f0f2:	50                   	push   eax
  40f0f3:	68 64 07 50 00       	push   0x500764
  40f0f8:	6a 08                	push   0x8
  40f0fa:	e8 41 2c 06 00       	call   0x471d40
  40f0ff:	83 c4 0c             	add    esp,0xc
  40f102:	e9 97 d5 ff ff       	jmp    0x40c69e
  40f107:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40f10a:	5f                   	pop    edi
  40f10b:	5e                   	pop    esi
  40f10c:	b8 01 00 00 00       	mov    eax,0x1
  40f111:	5b                   	pop    ebx
  40f112:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40f119:	8b e5                	mov    esp,ebp
  40f11b:	5d                   	pop    ebp
  40f11c:	c2 08 00             	ret    0x8

