; Désassemblage produit avec objdump -D -Mintel sur T4C Server(1).exe
; SHA256 = 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Adresses virtuelles du PE32 d'origine; tous les extraits ci-dessous sont des instructions réelles.


; ============================================================================
; A - initialisation des connexions et autocommit [0x412fb0, 0x413060)
; ============================================================================

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00412fb0 <.text+0x11fb0>:
  412fb0:	55                   	push   ebp
  412fb1:	8b ec                	mov    ebp,esp
  412fb3:	6a ff                	push   0xffffffff
  412fb5:	68 fc 39 4d 00       	push   0x4d39fc
  412fba:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  412fc0:	50                   	push   eax
  412fc1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  412fc8:	81 ec 84 00 00 00    	sub    esp,0x84
  412fce:	a1 c4 42 51 00       	mov    eax,ds:0x5142c4
  412fd3:	8b 0d c0 42 51 00    	mov    ecx,DWORD PTR ds:0x5142c0
  412fd9:	53                   	push   ebx
  412fda:	56                   	push   esi
  412fdb:	57                   	push   edi
  412fdc:	50                   	push   eax
  412fdd:	51                   	push   ecx
  412fde:	68 d4 11 50 00       	push   0x5011d4
  412fe3:	b9 78 18 51 00       	mov    ecx,0x511878
  412fe8:	e8 43 ba 03 00       	call   0x44ea30
  412fed:	8b 15 c4 42 51 00    	mov    edx,DWORD PTR ds:0x5142c4
  412ff3:	a1 c0 42 51 00       	mov    eax,ds:0x5142c0
  412ff8:	52                   	push   edx
  412ff9:	50                   	push   eax
  412ffa:	68 d4 11 50 00       	push   0x5011d4
  412fff:	b9 78 16 51 00       	mov    ecx,0x511678
  413004:	e8 27 ba 03 00       	call   0x44ea30
  413009:	8b 0d c4 42 51 00    	mov    ecx,DWORD PTR ds:0x5142c4
  41300f:	8b 15 c0 42 51 00    	mov    edx,DWORD PTR ds:0x5142c0
  413015:	51                   	push   ecx
  413016:	52                   	push   edx
  413017:	68 d4 11 50 00       	push   0x5011d4
  41301c:	b9 78 14 51 00       	mov    ecx,0x511478
  413021:	e8 0a ba 03 00       	call   0x44ea30
  413026:	b9 78 16 51 00       	mov    ecx,0x511678
  41302b:	e8 50 b9 03 00       	call   0x44e980
  413030:	33 f6                	xor    esi,esi
  413032:	56                   	push   esi
  413033:	6a 66                	push   0x66
  413035:	b9 78 18 51 00       	mov    ecx,0x511878
  41303a:	e8 c1 bc 03 00       	call   0x44ed00
  41303f:	56                   	push   esi
  413040:	6a 66                	push   0x66
  413042:	b9 78 14 51 00       	mov    ecx,0x511478
  413047:	e8 b4 bc 03 00       	call   0x44ed00
  41304c:	56                   	push   esi
  41304d:	68 94 11 50 00       	push   0x501194
  413052:	b9 78 16 51 00       	mov    ecx,0x511678
  413057:	e8 24 bd 03 00       	call   0x44ed80
  41305c:	8a 4d f3             	mov    cl,BYTE PTR [ebp-0xd]
  41305f:	8a               	mov    al,BYTE PTR [ebp-0xd]


; ============================================================================
; B - appel au gestionnaire asynchrone depuis SaveCharacter [0x414af0, 0x414b30)
; ============================================================================

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00414af0 <.text+0x13af0>:
  414af0:	8b 00                	mov    eax,DWORD PTR [eax]
  414af2:	50                   	push   eax
  414af3:	68 a0 12 50 00       	push   0x5012a0
  414af8:	6a 04                	push   0x4
  414afa:	c6 45 fc 13          	mov    BYTE PTR [ebp-0x4],0x13
  414afe:	e8 3d d2 05 00       	call   0x471d40
  414b03:	83 c4 0c             	add    esp,0xc
  414b06:	8d 4d 08             	lea    ecx,[ebp+0x8]
  414b09:	c6 45 fc 0f          	mov    BYTE PTR [ebp-0x4],0xf
  414b0d:	e8 2e cf 0b 00       	call   0x4d1a40
  414b12:	68 f4 12 50 00       	push   0x5012f4
  414b17:	56                   	push   esi
  414b18:	53                   	push   ebx
  414b19:	57                   	push   edi
  414b1a:	b9 78 14 51 00       	mov    ecx,0x511478
  414b1f:	e8 cc a6 03 00       	call   0x44f1f0
  414b24:	8b 4d c4             	mov    ecx,DWORD PTR [ebp-0x3c]
  414b27:	8b 11                	mov    edx,DWORD PTR [ecx]
  414b29:	ff 52 08             	call   DWORD PTR [edx+0x8]
  414b2c:	8d 4d d0             	lea    ecx,[ebp-0x30]
  414b2f:	c6             	mov    BYTE PTR [ebp-0x4],0x2


