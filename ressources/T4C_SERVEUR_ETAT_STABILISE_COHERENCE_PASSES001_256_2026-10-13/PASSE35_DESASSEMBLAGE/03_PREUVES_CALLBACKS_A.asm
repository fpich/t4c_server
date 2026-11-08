; T4C Server (1).exe, passe 35 — preuve objdump x86, vérifier octets en .text; séquences décrites sans inférer les règles métier complètes.

; callback code 17; dispatch virtuel: 0x004BD970..0x004BD983 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004bd970 <.text+0xbc970>:
  4bd970:	55                   	push   ebp
  4bd971:	8b ec                	mov    ebp,esp
  4bd973:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  4bd976:	8b 01                	mov    eax,DWORD PTR [ecx]
  4bd978:	68 4d 4e 00 00       	push   0x4e4d
  4bd97d:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4bd980:	5d                   	pop    ebp
  4bd981:	c3                   	ret
  4bd982:	90                   	nop


; callback code 1; filtrage code evenement 2: 0x004C2E60..0x004C3210 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c2e60 <.text+0xc1e60>:
  4c2e60:	55                   	push   ebp
  4c2e61:	8b ec                	mov    ebp,esp
  4c2e63:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  4c2e66:	8b 01                	mov    eax,DWORD PTR [ecx]
  4c2e68:	68 31 4e 00 00       	push   0x4e31
  4c2e6d:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4c2e70:	5d                   	pop    ebp
  4c2e71:	c3                   	ret
  4c2e72:	90                   	nop
  4c2e73:	90                   	nop
  4c2e74:	90                   	nop
  4c2e75:	90                   	nop
  4c2e76:	90                   	nop
  4c2e77:	90                   	nop
  4c2e78:	90                   	nop
  4c2e79:	90                   	nop
  4c2e7a:	90                   	nop
  4c2e7b:	90                   	nop
  4c2e7c:	90                   	nop
  4c2e7d:	90                   	nop
  4c2e7e:	90                   	nop
  4c2e7f:	90                   	nop
  4c2e80:	55                   	push   ebp
  4c2e81:	8b ec                	mov    ebp,esp
  4c2e83:	83 ec 18             	sub    esp,0x18
  4c2e86:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c2e89:	53                   	push   ebx
  4c2e8a:	b8 02 00 00 00       	mov    eax,0x2
  4c2e8f:	3b c8                	cmp    ecx,eax
  4c2e91:	56                   	push   esi
  4c2e92:	57                   	push   edi
  4c2e93:	0f 85 c1 01 00 00    	jne    0x4c305a
  4c2e99:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  4c2e9c:	8b 07                	mov    eax,DWORD PTR [edi]
  4c2e9e:	8b cf                	mov    ecx,edi
  4c2ea0:	ff 90 3c 01 00 00    	call   DWORD PTR [eax+0x13c]
  4c2ea6:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  4c2ea9:	8b cb                	mov    ecx,ebx
  4c2eab:	25 ff ff 00 00       	and    eax,0xffff
  4c2eb0:	8d 04 40             	lea    eax,[eax+eax*2]
  4c2eb3:	99                   	cdq
  4c2eb4:	83 e2 03             	and    edx,0x3
  4c2eb7:	03 c2                	add    eax,edx
  4c2eb9:	8b 13                	mov    edx,DWORD PTR [ebx]
  4c2ebb:	8b f0                	mov    esi,eax
  4c2ebd:	c1 fe 02             	sar    esi,0x2
  4c2ec0:	ff 92 3c 01 00 00    	call   DWORD PTR [edx+0x13c]
  4c2ec6:	25 ff ff 00 00       	and    eax,0xffff
  4c2ecb:	3b c6                	cmp    eax,esi
  4c2ecd:	8b 75 20             	mov    esi,DWORD PTR [ebp+0x20]
  4c2ed0:	7c 37                	jl     0x4c2f09
  4c2ed2:	33 c0                	xor    eax,eax
  4c2ed4:	66 8b 06             	mov    ax,WORD PTR [esi]
  4c2ed7:	66 05 10 27          	add    ax,0x2710
  4c2edb:	8b cb                	mov    ecx,ebx
  4c2edd:	50                   	push   eax
  4c2ede:	e8 7d af fc ff       	call   0x48de60
  4c2ee3:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  4c2ee6:	f7 d8                	neg    eax
  4c2ee8:	3b c1                	cmp    eax,ecx
  4c2eea:	7e 10                	jle    0x4c2efc
  4c2eec:	33 c9                	xor    ecx,ecx
  4c2eee:	8b c1                	mov    eax,ecx
  4c2ef0:	99                   	cdq
  4c2ef1:	2b c2                	sub    eax,edx
  4c2ef3:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  4c2ef6:	8b f0                	mov    esi,eax
  4c2ef8:	d1 fe                	sar    esi,1
  4c2efa:	eb 3e                	jmp    0x4c2f3a
  4c2efc:	2b c8                	sub    ecx,eax
  4c2efe:	8b c1                	mov    eax,ecx
  4c2f00:	99                   	cdq
  4c2f01:	2b c2                	sub    eax,edx
  4c2f03:	8b f0                	mov    esi,eax
  4c2f05:	d1 fe                	sar    esi,1
  4c2f07:	eb 31                	jmp    0x4c2f3a
  4c2f09:	33 c9                	xor    ecx,ecx
  4c2f0b:	66 8b 0e             	mov    cx,WORD PTR [esi]
  4c2f0e:	66 81 c1 10 27       	add    cx,0x2710
  4c2f13:	51                   	push   ecx
  4c2f14:	8b cb                	mov    ecx,ebx
  4c2f16:	e8 45 af fc ff       	call   0x48de60
  4c2f1b:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  4c2f1e:	f7 d8                	neg    eax
  4c2f20:	3b c1                	cmp    eax,ecx
  4c2f22:	7e 07                	jle    0x4c2f2b
  4c2f24:	33 c0                	xor    eax,eax
  4c2f26:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  4c2f29:	eb 04                	jmp    0x4c2f2f
  4c2f2b:	2b c8                	sub    ecx,eax
  4c2f2d:	8b c1                	mov    eax,ecx
  4c2f2f:	99                   	cdq
  4c2f30:	83 e2 03             	and    edx,0x3
  4c2f33:	03 c2                	add    eax,edx
  4c2f35:	8b f0                	mov    esi,eax
  4c2f37:	c1 fe 02             	sar    esi,0x2
  4c2f3a:	8d 55 f4             	lea    edx,[ebp-0xc]
  4c2f3d:	52                   	push   edx
  4c2f3e:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4c2f43:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
  4c2f4a:	c7 45 f8 64 00 00 00 	mov    DWORD PTR [ebp-0x8],0x64
  4c2f51:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c2f58:	e8 c3 61 f9 ff       	call   0x459120
  4c2f5d:	3b c6                	cmp    eax,esi
  4c2f5f:	0f 8d f0 00 00 00    	jge    0x4c3055
  4c2f65:	8b cb                	mov    ecx,ebx
  4c2f67:	e8 e4 b1 fc ff       	call   0x48e150
  4c2f6c:	bb 01 00 00 00       	mov    ebx,0x1
  4c2f71:	33 f6                	xor    esi,esi
  4c2f73:	8b cf                	mov    ecx,edi
  4c2f75:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  4c2f78:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4c2f7b:	25 ff ff 00 00       	and    eax,0xffff
  4c2f80:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  4c2f83:	e8 08 b2 fc ff       	call   0x48e190
  4c2f88:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4c2f8d:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
  4c2f90:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  4c2f93:	25 ff ff 00 00       	and    eax,0xffff
  4c2f98:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  4c2f9b:	8d 45 f4             	lea    eax,[ebp-0xc]
  4c2f9e:	50                   	push   eax
  4c2f9f:	e8 7c 61 f9 ff       	call   0x459120
  4c2fa4:	8d 4d e8             	lea    ecx,[ebp-0x18]
  4c2fa7:	51                   	push   ecx
  4c2fa8:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4c2fad:	8b f0                	mov    esi,eax
  4c2faf:	e8 6c 61 f9 ff       	call   0x459120
  4c2fb4:	3b c6                	cmp    eax,esi
  4c2fb6:	0f 8e 99 00 00 00    	jle    0x4c3055
  4c2fbc:	8b 17                	mov    edx,DWORD PTR [edi]
  4c2fbe:	68 60 2e 4c 00       	push   0x4c2e60
  4c2fc3:	68 31 4e 00 00       	push   0x4e31
  4c2fc8:	8b cf                	mov    ecx,edi
  4c2fca:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4c2fcd:	53                   	push   ebx
  4c2fce:	8b cf                	mov    ecx,edi
  4c2fd0:	e8 5b 99 fc ff       	call   0x48c930
  4c2fd5:	b8 e8 03 00 00       	mov    eax,0x3e8
  4c2fda:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  4c2fdd:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4c2fe0:	8d 45 e8             	lea    eax,[ebp-0x18]
  4c2fe3:	50                   	push   eax
  4c2fe4:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4c2fe9:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  4c2fec:	e8 2f 61 f9 ff       	call   0x459120
  4c2ff1:	6a 20                	push   0x20
  4c2ff3:	8b d8                	mov    ebx,eax
  4c2ff5:	e8 f6 ef f7 ff       	call   0x441ff0
  4c2ffa:	8b f0                	mov    esi,eax
  4c2ffc:	83 c4 04             	add    esp,0x4
  4c2fff:	c6 06 05             	mov    BYTE PTR [esi],0x5
  4c3002:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  4c3009:	c7 46 08 60 2e 4c 00 	mov    DWORD PTR [esi+0x8],0x4c2e60
  4c3010:	c7 46 0c 00 00 00 00 	mov    DWORD PTR [esi+0xc],0x0
  4c3017:	e8 74 f2 fa ff       	call   0x472290
  4c301c:	8b c8                	mov    ecx,eax
  4c301e:	8d 14 1b             	lea    edx,[ebx+ebx*1]
  4c3021:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  4c3026:	f7 e2                	mul    edx
  4c3028:	c1 ea 05             	shr    edx,0x5
  4c302b:	03 ca                	add    ecx,edx
  4c302d:	89 4e 10             	mov    DWORD PTR [esi+0x10],ecx
  4c3030:	56                   	push   esi
  4c3031:	8b cf                	mov    ecx,edi
  4c3033:	89 5e 14             	mov    DWORD PTR [esi+0x14],ebx
  4c3036:	c7 46 18 01 00 00 00 	mov    DWORD PTR [esi+0x18],0x1
  4c303d:	c7 46 1c 00 00 00 00 	mov    DWORD PTR [esi+0x1c],0x0
  4c3044:	e8 c7 97 fc ff       	call   0x48c810
  4c3049:	5f                   	pop    edi
  4c304a:	5e                   	pop    esi
  4c304b:	b8 01 00 00 00       	mov    eax,0x1
  4c3050:	5b                   	pop    ebx
  4c3051:	8b e5                	mov    esp,ebp
  4c3053:	5d                   	pop    ebp
  4c3054:	c3                   	ret
  4c3055:	b8 02 00 00 00       	mov    eax,0x2
  4c305a:	5f                   	pop    edi
  4c305b:	5e                   	pop    esi
  4c305c:	5b                   	pop    ebx
  4c305d:	8b e5                	mov    esp,ebp
  4c305f:	5d                   	pop    ebp
  4c3060:	c3                   	ret
  4c3061:	90                   	nop
  4c3062:	90                   	nop
  4c3063:	90                   	nop
  4c3064:	90                   	nop
  4c3065:	90                   	nop
  4c3066:	90                   	nop
  4c3067:	90                   	nop
  4c3068:	90                   	nop
  4c3069:	90                   	nop
  4c306a:	90                   	nop
  4c306b:	90                   	nop
  4c306c:	90                   	nop
  4c306d:	90                   	nop
  4c306e:	90                   	nop
  4c306f:	90                   	nop
  4c3070:	56                   	push   esi
  4c3071:	8b f1                	mov    esi,ecx
  4c3073:	8d 46 44             	lea    eax,[esi+0x44]
  4c3076:	50                   	push   eax
  4c3077:	c7 46 3c 8c e5 4d 00 	mov    DWORD PTR [esi+0x3c],0x4de58c
  4c307e:	c7 46 40 ff ff ff ff 	mov    DWORD PTR [esi+0x40],0xffffffff
  4c3085:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  4c308b:	33 c0                	xor    eax,eax
  4c308d:	89 46 60             	mov    DWORD PTR [esi+0x60],eax
  4c3090:	89 46 64             	mov    DWORD PTR [esi+0x64],eax
  4c3093:	89 46 68             	mov    DWORD PTR [esi+0x68],eax
  4c3096:	89 46 6c             	mov    DWORD PTR [esi+0x6c],eax
  4c3099:	89 46 7c             	mov    DWORD PTR [esi+0x7c],eax
  4c309c:	89 46 74             	mov    DWORD PTR [esi+0x74],eax
  4c309f:	c7 46 3c 6c e8 4d 00 	mov    DWORD PTR [esi+0x3c],0x4de86c
  4c30a6:	c6 46 70 08          	mov    BYTE PTR [esi+0x70],0x8
  4c30aa:	c7 06 68 fd 4d 00    	mov    DWORD PTR [esi],0x4dfd68
  4c30b0:	8b c6                	mov    eax,esi
  4c30b2:	5e                   	pop    esi
  4c30b3:	c3                   	ret
  4c30b4:	90                   	nop
  4c30b5:	90                   	nop
  4c30b6:	90                   	nop
  4c30b7:	90                   	nop
  4c30b8:	90                   	nop
  4c30b9:	90                   	nop
  4c30ba:	90                   	nop
  4c30bb:	90                   	nop
  4c30bc:	90                   	nop
  4c30bd:	90                   	nop
  4c30be:	90                   	nop
  4c30bf:	90                   	nop
  4c30c0:	55                   	push   ebp
  4c30c1:	8b ec                	mov    ebp,esp
  4c30c3:	56                   	push   esi
  4c30c4:	8b f1                	mov    esi,ecx
  4c30c6:	e8 25 00 00 00       	call   0x4c30f0
  4c30cb:	f6 45 08 01          	test   BYTE PTR [ebp+0x8],0x1
  4c30cf:	74 09                	je     0x4c30da
  4c30d1:	56                   	push   esi
  4c30d2:	e8 89 ef f7 ff       	call   0x442060
  4c30d7:	83 c4 04             	add    esp,0x4
  4c30da:	8b c6                	mov    eax,esi
  4c30dc:	5e                   	pop    esi
  4c30dd:	5d                   	pop    ebp
  4c30de:	c2 04 00             	ret    0x4
  4c30e1:	90                   	nop
  4c30e2:	90                   	nop
  4c30e3:	90                   	nop
  4c30e4:	90                   	nop
  4c30e5:	90                   	nop
  4c30e6:	90                   	nop
  4c30e7:	90                   	nop
  4c30e8:	90                   	nop
  4c30e9:	90                   	nop
  4c30ea:	90                   	nop
  4c30eb:	90                   	nop
  4c30ec:	90                   	nop
  4c30ed:	90                   	nop
  4c30ee:	90                   	nop
  4c30ef:	90                   	nop
  4c30f0:	53                   	push   ebx
  4c30f1:	56                   	push   esi
  4c30f2:	8b f1                	mov    esi,ecx
  4c30f4:	c7 06 68 fd 4d 00    	mov    DWORD PTR [esi],0x4dfd68
  4c30fa:	8b 46 60             	mov    eax,DWORD PTR [esi+0x60]
  4c30fd:	57                   	push   edi
  4c30fe:	33 ff                	xor    edi,edi
  4c3100:	c7 46 3c 6c e8 4d 00 	mov    DWORD PTR [esi+0x3c],0x4de86c
  4c3107:	89 46 5c             	mov    DWORD PTR [esi+0x5c],eax
  4c310a:	89 7e 7c             	mov    DWORD PTR [esi+0x7c],edi
  4c310d:	c6 46 70 08          	mov    BYTE PTR [esi+0x70],0x8
  4c3111:	bb 01 00 00 00       	mov    ebx,0x1
  4c3116:	39 7e 7c             	cmp    DWORD PTR [esi+0x7c],edi
  4c3119:	74 0a                	je     0x4c3125
  4c311b:	8b 4e 5c             	mov    ecx,DWORD PTR [esi+0x5c]
  4c311e:	8b 11                	mov    edx,DWORD PTR [ecx]
  4c3120:	89 56 5c             	mov    DWORD PTR [esi+0x5c],edx
  4c3123:	eb 03                	jmp    0x4c3128
  4c3125:	89 5e 7c             	mov    DWORD PTR [esi+0x7c],ebx
  4c3128:	8b 46 5c             	mov    eax,DWORD PTR [esi+0x5c]
  4c312b:	3b c7                	cmp    eax,edi
  4c312d:	0f 84 ef 00 00 00    	je     0x4c3222
  4c3133:	8b 4e 64             	mov    ecx,DWORD PTR [esi+0x64]
  4c3136:	89 46 68             	mov    DWORD PTR [esi+0x68],eax
  4c3139:	ff 4e 74             	dec    DWORD PTR [esi+0x74]
  4c313c:	8b 46 5c             	mov    eax,DWORD PTR [esi+0x5c]
  4c313f:	3b c1                	cmp    eax,ecx
  4c3141:	74 5b                	je     0x4c319e
  4c3143:	3b 46 60             	cmp    eax,DWORD PTR [esi+0x60]
  4c3146:	74 52                	je     0x4c319a
  4c3148:	8b 08                	mov    ecx,DWORD PTR [eax]
  4c314a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4c314d:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4c3150:	8b 46 5c             	mov    eax,DWORD PTR [esi+0x5c]
  4c3153:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4c3156:	8b 10                	mov    edx,DWORD PTR [eax]
  4c3158:	89 11                	mov    DWORD PTR [ecx],edx
  4c315a:	8b 46 7c             	mov    eax,DWORD PTR [esi+0x7c]
  4c315d:	3b c3                	cmp    eax,ebx
  4c315f:	75 17                	jne    0x4c3178
  4c3161:	8b 46 5c             	mov    eax,DWORD PTR [esi+0x5c]
  4c3164:	8b 56 68             	mov    edx,DWORD PTR [esi+0x68]
  4c3167:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4c316a:	52                   	push   edx
  4c316b:	89 4e 5c             	mov    DWORD PTR [esi+0x5c],ecx
  4c316e:	e8 ed ee f7 ff       	call   0x442060
  4c3173:	83 c4 04             	add    esp,0x4
  4c3176:	eb 9e                	jmp    0x4c3116
  4c3178:	83 f8 02             	cmp    eax,0x2
  4c317b:	0f 85 90 00 00 00    	jne    0x4c3211
  4c3181:	8b 56 5c             	mov    edx,DWORD PTR [esi+0x5c]
  4c3184:	8b 02                	mov    eax,DWORD PTR [edx]
  4c3186:	8b 56 68             	mov    edx,DWORD PTR [esi+0x68]
  4c3189:	52                   	push   edx
  4c318a:	89 46 5c             	mov    DWORD PTR [esi+0x5c],eax
  4c318d:	e8 ce ee f7 ff       	call   0x442060
  4c3192:	83 c4 04             	add    esp,0x4
  4c3195:	e9 7c ff ff ff       	jmp    0x4c3116
  4c319a:	3b c1                	cmp    eax,ecx
  4c319c:	75 35                	jne    0x4c31d3
  4c319e:	3b 46 60             	cmp    eax,DWORD PTR [esi+0x60]
  4c31a1:	74 35                	je     0x4c31d8
  4c31a3:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4c31a6:	89 39                	mov    DWORD PTR [ecx],edi
  4c31a8:	8b 56 5c             	mov    edx,DWORD PTR [esi+0x5c]
  4c31ab:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  4c31ae:	89 46 64             	mov    DWORD PTR [esi+0x64],eax
  4c31b1:	83 7e 7c 02          	cmp    DWORD PTR [esi+0x7c],0x2
  4c31b5:	8b ca                	mov    ecx,edx
  4c31b7:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4c31ba:	89 56 5c             	mov    DWORD PTR [esi+0x5c],edx
  4c31bd:	75 52                	jne    0x4c3211
  4c31bf:	8b 56 68             	mov    edx,DWORD PTR [esi+0x68]
  4c31c2:	52                   	push   edx
  4c31c3:	89 7e 7c             	mov    DWORD PTR [esi+0x7c],edi
  4c31c6:	e8 95 ee f7 ff       	call   0x442060
  4c31cb:	83 c4 04             	add    esp,0x4
  4c31ce:	e9 43 ff ff ff       	jmp    0x4c3116
  4c31d3:	3b 46 60             	cmp    eax,DWORD PTR [esi+0x60]
  4c31d6:	75 2d                	jne    0x4c3205
  4c31d8:	3b c1                	cmp    eax,ecx
  4c31da:	74 29                	je     0x4c3205
  4c31dc:	8b 00                	mov    eax,DWORD PTR [eax]
  4c31de:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  4c31e1:	8b 4e 5c             	mov    ecx,DWORD PTR [esi+0x5c]
  4c31e4:	8b 01                	mov    eax,DWORD PTR [ecx]
  4c31e6:	89 46 5c             	mov    DWORD PTR [esi+0x5c],eax
  4c31e9:	89 46 60             	mov    DWORD PTR [esi+0x60],eax
  4c31ec:	39 5e 7c             	cmp    DWORD PTR [esi+0x7c],ebx
  4c31ef:	75 20                	jne    0x4c3211
  4c31f1:	8b 56 68             	mov    edx,DWORD PTR [esi+0x68]
  4c31f4:	52                   	push   edx
  4c31f5:	89 7e 7c             	mov    DWORD PTR [esi+0x7c],edi
  4c31f8:	e8 63 ee f7 ff       	call   0x442060
  4c31fd:	83 c4 04             	add    esp,0x4
  4c3200:	e9 11 ff ff ff       	jmp    0x4c3116
  4c3205:	89 7e 5c             	mov    DWORD PTR [esi+0x5c],edi
  4c3208:	89 7e 60             	mov    DWORD PTR [esi+0x60],edi
  4c320b:	89 7e 64             	mov    DWORD PTR [esi+0x64],edi
  4c320e:	89                   	.byte 0x89
  4c320f:	7e                   	.byte 0x7e