; ============================================================================
; C - helper de connexion ODBC [0x44ea30, 0x44eb20)
; ============================================================================

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0044ea30 <.text+0x4da30>:
  44ea30:	55                   	push   ebp
  44ea31:	8b ec                	mov    ebp,esp
  44ea33:	81 ec 90 01 00 00    	sub    esp,0x190
  44ea39:	53                   	push   ebx
  44ea3a:	56                   	push   esi
  44ea3b:	57                   	push   edi
  44ea3c:	8b d9                	mov    ebx,ecx
  44ea3e:	e8 3d ff ff ff       	call   0x44e980
  44ea43:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  44ea46:	6a 01                	push   0x1
  44ea48:	6a 6e                	push   0x6e
  44ea4a:	50                   	push   eax
  44ea4b:	e8 0a fa 07 00       	call   0x4ce45a
  44ea50:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  44ea53:	85 ff                	test   edi,edi
  44ea55:	8d 53 11             	lea    edx,[ebx+0x11]
  44ea58:	75 05                	jne    0x44ea5f
  44ea5a:	bf f8 5b 50 00       	mov    edi,0x505bf8
  44ea5f:	83 c9 ff             	or     ecx,0xffffffff
  44ea62:	33 c0                	xor    eax,eax
  44ea64:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  44ea66:	f7 d1                	not    ecx
  44ea68:	2b f9                	sub    edi,ecx
  44ea6a:	8b c1                	mov    eax,ecx
  44ea6c:	8b f7                	mov    esi,edi
  44ea6e:	c1 e9 02             	shr    ecx,0x2
  44ea71:	8b fa                	mov    edi,edx
  44ea73:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  44ea75:	8b c8                	mov    ecx,eax
  44ea77:	83 e1 03             	and    ecx,0x3
  44ea7a:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  44ea7c:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  44ea7f:	85 ff                	test   edi,edi
  44ea81:	74 25                	je     0x44eaa8
  44ea83:	83 c9 ff             	or     ecx,0xffffffff
  44ea86:	33 c0                	xor    eax,eax
  44ea88:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  44ea8a:	f7 d1                	not    ecx
  44ea8c:	2b f9                	sub    edi,ecx
  44ea8e:	8b c1                	mov    eax,ecx
  44ea90:	8b f7                	mov    esi,edi
  44ea92:	c1 e9 02             	shr    ecx,0x2
  44ea95:	8d 93 0b 01 00 00    	lea    edx,[ebx+0x10b]
  44ea9b:	8b fa                	mov    edi,edx
  44ea9d:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  44ea9f:	8b c8                	mov    ecx,eax
  44eaa1:	83 e1 03             	and    ecx,0x3
  44eaa4:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  44eaa6:	eb 07                	jmp    0x44eaaf
  44eaa8:	c6 83 0b 01 00 00 00 	mov    BYTE PTR [ebx+0x10b],0x0
  44eaaf:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  44eab2:	85 d2                	test   edx,edx
  44eab4:	74 2b                	je     0x44eae1
  44eab6:	83 c9 ff             	or     ecx,0xffffffff
  44eab9:	33 c0                	xor    eax,eax
  44eabb:	8b fa                	mov    edi,edx
  44eabd:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  44eabf:	f7 d1                	not    ecx
  44eac1:	2b f9                	sub    edi,ecx
  44eac3:	8b c1                	mov    eax,ecx
  44eac5:	8d b3 6f 01 00 00    	lea    esi,[ebx+0x16f]
  44eacb:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
  44eace:	8b f7                	mov    esi,edi
  44ead0:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  44ead3:	c1 e9 02             	shr    ecx,0x2
  44ead6:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  44ead8:	8b c8                	mov    ecx,eax
  44eada:	83 e1 03             	and    ecx,0x3
  44eadd:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  44eadf:	eb 07                	jmp    0x44eae8
  44eae1:	c6 83 6f 01 00 00 00 	mov    BYTE PTR [ebx+0x16f],0x0
  44eae8:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  44eaeb:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  44eaee:	6a fd                	push   0xfffffffd
  44eaf0:	52                   	push   edx
  44eaf1:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  44eaf4:	6a fd                	push   0xfffffffd
  44eaf6:	51                   	push   ecx
  44eaf7:	6a fd                	push   0xfffffffd
  44eaf9:	52                   	push   edx
  44eafa:	50                   	push   eax
  44eafb:	e8 54 f9 07 00       	call   0x4ce454
  44eb00:	8b f0                	mov    esi,eax
  44eb02:	66 83 fe 01          	cmp    si,0x1
  44eb06:	74 10                	je     0x44eb18
  44eb08:	66 83 fe ff          	cmp    si,0xffff
  44eb0c:	74 0a                	je     0x44eb18
  44eb0e:	66 83 fe fe          	cmp    si,0xfffe
  44eb12:	0f 85 f9 00 00 00    	jne    0x44ec11
  44eb18:	8b cb                	mov    ecx,ebx
  44eb1a:	e8 41 f8 ff ff       	call   0x44e360
  44eb1f:	8d               	lea    ecx,[ebp+0xe]


; ============================================================================
; D - SQLSetConnectOption, COMMIT, ROLLBACK [0x44ed00, 0x44ed60)
; ============================================================================

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0044ed00 <.text+0x4dd00>:
  44ed00:	55                   	push   ebp
  44ed01:	8b ec                	mov    ebp,esp
  44ed03:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  44ed06:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  44ed09:	50                   	push   eax
  44ed0a:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  44ed0d:	52                   	push   edx
  44ed0e:	50                   	push   eax
  44ed0f:	e8 46 f7 07 00       	call   0x4ce45a
  44ed14:	5d                   	pop    ebp
  44ed15:	c2 08 00             	ret    0x8
  44ed18:	90                   	nop
  44ed19:	90                   	nop
  44ed1a:	90                   	nop
  44ed1b:	90                   	nop
  44ed1c:	90                   	nop
  44ed1d:	90                   	nop
  44ed1e:	90                   	nop
  44ed1f:	90                   	nop
  44ed20:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  44ed23:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  44ed26:	6a 00                	push   0x0
  44ed28:	50                   	push   eax
  44ed29:	51                   	push   ecx
  44ed2a:	e8 49 f7 07 00       	call   0x4ce478
  44ed2f:	66 f7 d8             	neg    ax
  44ed32:	1b c0                	sbb    eax,eax
  44ed34:	40                   	inc    eax
  44ed35:	c3                   	ret
  44ed36:	90                   	nop
  44ed37:	90                   	nop
  44ed38:	90                   	nop
  44ed39:	90                   	nop
  44ed3a:	90                   	nop
  44ed3b:	90                   	nop
  44ed3c:	90                   	nop
  44ed3d:	90                   	nop
  44ed3e:	90                   	nop
  44ed3f:	90                   	nop
  44ed40:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  44ed43:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  44ed46:	6a 01                	push   0x1
  44ed48:	50                   	push   eax
  44ed49:	51                   	push   ecx
  44ed4a:	e8 29 f7 07 00       	call   0x4ce478
  44ed4f:	66 f7 d8             	neg    ax
  44ed52:	1b c0                	sbb    eax,eax
  44ed54:	40                   	inc    eax
  44ed55:	c3                   	ret
  44ed56:	90                   	nop
  44ed57:	90                   	nop
  44ed58:	90                   	nop
  44ed59:	90                   	nop
  44ed5a:	90                   	nop
  44ed5b:	90                   	nop
  44ed5c:	90                   	nop
  44ed5d:	90                   	nop
  44ed5e:	90                   	nop
  44ed5f:	90                   	nop