; callback dynamique famille A: 0x004C3B70..0x004C3EB1 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c3b70 <.text+0xc2b70>:
  4c3b70:	55                   	push   ebp
  4c3b71:	8b ec                	mov    ebp,esp
  4c3b73:	6a ff                	push   0xffffffff
  4c3b75:	68 a0 d5 4d 00       	push   0x4dd5a0
  4c3b7a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c3b80:	50                   	push   eax
  4c3b81:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c3b88:	83 ec 54             	sub    esp,0x54
  4c3b8b:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  4c3b8f:	66 3d 05 00          	cmp    ax,0x5
  4c3b93:	53                   	push   ebx
  4c3b94:	56                   	push   esi
  4c3b95:	57                   	push   edi
  4c3b96:	0f 85 fd 00 00 00    	jne    0x4c3c99
  4c3b9c:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c3b9f:	8b 07                	mov    eax,DWORD PTR [edi]
  4c3ba1:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c3ba4:	50                   	push   eax
  4c3ba5:	8b ce                	mov    ecx,esi
  4c3ba7:	e8 14 a2 fc ff       	call   0x48ddc0
  4c3bac:	85 c0                	test   eax,eax
  4c3bae:	74 68                	je     0x4c3c18
  4c3bb0:	66 8b 40 04          	mov    ax,WORD PTR [eax+0x4]
  4c3bb4:	66 3d 19 00          	cmp    ax,0x19
  4c3bb8:	74 0a                	je     0x4c3bc4
  4c3bba:	66 3d 1a 00          	cmp    ax,0x1a
  4c3bbe:	74 04                	je     0x4c3bc4
  4c3bc0:	32 db                	xor    bl,bl
  4c3bc2:	eb 02                	jmp    0x4c3bc6
  4c3bc4:	b3 01                	mov    bl,0x1
  4c3bc6:	8b 0f                	mov    ecx,DWORD PTR [edi]
  4c3bc8:	51                   	push   ecx
  4c3bc9:	8b ce                	mov    ecx,esi
  4c3bcb:	e8 20 9f fc ff       	call   0x48daf0
  4c3bd0:	84 db                	test   bl,bl
  4c3bd2:	74 44                	je     0x4c3c18
  4c3bd4:	8b ce                	mov    ecx,esi
  4c3bd6:	e8 95 7a fc ff       	call   0x48b670
  4c3bdb:	3c 01                	cmp    al,0x1
  4c3bdd:	75 39                	jne    0x4c3c18
  4c3bdf:	8d 4d dc             	lea    ecx,[ebp-0x24]
  4c3be2:	e8 09 22 fc ff       	call   0x485df0
  4c3be7:	6a 00                	push   0x0
  4c3be9:	8d 55 dc             	lea    edx,[ebp-0x24]
  4c3bec:	52                   	push   edx
  4c3bed:	8b ce                	mov    ecx,esi
  4c3bef:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c3bf6:	e8 a5 b9 f5 ff       	call   0x41f5a0
  4c3bfb:	8b 06                	mov    eax,DWORD PTR [esi]
  4c3bfd:	8d 4d dc             	lea    ecx,[ebp-0x24]
  4c3c00:	51                   	push   ecx
  4c3c01:	8b ce                	mov    ecx,esi
  4c3c03:	ff 90 4c 01 00 00    	call   DWORD PTR [eax+0x14c]
  4c3c09:	8d 4d dc             	lea    ecx,[ebp-0x24]
  4c3c0c:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c3c13:	e8 68 22 fc ff       	call   0x485e80
  4c3c18:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3c1b:	e8 d0 21 fc ff       	call   0x485df0
  4c3c20:	6a 45                	push   0x45
  4c3c22:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3c25:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  4c3c2c:	e8 1f 25 fc ff       	call   0x486150
  4c3c31:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3c33:	8d 45 b8             	lea    eax,[ebp-0x48]
  4c3c36:	50                   	push   eax
  4c3c37:	8b ce                	mov    ecx,esi
  4c3c39:	ff 92 ac 01 00 00    	call   DWORD PTR [edx+0x1ac]
  4c3c3f:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3c41:	6a 00                	push   0x0
  4c3c43:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3c46:	51                   	push   ecx
  4c3c47:	6a 14                	push   0x14
  4c3c49:	8d 45 e8             	lea    eax,[ebp-0x18]
  4c3c4c:	50                   	push   eax
  4c3c4d:	8b ce                	mov    ecx,esi
  4c3c4f:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4c3c52:	8b 10                	mov    edx,DWORD PTR [eax]
  4c3c54:	83 ec 0c             	sub    esp,0xc
  4c3c57:	8b cc                	mov    ecx,esp
  4c3c59:	89 11                	mov    DWORD PTR [ecx],edx
  4c3c5b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4c3c5e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4c3c61:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4c3c64:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4c3c67:	e8 84 be f4 ff       	call   0x40faf0
  4c3c6c:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c3c6f:	51                   	push   ecx
  4c3c70:	56                   	push   esi
  4c3c71:	e8 0a cd f9 ff       	call   0x460980
  4c3c76:	83 c4 20             	add    esp,0x20
  4c3c79:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3c7c:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c3c83:	e8 f8 21 fc ff       	call   0x485e80
  4c3c88:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3c8b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3c92:	5f                   	pop    edi
  4c3c93:	5e                   	pop    esi
  4c3c94:	5b                   	pop    ebx
  4c3c95:	8b e5                	mov    esp,ebp
  4c3c97:	5d                   	pop    ebp
  4c3c98:	c3                   	ret
  4c3c99:	66 3d 1b 00          	cmp    ax,0x1b
  4c3c9d:	0f 85 08 01 00 00    	jne    0x4c3dab
  4c3ca3:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c3ca6:	8b 17                	mov    edx,DWORD PTR [edi]
  4c3ca8:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c3cab:	52                   	push   edx
  4c3cac:	8b ce                	mov    ecx,esi
  4c3cae:	e8 0d a1 fc ff       	call   0x48ddc0
  4c3cb3:	85 c0                	test   eax,eax
  4c3cb5:	74 68                	je     0x4c3d1f
  4c3cb7:	66 8b 40 04          	mov    ax,WORD PTR [eax+0x4]
  4c3cbb:	66 3d 19 00          	cmp    ax,0x19
  4c3cbf:	74 0a                	je     0x4c3ccb
  4c3cc1:	66 3d 1a 00          	cmp    ax,0x1a
  4c3cc5:	74 04                	je     0x4c3ccb
  4c3cc7:	32 db                	xor    bl,bl
  4c3cc9:	eb 02                	jmp    0x4c3ccd
  4c3ccb:	b3 01                	mov    bl,0x1
  4c3ccd:	8b 07                	mov    eax,DWORD PTR [edi]
  4c3ccf:	50                   	push   eax
  4c3cd0:	8b ce                	mov    ecx,esi
  4c3cd2:	e8 19 9e fc ff       	call   0x48daf0
  4c3cd7:	84 db                	test   bl,bl
  4c3cd9:	74 44                	je     0x4c3d1f
  4c3cdb:	8b ce                	mov    ecx,esi
  4c3cdd:	e8 8e 79 fc ff       	call   0x48b670
  4c3ce2:	3c 01                	cmp    al,0x1
  4c3ce4:	75 39                	jne    0x4c3d1f
  4c3ce6:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3ce9:	e8 02 21 fc ff       	call   0x485df0
  4c3cee:	6a 00                	push   0x0
  4c3cf0:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3cf3:	51                   	push   ecx
  4c3cf4:	8b ce                	mov    ecx,esi
  4c3cf6:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  4c3cfd:	e8 9e b8 f5 ff       	call   0x41f5a0
  4c3d02:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3d04:	8d 45 b8             	lea    eax,[ebp-0x48]
  4c3d07:	50                   	push   eax
  4c3d08:	8b ce                	mov    ecx,esi
  4c3d0a:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  4c3d10:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3d13:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c3d1a:	e8 61 21 fc ff       	call   0x485e80
  4c3d1f:	8d 4d a0             	lea    ecx,[ebp-0x60]
  4c3d22:	e8 c9 20 fc ff       	call   0x485df0
  4c3d27:	6a 45                	push   0x45
  4c3d29:	8d 4d a0             	lea    ecx,[ebp-0x60]
  4c3d2c:	c7 45 fc 03 00 00 00 	mov    DWORD PTR [ebp-0x4],0x3
  4c3d33:	e8 18 24 fc ff       	call   0x486150
  4c3d38:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3d3a:	8d 45 a0             	lea    eax,[ebp-0x60]
  4c3d3d:	50                   	push   eax
  4c3d3e:	8b ce                	mov    ecx,esi
  4c3d40:	ff 92 ac 01 00 00    	call   DWORD PTR [edx+0x1ac]
  4c3d46:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3d48:	6a 00                	push   0x0
  4c3d4a:	8d 4d a0             	lea    ecx,[ebp-0x60]
  4c3d4d:	51                   	push   ecx
  4c3d4e:	6a 14                	push   0x14
  4c3d50:	8d 45 d0             	lea    eax,[ebp-0x30]
  4c3d53:	50                   	push   eax
  4c3d54:	8b ce                	mov    ecx,esi
  4c3d56:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4c3d59:	8b 10                	mov    edx,DWORD PTR [eax]
  4c3d5b:	83 ec 0c             	sub    esp,0xc
  4c3d5e:	8b cc                	mov    ecx,esp
  4c3d60:	89 11                	mov    DWORD PTR [ecx],edx
  4c3d62:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4c3d65:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4c3d68:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4c3d6b:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4c3d6e:	e8 7d bd f4 ff       	call   0x40faf0
  4c3d73:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c3d76:	51                   	push   ecx
  4c3d77:	56                   	push   esi
  4c3d78:	e8 03 cc f9 ff       	call   0x460980
  4c3d7d:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4c3d80:	83 c4 20             	add    esp,0x20
  4c3d83:	52                   	push   edx
  4c3d84:	8b ce                	mov    ecx,esi
  4c3d86:	e8 a5 8b fc ff       	call   0x48c930
  4c3d8b:	8d 4d a0             	lea    ecx,[ebp-0x60]
  4c3d8e:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c3d95:	e8 e6 20 fc ff       	call   0x485e80
  4c3d9a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3d9d:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3da4:	5f                   	pop    edi
  4c3da5:	5e                   	pop    esi
  4c3da6:	5b                   	pop    ebx
  4c3da7:	8b e5                	mov    esp,ebp
  4c3da9:	5d                   	pop    ebp
  4c3daa:	c3                   	ret
  4c3dab:	66 3d 17 00          	cmp    ax,0x17
  4c3daf:	75 31                	jne    0x4c3de2
  4c3db1:	8b 75 20             	mov    esi,DWORD PTR [ebp+0x20]
  4c3db4:	6a 08                	push   0x8
  4c3db6:	c6 06 08             	mov    BYTE PTR [esi],0x8
  4c3db9:	e8 42 a7 00 00       	call   0x4ce500
  4c3dbe:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  4c3dc1:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  4c3dc4:	8b 11                	mov    edx,DWORD PTR [ecx]
  4c3dc6:	89 10                	mov    DWORD PTR [eax],edx
  4c3dc8:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  4c3dcb:	83 c4 04             	add    esp,0x4
  4c3dce:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4c3dd1:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3dd4:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3ddb:	5f                   	pop    edi
  4c3ddc:	5e                   	pop    esi
  4c3ddd:	5b                   	pop    ebx
  4c3dde:	8b e5                	mov    esp,ebp
  4c3de0:	5d                   	pop    ebp
  4c3de1:	c3                   	ret
  4c3de2:	66 3d 18 00          	cmp    ax,0x18
  4c3de6:	0f 85 a2 00 00 00    	jne    0x4c3e8e
  4c3dec:	6a 08                	push   0x8
  4c3dee:	e8 fd e1 f7 ff       	call   0x441ff0
  4c3df3:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  4c3df6:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c3df9:	8b f0                	mov    esi,eax
  4c3dfb:	8a 01                	mov    al,BYTE PTR [ecx]
  4c3dfd:	83 c4 04             	add    esp,0x4
  4c3e00:	3c 08                	cmp    al,0x8
  4c3e02:	75 64                	jne    0x4c3e68
  4c3e04:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4c3e07:	8b 02                	mov    eax,DWORD PTR [edx]
  4c3e09:	89 06                	mov    DWORD PTR [esi],eax
  4c3e0b:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  4c3e0e:	33 d2                	xor    edx,edx
  4c3e10:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  4c3e13:	66 8b 56 04          	mov    dx,WORD PTR [esi+0x4]
  4c3e17:	52                   	push   edx
  4c3e18:	e8 13 e4 f9 ff       	call   0x462230
  4c3e1d:	83 c4 04             	add    esp,0x4
  4c3e20:	85 c0                	test   eax,eax
  4c3e22:	74 56                	je     0x4c3e7a
  4c3e24:	50                   	push   eax
  4c3e25:	8b 47 14             	mov    eax,DWORD PTR [edi+0x14]
  4c3e28:	50                   	push   eax
  4c3e29:	e8 62 e4 fa ff       	call   0x472290
  4c3e2e:	8d 04 80             	lea    eax,[eax+eax*4]
  4c3e31:	8d 0c 80             	lea    ecx,[eax+eax*4]
  4c3e34:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  4c3e37:	8d 04 80             	lea    eax,[eax+eax*4]
  4c3e3a:	8d 14 80             	lea    edx,[eax+eax*4]
  4c3e3d:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  4c3e40:	d1 e1                	shl    ecx,1
  4c3e42:	d1 e2                	shl    edx,1
  4c3e44:	2b d1                	sub    edx,ecx
  4c3e46:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  4c3e49:	52                   	push   edx
  4c3e4a:	50                   	push   eax
  4c3e4b:	51                   	push   ecx
  4c3e4c:	e8 cf c9 f9 ff       	call   0x460820
  4c3e51:	83 c4 14             	add    esp,0x14
  4c3e54:	89 77 0c             	mov    DWORD PTR [edi+0xc],esi
  4c3e57:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3e5a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3e61:	5f                   	pop    edi
  4c3e62:	5e                   	pop    esi
  4c3e63:	5b                   	pop    ebx
  4c3e64:	8b e5                	mov    esp,ebp
  4c3e66:	5d                   	pop    ebp
  4c3e67:	c3                   	ret
  4c3e68:	3c 04                	cmp    al,0x4
  4c3e6a:	75 0e                	jne    0x4c3e7a
  4c3e6c:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4c3e6f:	8b 02                	mov    eax,DWORD PTR [edx]
  4c3e71:	89 06                	mov    DWORD PTR [esi],eax
  4c3e73:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
  4c3e7a:	89 77 0c             	mov    DWORD PTR [edi+0xc],esi
  4c3e7d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3e80:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3e87:	5f                   	pop    edi
  4c3e88:	5e                   	pop    esi
  4c3e89:	5b                   	pop    ebx
  4c3e8a:	8b e5                	mov    esp,ebp
  4c3e8c:	5d                   	pop    ebp
  4c3e8d:	c3                   	ret
  4c3e8e:	66 3d 09 00          	cmp    ax,0x9
  4c3e92:	75 0c                	jne    0x4c3ea0
  4c3e94:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  4c3e97:	50                   	push   eax
  4c3e98:	e8 c3 e1 f7 ff       	call   0x442060
  4c3e9d:	83 c4 04             	add    esp,0x4
  4c3ea0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3ea3:	5f                   	pop    edi
  4c3ea4:	5e                   	pop    esi
  4c3ea5:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3eac:	5b                   	pop    ebx
  4c3ead:	8b e5                	mov    esp,ebp
  4c3eaf:	5d                   	pop    ebp
  4c3eb0:	c3                   	ret