; ============================================================================
; E - SQLExecDirect, libération et seconde tentative [0x44ed80, 0x44ef00)
; ============================================================================

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0044ed80 <.text+0x4dd80>:
  44ed80:	55                   	push   ebp
  44ed81:	8b ec                	mov    ebp,esp
  44ed83:	81 ec d8 00 00 00    	sub    esp,0xd8
  44ed89:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44ed8c:	53                   	push   ebx
  44ed8d:	56                   	push   esi
  44ed8e:	57                   	push   edi
  44ed8f:	6a fd                	push   0xfffffffd
  44ed91:	8b f1                	mov    esi,ecx
  44ed93:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  44ed96:	50                   	push   eax
  44ed97:	51                   	push   ecx
  44ed98:	e8 d5 f6 07 00       	call   0x4ce472
  44ed9d:	66 85 c0             	test   ax,ax
  44eda0:	66 89 06             	mov    WORD PTR [esi],ax
  44eda3:	75 0e                	jne    0x44edb3
  44eda5:	5f                   	pop    edi
  44eda6:	5e                   	pop    esi
  44eda7:	b8 01 00 00 00       	mov    eax,0x1
  44edac:	5b                   	pop    ebx
  44edad:	8b e5                	mov    esp,ebp
  44edaf:	5d                   	pop    ebp
  44edb0:	c2 08 00             	ret    0x8
  44edb3:	8b ce                	mov    ecx,esi
  44edb5:	e8 a6 f5 ff ff       	call   0x44e360
  44edba:	8a 45 0c             	mov    al,BYTE PTR [ebp+0xc]
  44edbd:	84 c0                	test   al,al
  44edbf:	0f 85 31 01 00 00    	jne    0x44eef6
  44edc5:	68 d0 5c 50 00       	push   0x505cd0
  44edca:	6a 20                	push   0x20
  44edcc:	e8 6f 2f 02 00       	call   0x471d40
  44edd1:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  44edd4:	8d 5e 08             	lea    ebx,[esi+0x8]
  44edd7:	83 c4 08             	add    esp,0x8
  44edda:	52                   	push   edx
  44eddb:	e8 68 f6 07 00       	call   0x4ce448
  44ede0:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  44ede3:	8d 7e 04             	lea    edi,[esi+0x4]
  44ede6:	50                   	push   eax
  44ede7:	e8 56 f6 07 00       	call   0x4ce442
  44edec:	57                   	push   edi
  44eded:	e8 4a f6 07 00       	call   0x4ce43c
  44edf2:	8b 0f                	mov    ecx,DWORD PTR [edi]
  44edf4:	53                   	push   ebx
  44edf5:	51                   	push   ecx
  44edf6:	e8 3b f6 07 00       	call   0x4ce436
  44edfb:	8d 96 6f 01 00 00    	lea    edx,[esi+0x16f]
  44ee01:	52                   	push   edx
  44ee02:	8d 8e 0b 01 00 00    	lea    ecx,[esi+0x10b]
  44ee08:	8d 46 11             	lea    eax,[esi+0x11]
  44ee0b:	51                   	push   ecx
  44ee0c:	50                   	push   eax
  44ee0d:	8b ce                	mov    ecx,esi
  44ee0f:	c6 46 10 00          	mov    BYTE PTR [esi+0x10],0x0
  44ee13:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  44ee16:	e8 15 fc ff ff       	call   0x44ea30
  44ee1b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  44ee1e:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  44ee21:	6a fd                	push   0xfffffffd
  44ee23:	52                   	push   edx
  44ee24:	50                   	push   eax
  44ee25:	e8 48 f6 07 00       	call   0x4ce472
  44ee2a:	66 85 c0             	test   ax,ax
  44ee2d:	66 89 06             	mov    WORD PTR [esi],ax
  44ee30:	75 1d                	jne    0x44ee4f
  44ee32:	68 a4 5c 50 00       	push   0x505ca4
  44ee37:	6a 20                	push   0x20
  44ee39:	e8 02 2f 02 00       	call   0x471d40
  44ee3e:	83 c4 08             	add    esp,0x8
  44ee41:	5f                   	pop    edi
  44ee42:	5e                   	pop    esi
  44ee43:	b8 01 00 00 00       	mov    eax,0x1
  44ee48:	5b                   	pop    ebx
  44ee49:	8b e5                	mov    esp,ebp
  44ee4b:	5d                   	pop    ebp
  44ee4c:	c2 08 00             	ret    0x8
  44ee4f:	33 c9                	xor    ecx,ecx
  44ee51:	89 4d f9             	mov    DWORD PTR [ebp-0x7],ecx
  44ee54:	8d 55 0c             	lea    edx,[ebp+0xc]
  44ee57:	52                   	push   edx
  44ee58:	68 c8 00 00 00       	push   0xc8
  44ee5d:	88 4d fd             	mov    BYTE PTR [ebp-0x3],cl
  44ee60:	89 4d 0c             	mov    DWORD PTR [ebp+0xc],ecx
  44ee63:	8d 85 28 ff ff ff    	lea    eax,[ebp-0xd8]
  44ee69:	50                   	push   eax
  44ee6a:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  44ee6d:	8d 4d f4             	lea    ecx,[ebp-0xc]
  44ee70:	51                   	push   ecx
  44ee71:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  44ee73:	8d 55 f8             	lea    edx,[ebp-0x8]
  44ee76:	52                   	push   edx
  44ee77:	8b 17                	mov    edx,DWORD PTR [edi]
  44ee79:	50                   	push   eax
  44ee7a:	51                   	push   ecx
  44ee7b:	52                   	push   edx
  44ee7c:	c6 45 f8 00          	mov    BYTE PTR [ebp-0x8],0x0
  44ee80:	e8 ab f5 07 00       	call   0x4ce430
  44ee85:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  44ee88:	50                   	push   eax
  44ee89:	68 5c 5c 50 00       	push   0x505c5c
  44ee8e:	6a 01                	push   0x1
  44ee90:	e8 ab 2e 02 00       	call   0x471d40
  44ee95:	83 c4 0c             	add    esp,0xc
  44ee98:	68 40 5c 50 00       	push   0x505c40
  44ee9d:	6a 08                	push   0x8
  44ee9f:	e8 9c 2e 02 00       	call   0x471d40
  44eea4:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44eea7:	83 c4 08             	add    esp,0x8
  44eeaa:	51                   	push   ecx
  44eeab:	68 18 5c 50 00       	push   0x505c18
  44eeb0:	6a 08                	push   0x8
  44eeb2:	e8 89 2e 02 00       	call   0x471d40
  44eeb7:	83 c4 0c             	add    esp,0xc
  44eeba:	8d 55 f8             	lea    edx,[ebp-0x8]
  44eebd:	52                   	push   edx
  44eebe:	68 d0 5b 50 00       	push   0x505bd0
  44eec3:	6a 08                	push   0x8
  44eec5:	e8 76 2e 02 00       	call   0x471d40
  44eeca:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
  44eecd:	83 c4 0c             	add    esp,0xc
  44eed0:	50                   	push   eax
  44eed1:	68 bc 5b 50 00       	push   0x505bbc
  44eed6:	6a 08                	push   0x8
  44eed8:	e8 63 2e 02 00       	call   0x471d40
  44eedd:	83 c4 0c             	add    esp,0xc
  44eee0:	8d 8d 28 ff ff ff    	lea    ecx,[ebp-0xd8]
  44eee6:	51                   	push   ecx
  44eee7:	68 a8 5b 50 00       	push   0x505ba8
  44eeec:	6a 08                	push   0x8
  44eeee:	e8 4d 2e 02 00       	call   0x471d40
  44eef3:	83 c4 0c             	add    esp,0xc
  44eef6:	5f                   	pop    edi
  44eef7:	5e                   	pop    esi
  44eef8:	33 c0                	xor    eax,eax
  44eefa:	5b                   	pop    ebx
  44eefb:	8b e5                	mov    esp,ebp
  44eefd:	5d                   	pop    ebp
  44eefe:	c2 08              	ret    0x8


; ============================================================================
; F - SQL worker: parcours du lot et arrêt sur erreur [0x44f32e, 0x44f4b8)
; ============================================================================

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0044f32e <.text+0x4e32e>:
  44f32e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  44f331:	8b 30                	mov    esi,DWORD PTR [eax]
  44f333:	8b cf                	mov    ecx,edi
  44f335:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  44f338:	33 db                	xor    ebx,ebx
  44f33a:	e8 41 f6 ff ff       	call   0x44e980
  44f33f:	e8 ac a8 03 00       	call   0x489bf0
  44f344:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  44f347:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  44f34a:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  44f34d:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  44f350:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  44f354:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44f357:	85 c0                	test   eax,eax
  44f359:	74 0a                	je     0x44f365
  44f35b:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  44f35e:	8b 08                	mov    ecx,DWORD PTR [eax]
  44f360:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  44f363:	eb 07                	jmp    0x44f36c
  44f365:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  44f36c:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  44f36f:	85 c0                	test   eax,eax
  44f371:	0f 84 d7 00 00 00    	je     0x44f44e
  44f377:	85 db                	test   ebx,ebx
  44f379:	0f 85 e1 00 00 00    	jne    0x44f460
  44f37f:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  44f382:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f385:	e8 16 27 08 00       	call   0x4d1aa0
  44f38a:	8d 55 cc             	lea    edx,[ebp-0x34]
  44f38d:	52                   	push   edx
  44f38e:	ff 15 00 e3 4d 00    	call   DWORD PTR ds:0x4de300
  44f394:	83 c4 04             	add    esp,0x4
  44f397:	50                   	push   eax
  44f398:	8d 45 f0             	lea    eax,[ebp-0x10]
  44f39b:	50                   	push   eax
  44f39c:	e8 f3 26 08 00       	call   0x4d1a94
  44f3a1:	83 c4 08             	add    esp,0x8
  44f3a4:	68 90 5d 50 00       	push   0x505d90
  44f3a9:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f3ac:	e8 a1 26 08 00       	call   0x4d1a52
  44f3b1:	83 c7 04             	add    edi,0x4
  44f3b4:	57                   	push   edi
  44f3b5:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f3b8:	e8 fb 26 08 00       	call   0x4d1ab8
  44f3bd:	68 90 5d 50 00       	push   0x505d90
  44f3c2:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f3c5:	e8 88 26 08 00       	call   0x4d1a52
  44f3ca:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  44f3cd:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  44f3d0:	52                   	push   edx
  44f3d1:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f3d4:	e8 79 26 08 00       	call   0x4d1a52
  44f3d9:	68 e0 31 50 00       	push   0x5031e0
  44f3de:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f3e1:	e8 6c 26 08 00       	call   0x4d1a52
  44f3e6:	8b 0d f4 42 51 00    	mov    ecx,DWORD PTR ds:0x5142f4
  44f3ec:	e8 bf 05 00 00       	call   0x44f9b0
  44f3f1:	51                   	push   ecx
  44f3f2:	8d 45 f0             	lea    eax,[ebp-0x10]
  44f3f5:	8b cc                	mov    ecx,esp
  44f3f7:	89 65 d4             	mov    DWORD PTR [ebp-0x2c],esp
  44f3fa:	50                   	push   eax
  44f3fb:	e8 4c 26 08 00       	call   0x4d1a4c
  44f400:	8b 0d f4 42 51 00    	mov    ecx,DWORD PTR ds:0x5142f4
  44f406:	e8 b5 04 00 00       	call   0x44f8c0
  44f40b:	8b 0d f4 42 51 00    	mov    ecx,DWORD PTR ds:0x5142f4
  44f411:	e8 ea 05 00 00       	call   0x44fa00
  44f416:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  44f419:	51                   	push   ecx
  44f41a:	68 84 5d 50 00       	push   0x505d84
  44f41f:	68 00 08 00 00       	push   0x800
  44f424:	e8 17 29 02 00       	call   0x471d40
  44f429:	8b 3f                	mov    edi,DWORD PTR [edi]
  44f42b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44f42e:	83 c4 0c             	add    esp,0xc
  44f431:	53                   	push   ebx
  44f432:	57                   	push   edi
  44f433:	e8 48 f9 ff ff       	call   0x44ed80
  44f438:	85 c0                	test   eax,eax
  44f43a:	75 05                	jne    0x44f441
  44f43c:	bb 01 00 00 00       	mov    ebx,0x1
  44f441:	8d 4d 94             	lea    ecx,[ebp-0x6c]
  44f444:	e8 67 45 fe ff       	call   0x4339b0
  44f449:	e9 06 ff ff ff       	jmp    0x44f354
  44f44e:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44f451:	85 c0                	test   eax,eax
  44f453:	74 04                	je     0x44f459
  44f455:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  44f459:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44f460:	e8 8b a7 03 00       	call   0x489bf0
  44f465:	8b f8                	mov    edi,eax
  44f467:	2b 7d dc             	sub    edi,DWORD PTR [ebp-0x24]
  44f46a:	57                   	push   edi
  44f46b:	68 5c 5d 50 00       	push   0x505d5c
  44f470:	68 00 08 00 00       	push   0x800
  44f475:	e8 c6 28 02 00       	call   0x471d40
  44f47a:	8b 0d f4 42 51 00    	mov    ecx,DWORD PTR ds:0x5142f4
  44f480:	83 c4 0c             	add    esp,0xc
  44f483:	e8 28 05 00 00       	call   0x44f9b0
  44f488:	8b 0d f4 42 51 00    	mov    ecx,DWORD PTR ds:0x5142f4
  44f48e:	57                   	push   edi
  44f48f:	e8 bc 04 00 00       	call   0x44f950
  44f494:	8b 0d f4 42 51 00    	mov    ecx,DWORD PTR ds:0x5142f4
  44f49a:	e8 61 05 00 00       	call   0x44fa00
  44f49f:	33 ff                	xor    edi,edi
  44f4a1:	3b df                	cmp    ebx,edi
  44f4a3:	0f 84 00 01 00 00    	je     0x44f5a9
  44f4a9:	6a 06                	push   0x6
  44f4ab:	e8 60 28 02 00       	call   0x471d10
  44f4b0:	83 c4 04             	add    esp,0x4
  44f4b3:	85 c0                	test   eax,eax
  44f4b5:	0f 84 d4       	je     0x44f58f