; callback dynamique famille B: 0x004C43C0..0x004C4690 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c43c0 <.text+0xc33c0>:
  4c43c0:	55                   	push   ebp
  4c43c1:	8b ec                	mov    ebp,esp
  4c43c3:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  4c43c7:	66 3d 05 00          	cmp    ax,0x5
  4c43cb:	56                   	push   esi
  4c43cc:	57                   	push   edi
  4c43cd:	75 31                	jne    0x4c4400
  4c43cf:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c43d2:	8b 06                	mov    eax,DWORD PTR [esi]
  4c43d4:	68 55 4e 00 00       	push   0x4e55
  4c43d9:	8b ce                	mov    ecx,esi
  4c43db:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4c43de:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c43e1:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  4c43e4:	51                   	push   ecx
  4c43e5:	56                   	push   esi
  4c43e6:	e8 95 c5 f9 ff       	call   0x460980
  4c43eb:	8b 17                	mov    edx,DWORD PTR [edi]
  4c43ed:	52                   	push   edx
  4c43ee:	56                   	push   esi
  4c43ef:	68 53 4e 00 00       	push   0x4e53
  4c43f4:	e8 67 04 00 00       	call   0x4c4860
  4c43f9:	83 c4 14             	add    esp,0x14
  4c43fc:	5f                   	pop    edi
  4c43fd:	5e                   	pop    esi
  4c43fe:	5d                   	pop    ebp
  4c43ff:	c3                   	ret
  4c4400:	66 3d 1b 00          	cmp    ax,0x1b
  4c4404:	75 3c                	jne    0x4c4442
  4c4406:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c4409:	8b 06                	mov    eax,DWORD PTR [esi]
  4c440b:	68 55 4e 00 00       	push   0x4e55
  4c4410:	8b ce                	mov    ecx,esi
  4c4412:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4c4415:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4c4418:	51                   	push   ecx
  4c4419:	8b ce                	mov    ecx,esi
  4c441b:	e8 10 85 fc ff       	call   0x48c930
  4c4420:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c4423:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c4426:	52                   	push   edx
  4c4427:	56                   	push   esi
  4c4428:	e8 53 c5 f9 ff       	call   0x460980
  4c442d:	8b 07                	mov    eax,DWORD PTR [edi]
  4c442f:	50                   	push   eax
  4c4430:	56                   	push   esi
  4c4431:	68 53 4e 00 00       	push   0x4e53
  4c4436:	e8 25 04 00 00       	call   0x4c4860
  4c443b:	83 c4 14             	add    esp,0x14
  4c443e:	5f                   	pop    edi
  4c443f:	5e                   	pop    esi
  4c4440:	5d                   	pop    ebp
  4c4441:	c3                   	ret
  4c4442:	66 3d 17 00          	cmp    ax,0x17
  4c4446:	75 2a                	jne    0x4c4472
  4c4448:	8b 75 20             	mov    esi,DWORD PTR [ebp+0x20]
  4c444b:	6a 0c                	push   0xc
  4c444d:	c6 06 0c             	mov    BYTE PTR [esi],0xc
  4c4450:	e8 ab a0 00 00       	call   0x4ce500
  4c4455:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  4c4458:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  4c445b:	8b 11                	mov    edx,DWORD PTR [ecx]
  4c445d:	89 10                	mov    DWORD PTR [eax],edx
  4c445f:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4c4462:	83 c4 04             	add    esp,0x4
  4c4465:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  4c4468:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  4c446b:	5f                   	pop    edi
  4c446c:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c446f:	5e                   	pop    esi
  4c4470:	5d                   	pop    ebp
  4c4471:	c3                   	ret
  4c4472:	66 3d 18 00          	cmp    ax,0x18
  4c4476:	75 78                	jne    0x4c44f0
  4c4478:	6a 0c                	push   0xc
  4c447a:	e8 71 db f7 ff       	call   0x441ff0
  4c447f:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c4482:	8b f0                	mov    esi,eax
  4c4484:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  4c4487:	8a 08                	mov    cl,BYTE PTR [eax]
  4c4489:	83 c4 04             	add    esp,0x4
  4c448c:	80 f9 0c             	cmp    cl,0xc
  4c448f:	75 58                	jne    0x4c44e9
  4c4491:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4c4494:	8b 0a                	mov    ecx,DWORD PTR [edx]
  4c4496:	8b c6                	mov    eax,esi
  4c4498:	89 08                	mov    DWORD PTR [eax],ecx
  4c449a:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  4c449d:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4c44a0:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  4c44a3:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  4c44a6:	33 c0                	xor    eax,eax
  4c44a8:	66 8b 46 08          	mov    ax,WORD PTR [esi+0x8]
  4c44ac:	50                   	push   eax
  4c44ad:	e8 7e dd f9 ff       	call   0x462230
  4c44b2:	83 c4 04             	add    esp,0x4
  4c44b5:	85 c0                	test   eax,eax
  4c44b7:	74 30                	je     0x4c44e9
  4c44b9:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
  4c44bc:	50                   	push   eax
  4c44bd:	51                   	push   ecx
  4c44be:	e8 cd dd fa ff       	call   0x472290
  4c44c3:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  4c44c6:	8d 04 80             	lea    eax,[eax+eax*4]
  4c44c9:	8d 14 80             	lea    edx,[eax+eax*4]
  4c44cc:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  4c44cf:	8d 04 80             	lea    eax,[eax+eax*4]
  4c44d2:	8d 04 80             	lea    eax,[eax+eax*4]
  4c44d5:	d1 e2                	shl    edx,1
  4c44d7:	d1 e0                	shl    eax,1
  4c44d9:	2b c2                	sub    eax,edx
  4c44db:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c44de:	50                   	push   eax
  4c44df:	51                   	push   ecx
  4c44e0:	52                   	push   edx
  4c44e1:	e8 3a c3 f9 ff       	call   0x460820
  4c44e6:	83 c4 14             	add    esp,0x14
  4c44e9:	89 77 0c             	mov    DWORD PTR [edi+0xc],esi
  4c44ec:	5f                   	pop    edi
  4c44ed:	5e                   	pop    esi
  4c44ee:	5d                   	pop    ebp
  4c44ef:	c3                   	ret
  4c44f0:	66 3d 09 00          	cmp    ax,0x9
  4c44f4:	75 0c                	jne    0x4c4502
  4c44f6:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  4c44f9:	50                   	push   eax
  4c44fa:	e8 61 db f7 ff       	call   0x442060
  4c44ff:	83 c4 04             	add    esp,0x4
  4c4502:	5f                   	pop    edi
  4c4503:	5e                   	pop    esi
  4c4504:	5d                   	pop    ebp
  4c4505:	c3                   	ret
  4c4506:	90                   	nop
  4c4507:	90                   	nop
  4c4508:	90                   	nop
  4c4509:	90                   	nop
  4c450a:	90                   	nop
  4c450b:	90                   	nop
  4c450c:	90                   	nop
  4c450d:	90                   	nop
  4c450e:	90                   	nop
  4c450f:	90                   	nop
  4c4510:	55                   	push   ebp
  4c4511:	8b ec                	mov    ebp,esp
  4c4513:	83 ec 08             	sub    esp,0x8
  4c4516:	53                   	push   ebx
  4c4517:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  4c451a:	85 db                	test   ebx,ebx
  4c451c:	56                   	push   esi
  4c451d:	57                   	push   edi
  4c451e:	8b f9                	mov    edi,ecx
  4c4520:	0f 84 4c 01 00 00    	je     0x4c4672
  4c4526:	a0 a5 71 55 00       	mov    al,ds:0x5571a5
  4c452b:	a8 01                	test   al,0x1
  4c452d:	75 18                	jne    0x4c4547
  4c452f:	8a d0                	mov    dl,al
  4c4531:	80 ca 01             	or     dl,0x1
  4c4534:	68 80 46 4c 00       	push   0x4c4680
  4c4539:	88 15 a5 71 55 00    	mov    BYTE PTR ds:0x5571a5,dl
  4c453f:	e8 c7 d7 00 00       	call   0x4d1d0b
  4c4544:	83 c4 04             	add    esp,0x4
  4c4547:	6a 64                	push   0x64
  4c4549:	6a 01                	push   0x1
  4c454b:	b9 a4 71 55 00       	mov    ecx,0x5571a4
  4c4550:	e8 4b 4b f9 ff       	call   0x4590a0
  4c4555:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  4c4558:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c455b:	6a 00                	push   0x0
  4c455d:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4c4560:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  4c4563:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  4c4566:	50                   	push   eax
  4c4567:	51                   	push   ecx
  4c4568:	6a 00                	push   0x0
  4c456a:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  4c456d:	6a 00                	push   0x0
  4c456f:	6a 00                	push   0x0
  4c4571:	6a 00                	push   0x0
  4c4573:	53                   	push   ebx
  4c4574:	56                   	push   esi
  4c4575:	8d 4f 10             	lea    ecx,[edi+0x10]
  4c4578:	e8 d3 7d f4 ff       	call   0x40c350
  4c457d:	dc 5d f8             	fcomp  QWORD PTR [ebp-0x8]
  4c4580:	df e0                	fnstsw ax
  4c4582:	f6 c4 41             	test   ah,0x41
  4c4585:	0f 85 e7 00 00 00    	jne    0x4c4672
  4c458b:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c458e:	6a 00                	push   0x0
  4c4590:	6a 00                	push   0x0
  4c4592:	6a 00                	push   0x0
  4c4594:	6a 00                	push   0x0
  4c4596:	6a 00                	push   0x0
  4c4598:	6a 00                	push   0x0
  4c459a:	6a 00                	push   0x0
  4c459c:	53                   	push   ebx
  4c459d:	56                   	push   esi
  4c459e:	83 c1 78             	add    ecx,0x78
  4c45a1:	e8 aa 7d f4 ff       	call   0x40c350
  4c45a6:	e8 cf d7 00 00       	call   0x4d1d7a
  4c45ab:	8b f0                	mov    esi,eax
  4c45ad:	85 f6                	test   esi,esi
  4c45af:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
  4c45b2:	0f 84 ba 00 00 00    	je     0x4c4672
  4c45b8:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c45bb:	52                   	push   edx
  4c45bc:	8b cb                	mov    ecx,ebx
  4c45be:	e8 6d 83 fc ff       	call   0x48c930
  4c45c3:	8b 03                	mov    eax,DWORD PTR [ebx]
  4c45c5:	6a 01                	push   0x1
  4c45c7:	68 55 4e 00 00       	push   0x4e55
  4c45cc:	8b cb                	mov    ecx,ebx
  4c45ce:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4c45d1:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  4c45d4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c45d7:	51                   	push   ecx
  4c45d8:	52                   	push   edx
  4c45d9:	68 53 4e 00 00       	push   0x4e53
  4c45de:	e8 8d 04 00 00       	call   0x4c4a70
  4c45e3:	6a 0c                	push   0xc
  4c45e5:	e8 06 da f7 ff       	call   0x441ff0
  4c45ea:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  4c45ed:	89 08                	mov    DWORD PTR [eax],ecx
  4c45ef:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  4c45f2:	33 c9                	xor    ecx,ecx
  4c45f4:	66 8b 0a             	mov    cx,WORD PTR [edx]
  4c45f7:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c45fa:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c45fd:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c4600:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  4c4603:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  4c4606:	33 c9                	xor    ecx,ecx
  4c4608:	66 8b 08             	mov    cx,WORD PTR [eax]
  4c460b:	50                   	push   eax
  4c460c:	56                   	push   esi
  4c460d:	56                   	push   esi
  4c460e:	51                   	push   ecx
  4c460f:	53                   	push   ebx
  4c4610:	e8 0b c2 f9 ff       	call   0x460820
  4c4615:	6a 20                	push   0x20
  4c4617:	e8 d4 d9 f7 ff       	call   0x441ff0
  4c461c:	8b f0                	mov    esi,eax
  4c461e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c4621:	c6 06 05             	mov    BYTE PTR [esi],0x5
  4c4624:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c4627:	83 c4 28             	add    esp,0x28
  4c462a:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  4c462d:	c7 46 08 c0 43 4c 00 	mov    DWORD PTR [esi+0x8],0x4c43c0
  4c4634:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  4c4637:	e8 54 dc fa ff       	call   0x472290
  4c463c:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c463f:	8b c8                	mov    ecx,eax
  4c4641:	03 d2                	add    edx,edx
  4c4643:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  4c4648:	f7 e2                	mul    edx
  4c464a:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c464d:	c1 ea 05             	shr    edx,0x5
  4c4650:	03 ca                	add    ecx,edx
  4c4652:	89 4e 10             	mov    DWORD PTR [esi+0x10],ecx
  4c4655:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  4c4658:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c465b:	33 d2                	xor    edx,edx
  4c465d:	66 8b 11             	mov    dx,WORD PTR [ecx]
  4c4660:	56                   	push   esi
  4c4661:	8b cb                	mov    ecx,ebx
  4c4663:	c7 46 1c 55 4e 00 00 	mov    DWORD PTR [esi+0x1c],0x4e55
  4c466a:	89 56 18             	mov    DWORD PTR [esi+0x18],edx
  4c466d:	e8 9e 81 fc ff       	call   0x48c810
  4c4672:	5f                   	pop    edi
  4c4673:	5e                   	pop    esi
  4c4674:	5b                   	pop    ebx
  4c4675:	8b e5                	mov    esp,ebp
  4c4677:	5d                   	pop    ebp
  4c4678:	c2 20 00             	ret    0x20
  4c467b:	90                   	nop
  4c467c:	90                   	nop
  4c467d:	90                   	nop
  4c467e:	90                   	nop
  4c467f:	90                   	nop
  4c4680:	c3                   	ret
  4c4681:	90                   	nop
  4c4682:	90                   	nop
  4c4683:	90                   	nop
  4c4684:	90                   	nop
  4c4685:	90                   	nop
  4c4686:	90                   	nop
  4c4687:	90                   	nop
  4c4688:	90                   	nop
  4c4689:	90                   	nop
  4c468a:	90                   	nop
  4c468b:	90                   	nop
  4c468c:	90                   	nop
  4c468d:	90                   	nop
  4c468e:	90                   	nop
  4c468f:	90                   	nop