; ============================================================================
; G - COMMIT/ROLLBACK et callback [0x44f58f, 0x44f5cc)
; ============================================================================

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0044f58f <.text+0x4e58f>:
  44f58f:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44f592:	e8 a9 f7 ff ff       	call   0x44ed40
  44f597:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  44f59a:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  44f59d:	3b c7                	cmp    eax,edi
  44f59f:	74 26                	je     0x44f5c7
  44f5a1:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  44f5a4:	51                   	push   ecx
  44f5a5:	6a 01                	push   0x1
  44f5a7:	eb 19                	jmp    0x44f5c2
  44f5a9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44f5ac:	e8 6f f7 ff ff       	call   0x44ed20
  44f5b1:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
  44f5b4:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  44f5b7:	3b c7                	cmp    eax,edi
  44f5b9:	74 0c                	je     0x44f5c7
  44f5bb:	8b ca                	mov    ecx,edx
  44f5bd:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  44f5c0:	52                   	push   edx
  44f5c1:	57                   	push   edi
  44f5c2:	ff d0                	call   eax
  44f5c4:	83 c4 08             	add    esp,0x8
  44f5c7:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  44f5ca:	89 46              	mov    DWORD PTR [esi+0x20],eax


; ============================================================================
; H - soumission IOCP [0x44f1f0, 0x44f234)
; ============================================================================

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0044f1f0 <.text+0x4e1f0>:
  44f1f0:	55                   	push   ebp
  44f1f1:	8b ec                	mov    ebp,esp
  44f1f3:	56                   	push   esi
  44f1f4:	8b f1                	mov    esi,ecx
  44f1f6:	e8 b5 ff ff ff       	call   0x44f1b0
  44f1fb:	6a 10                	push   0x10
  44f1fd:	e8 ee 2d ff ff       	call   0x441ff0
  44f202:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44f205:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  44f208:	83 c4 04             	add    esp,0x4
  44f20b:	6a 00                	push   0x0
  44f20d:	89 08                	mov    DWORD PTR [eax],ecx
  44f20f:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44f212:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  44f215:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  44f218:	50                   	push   eax
  44f219:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  44f21c:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  44f21f:	8b 86 fc 01 00 00    	mov    eax,DWORD PTR [esi+0x1fc]
  44f225:	6a 00                	push   0x0
  44f227:	50                   	push   eax
  44f228:	ff 15 0c e1 4d 00    	call   DWORD PTR ds:0x4de10c
  44f22e:	5e                   	pop    esi
  44f22f:	5d                   	pop    ebp
  44f230:	c2 10 00             	ret    0x10
  44f233:	90                   	nop
