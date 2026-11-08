== Broadcast::BCObjectChanged (S2C 12) @ 0x40fb60..0x40fbaf ==

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0040fb60 <.text+0xeb60>:
  40fb60:	55                   	push   ebp
  40fb61:	8b ec                	mov    ebp,esp
  40fb63:	6a ff                	push   0xffffffff
  40fb65:	68 18 37 4d 00       	push   0x4d3718
  40fb6a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  40fb70:	50                   	push   eax
  40fb71:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  40fb78:	83 ec 18             	sub    esp,0x18
  40fb7b:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40fb7e:	e8 6d 62 07 00       	call   0x485df0
  40fb83:	6a 0c                	push   0xc
  40fb85:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40fb88:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  40fb8f:	e8 bc 65 07 00       	call   0x486150
  40fb94:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  40fb97:	50                   	push   eax
  40fb98:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40fb9b:	e8 b0 65 07 00       	call   0x486150
  40fba0:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  40fba3:	51                   	push   ecx
  40fba4:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40fba7:	e8 44 66 07 00       	call   0x4861f0
  40fbac:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]


== Broadcast::BCObjectRemoved (S2C 11) @ 0x40fc00..0x40fc91 ==

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0040fc00 <.text+0xec00>:
  40fc00:	55                   	push   ebp
  40fc01:	8b ec                	mov    ebp,esp
  40fc03:	6a ff                	push   0xffffffff
  40fc05:	68 38 37 4d 00       	push   0x4d3738
  40fc0a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  40fc10:	50                   	push   eax
  40fc11:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  40fc18:	83 ec 18             	sub    esp,0x18
  40fc1b:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40fc1e:	e8 cd 61 07 00       	call   0x485df0
  40fc23:	6a 0b                	push   0xb
  40fc25:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40fc28:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  40fc2f:	e8 1c 65 07 00       	call   0x486150
  40fc34:	6a 00                	push   0x0
  40fc36:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40fc39:	e8 72 65 07 00       	call   0x4861b0
  40fc3e:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  40fc41:	50                   	push   eax
  40fc42:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40fc45:	e8 a6 65 07 00       	call   0x4861f0
  40fc4a:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  40fc4d:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  40fc50:	51                   	push   ecx
  40fc51:	8d 55 dc             	lea    edx,[ebp-0x24]
  40fc54:	52                   	push   edx
  40fc55:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40fc58:	50                   	push   eax
  40fc59:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40fc5c:	83 ec 0c             	sub    esp,0xc
  40fc5f:	8b cc                	mov    ecx,esp
  40fc61:	89 11                	mov    DWORD PTR [ecx],edx
  40fc63:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  40fc66:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  40fc69:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  40fc6c:	e8 7f fe ff ff       	call   0x40faf0
  40fc71:	83 c4 18             	add    esp,0x18
  40fc74:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40fc77:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  40fc7e:	e8 fd 61 07 00       	call   0x485e80
  40fc83:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40fc86:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40fc8d:	8b e5                	mov    esp,ebp
  40fc8f:	5d                   	pop    ebp
  40fc90:	c3                   	ret


== Broadcast::BCast @ 0x40faf0..0x40fb57 ==

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0040faf0 <.text+0xeaf0>:
  40faf0:	55                   	push   ebp
  40faf1:	8b ec                	mov    ebp,esp
  40faf3:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  40faf6:	84 c0                	test   al,al
  40faf8:	75 05                	jne    0x40faff
  40fafa:	83 c8 ff             	or     eax,0xffffffff
  40fafd:	eb 05                	jmp    0x40fb04
  40faff:	25 ff 00 00 00       	and    eax,0xff
  40fb04:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  40fb07:	6a 01                	push   0x1
  40fb09:	51                   	push   ecx
  40fb0a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  40fb0d:	6a 01                	push   0x1
  40fb0f:	83 ec 0c             	sub    esp,0xc
  40fb12:	8b d4                	mov    edx,esp
  40fb14:	89 0a                	mov    DWORD PTR [edx],ecx
  40fb16:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40fb19:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  40fb1c:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40fb1f:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  40fb22:	8b 0d 44 14 51 00    	mov    ecx,DWORD PTR ds:0x511444
  40fb28:	50                   	push   eax
  40fb29:	a1 40 14 51 00       	mov    eax,ds:0x511440
  40fb2e:	83 ec 10             	sub    esp,0x10
  40fb31:	8b d4                	mov    edx,esp
  40fb33:	89 02                	mov    DWORD PTR [edx],eax
  40fb35:	a1 48 14 51 00       	mov    eax,ds:0x511448
  40fb3a:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  40fb3d:	8b 0d 4c 14 51 00    	mov    ecx,DWORD PTR ds:0x51144c
  40fb43:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  40fb46:	89 4a 0c             	mov    DWORD PTR [edx+0xc],ecx
  40fb49:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  40fb4c:	52                   	push   edx
  40fb4d:	e8 2e 18 04 00       	call   0x451380
  40fb52:	83 c4 30             	add    esp,0x30
  40fb55:	5d                   	pop    ebp
  40fb56:	c3                   	ret


== WorldMap::remove_world_unit @ 0x4b1090..0x4b1293 ==

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004b1090 <.text+0xb0090>:
  4b1090:	55                   	push   ebp
  4b1091:	8b ec                	mov    ebp,esp
  4b1093:	83 ec 18             	sub    esp,0x18
  4b1096:	53                   	push   ebx
  4b1097:	56                   	push   esi
  4b1098:	8b f1                	mov    esi,ecx
  4b109a:	8b 06                	mov    eax,DWORD PTR [esi]
  4b109c:	57                   	push   edi
  4b109d:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4b10a0:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  4b10a3:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  4b10a6:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  4b10a9:	8b c7                	mov    eax,edi
  4b10ab:	c1 f8 02             	sar    eax,0x2
  4b10ae:	c1 e0 02             	shl    eax,0x2
  4b10b1:	8b cb                	mov    ecx,ebx
  4b10b3:	c1 f9 02             	sar    ecx,0x2
  4b10b6:	c1 e1 02             	shl    ecx,0x2
  4b10b9:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  4b10bc:	8b 04 02             	mov    eax,DWORD PTR [edx+eax*1]
  4b10bf:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  4b10c2:	89 4d f4             	mov    DWORD PTR [ebp-0xc],ecx
  4b10c5:	8b 0c 08             	mov    ecx,DWORD PTR [eax+ecx*1]
  4b10c8:	85 c9                	test   ecx,ecx
  4b10ca:	52                   	push   edx
  4b10cb:	0f 84 49 01 00 00    	je     0x4b121a
  4b10d1:	53                   	push   ebx
  4b10d2:	57                   	push   edi
  4b10d3:	e8 d8 f9 f5 ff       	call   0x410ab0
  4b10d8:	85 c0                	test   eax,eax
  4b10da:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  4b10dd:	74 56                	je     0x4b1135
  4b10df:	8b c8                	mov    ecx,eax
  4b10e1:	e8 aa e3 fd ff       	call   0x48f490
  4b10e6:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  4b10e9:	88 45 14             	mov    BYTE PTR [ebp+0x14],al
  4b10ec:	e8 7f a5 fd ff       	call   0x48b670
  4b10f1:	3c 03                	cmp    al,0x3
  4b10f3:	74 20                	je     0x4b1115
  4b10f5:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  4b10f8:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4b10fb:	50                   	push   eax
  4b10fc:	83 ec 0c             	sub    esp,0xc
  4b10ff:	8b cc                	mov    ecx,esp
  4b1101:	89 39                	mov    DWORD PTR [ecx],edi
  4b1103:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  4b1106:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  4b1109:	8b ce                	mov    ecx,esi
  4b110b:	e8 40 e2 ff ff       	call   0x4af350
  4b1110:	e9 b9 00 00 00       	jmp    0x4b11ce
  4b1115:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  4b1118:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4b111b:	50                   	push   eax
  4b111c:	83 ec 0c             	sub    esp,0xc
  4b111f:	8b cc                	mov    ecx,esp
  4b1121:	89 39                	mov    DWORD PTR [ecx],edi
  4b1123:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  4b1126:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  4b1129:	8b ce                	mov    ecx,esi
  4b112b:	e8 30 e4 ff ff       	call   0x4af560
  4b1130:	e9 99 00 00 00       	jmp    0x4b11ce
  4b1135:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  4b1138:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4b113b:	50                   	push   eax
  4b113c:	83 ec 0c             	sub    esp,0xc
  4b113f:	8b cc                	mov    ecx,esp
  4b1141:	89 39                	mov    DWORD PTR [ecx],edi
  4b1143:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  4b1146:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  4b1149:	8b ce                	mov    ecx,esi
  4b114b:	e8 60 0c 00 00       	call   0x4b1db0
  4b1150:	85 c0                	test   eax,eax
  4b1152:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4b1155:	74 5e                	je     0x4b11b5
  4b1157:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  4b115a:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  4b115d:	50                   	push   eax
  4b115e:	53                   	push   ebx
  4b115f:	57                   	push   edi
  4b1160:	51                   	push   ecx
  4b1161:	68 7c fb 50 00       	push   0x50fb7c
  4b1166:	68 00 04 00 00       	push   0x400
  4b116b:	e8 d0 0b fc ff       	call   0x471d40
  4b1170:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  4b1173:	83 c4 18             	add    esp,0x18
  4b1176:	8b cf                	mov    ecx,edi
  4b1178:	e8 83 a5 fd ff       	call   0x48b700
  4b117d:	8b 17                	mov    edx,DWORD PTR [edi]
  4b117f:	50                   	push   eax
  4b1180:	8d 45 08             	lea    eax,[ebp+0x8]
  4b1183:	50                   	push   eax
  4b1184:	8b cf                	mov    ecx,edi
  4b1186:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4b1189:	8b 10                	mov    edx,DWORD PTR [eax]
  4b118b:	83 ec 0c             	sub    esp,0xc
  4b118e:	8b cc                	mov    ecx,esp
  4b1190:	89 11                	mov    DWORD PTR [ecx],edx
  4b1192:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4b1195:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4b1198:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4b119b:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4b119e:	8b ce                	mov    ecx,esi
  4b11a0:	e8 eb fe ff ff       	call   0x4b1090
  4b11a5:	8b 06                	mov    eax,DWORD PTR [esi]
  4b11a7:	8b ce                	mov    ecx,esi
  4b11a9:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4b11ac:	5f                   	pop    edi
  4b11ad:	5e                   	pop    esi
  4b11ae:	5b                   	pop    ebx
  4b11af:	8b e5                	mov    esp,ebp
  4b11b1:	5d                   	pop    ebp
  4b11b2:	c2 10 00             	ret    0x10
  4b11b5:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  4b11b8:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  4b11bb:	51                   	push   ecx
  4b11bc:	53                   	push   ebx
  4b11bd:	57                   	push   edi
  4b11be:	52                   	push   edx
  4b11bf:	68 48 fb 50 00       	push   0x50fb48
  4b11c4:	6a 04                	push   0x4
  4b11c6:	e8 75 0b fc ff       	call   0x471d40
  4b11cb:	83 c4 18             	add    esp,0x18
  4b11ce:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  4b11d1:	8b 7d f8             	mov    edi,DWORD PTR [ebp-0x8]
  4b11d4:	8b 0c 38             	mov    ecx,DWORD PTR [eax+edi*1]
  4b11d7:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
  4b11da:	8b 0c 19             	mov    ecx,DWORD PTR [ecx+ebx*1]
  4b11dd:	e8 1e fb f5 ff       	call   0x410d00
  4b11e2:	84 c0                	test   al,al
  4b11e4:	0f 84 99 00 00 00    	je     0x4b1283
  4b11ea:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  4b11ed:	8b 04 3a             	mov    eax,DWORD PTR [edx+edi*1]
  4b11f0:	8b 0c 18             	mov    ecx,DWORD PTR [eax+ebx*1]
  4b11f3:	85 c9                	test   ecx,ecx
  4b11f5:	74 06                	je     0x4b11fd
  4b11f7:	8b 11                	mov    edx,DWORD PTR [ecx]
  4b11f9:	6a 01                	push   0x1
  4b11fb:	ff 12                	call   DWORD PTR [edx]
  4b11fd:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  4b1200:	8b 0c 38             	mov    ecx,DWORD PTR [eax+edi*1]
  4b1203:	c7 04 19 00 00 00 00 	mov    DWORD PTR [ecx+ebx*1],0x0
  4b120a:	8b 06                	mov    eax,DWORD PTR [esi]
  4b120c:	8b ce                	mov    ecx,esi
  4b120e:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4b1211:	5f                   	pop    edi
  4b1212:	5e                   	pop    esi
  4b1213:	5b                   	pop    ebx
  4b1214:	8b e5                	mov    esp,ebp
  4b1216:	5d                   	pop    ebp
  4b1217:	c2 10 00             	ret    0x10
  4b121a:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  4b121d:	50                   	push   eax
  4b121e:	53                   	push   ebx
  4b121f:	57                   	push   edi
  4b1220:	68 00 fb 50 00       	push   0x50fb00
  4b1225:	68 00 04 00 00       	push   0x400
  4b122a:	e8 11 0b fc ff       	call   0x471d40
  4b122f:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  4b1232:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4b1235:	83 c4 18             	add    esp,0x18
  4b1238:	51                   	push   ecx
  4b1239:	83 ec 0c             	sub    esp,0xc
  4b123c:	8b d4                	mov    edx,esp
  4b123e:	89 3a                	mov    DWORD PTR [edx],edi
  4b1240:	89 5a 04             	mov    DWORD PTR [edx+0x4],ebx
  4b1243:	8b ce                	mov    ecx,esi
  4b1245:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  4b1248:	e8 63 0b 00 00       	call   0x4b1db0
  4b124d:	85 c0                	test   eax,eax
  4b124f:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4b1252:	74 16                	je     0x4b126a
  4b1254:	8b c8                	mov    ecx,eax
  4b1256:	e8 a5 a4 fd ff       	call   0x48b700
  4b125b:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  4b125e:	8b 11                	mov    edx,DWORD PTR [ecx]
  4b1260:	50                   	push   eax
  4b1261:	8d 45 e8             	lea    eax,[ebp-0x18]
  4b1264:	50                   	push   eax
  4b1265:	e9 1c ff ff ff       	jmp    0x4b1186
  4b126a:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  4b126d:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  4b1270:	51                   	push   ecx
  4b1271:	53                   	push   ebx
  4b1272:	57                   	push   edi
  4b1273:	52                   	push   edx
  4b1274:	68 48 fb 50 00       	push   0x50fb48
  4b1279:	6a 04                	push   0x4
  4b127b:	e8 c0 0a fc ff       	call   0x471d40
  4b1280:	83 c4 18             	add    esp,0x18
  4b1283:	8b 06                	mov    eax,DWORD PTR [esi]
  4b1285:	8b ce                	mov    ecx,esi
  4b1287:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4b128a:	5f                   	pop    edi
  4b128b:	5e                   	pop    esi
  4b128c:	5b                   	pop    ebx
  4b128d:	8b e5                	mov    esp,ebp
  4b128f:	5d                   	pop    ebp
  4b1290:	c2 10 00             	ret    0x10


== WorldMap::move_world_unit (slice) @ 0x4b12a0..0x4b14bc ==

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004b12a0 <.text+0xb02a0>:
  4b12a0:	55                   	push   ebp
  4b12a1:	8b ec                	mov    ebp,esp
  4b12a3:	6a ff                	push   0xffffffff
  4b12a5:	68 c0 c7 4d 00       	push   0x4dc7c0
  4b12aa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4b12b0:	50                   	push   eax
  4b12b1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4b12b8:	83 ec 24             	sub    esp,0x24
  4b12bb:	53                   	push   ebx
  4b12bc:	56                   	push   esi
  4b12bd:	8b f1                	mov    esi,ecx
  4b12bf:	57                   	push   edi
  4b12c0:	8d 4d e8             	lea    ecx,[ebp-0x18]
  4b12c3:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
  4b12ca:	e8 8f 07 02 00       	call   0x4d1a5e
  4b12cf:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
  4b12d2:	33 c0                	xor    eax,eax
  4b12d4:	66 8b 46 2c          	mov    ax,WORD PTR [esi+0x2c]
  4b12d8:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4b12df:	3b d8                	cmp    ebx,eax
  4b12e1:	0f 8d 01 02 00 00    	jge    0x4b14e8
  4b12e7:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  4b12ea:	33 c9                	xor    ecx,ecx
  4b12ec:	66 8b 4e 2e          	mov    cx,WORD PTR [esi+0x2e]
  4b12f0:	3b c1                	cmp    eax,ecx
  4b12f2:	0f 8d f0 01 00 00    	jge    0x4b14e8
  4b12f8:	85 db                	test   ebx,ebx
  4b12fa:	0f 8c e8 01 00 00    	jl     0x4b14e8
  4b1300:	85 c0                	test   eax,eax
  4b1302:	0f 8c e0 01 00 00    	jl     0x4b14e8
  4b1308:	8b 16                	mov    edx,DWORD PTR [esi]
  4b130a:	8b ce                	mov    ecx,esi
  4b130c:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4b130f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4b1312:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  4b1315:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  4b1318:	8b c8                	mov    ecx,eax
  4b131a:	c1 f9 02             	sar    ecx,0x2
  4b131d:	8b 0c 8a             	mov    ecx,DWORD PTR [edx+ecx*4]
  4b1320:	c1 ff 02             	sar    edi,0x2
  4b1323:	8b 0c b9             	mov    ecx,DWORD PTR [ecx+edi*4]
  4b1326:	85 c9                	test   ecx,ecx
  4b1328:	0f 84 b3 01 00 00    	je     0x4b14e1
  4b132e:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  4b1331:	52                   	push   edx
  4b1332:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4b1335:	52                   	push   edx
  4b1336:	50                   	push   eax
  4b1337:	e8 d4 f6 f5 ff       	call   0x410a10
  4b133c:	8b f8                	mov    edi,eax
  4b133e:	85 ff                	test   edi,edi
  4b1340:	0f 84 9b 01 00 00    	je     0x4b14e1
  4b1346:	33 c9                	xor    ecx,ecx
  4b1348:	66 8b 4e 2c          	mov    cx,WORD PTR [esi+0x2c]
  4b134c:	3b d9                	cmp    ebx,ecx
  4b134e:	7d 7b                	jge    0x4b13cb
  4b1350:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  4b1353:	33 d2                	xor    edx,edx
  4b1355:	66 8b 56 2e          	mov    dx,WORD PTR [esi+0x2e]
  4b1359:	3b c2                	cmp    eax,edx
  4b135b:	7d 6e                	jge    0x4b13cb
  4b135d:	d1 e9                	shr    ecx,1
  4b135f:	0f af c8             	imul   ecx,eax
  4b1362:	8b c3                	mov    eax,ebx
  4b1364:	99                   	cdq
  4b1365:	2b c2                	sub    eax,edx
  4b1367:	d1 f8                	sar    eax,1
  4b1369:	03 c8                	add    ecx,eax
  4b136b:	8b c3                	mov    eax,ebx
  4b136d:	25 01 00 00 80       	and    eax,0x80000001
  4b1372:	79 05                	jns    0x4b1379
  4b1374:	48                   	dec    eax
  4b1375:	83 c8 fe             	or     eax,0xfffffffe
  4b1378:	40                   	inc    eax
  4b1379:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
  4b137c:	8a 04 0a             	mov    al,BYTE PTR [edx+ecx*1]
  4b137f:	75 05                	jne    0x4b1386
  4b1381:	c0 e8 04             	shr    al,0x4
  4b1384:	eb 02                	jmp    0x4b1388
  4b1386:	24 0f                	and    al,0xf
  4b1388:	88 45 ec             	mov    BYTE PTR [ebp-0x14],al
  4b138b:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4b138e:	25 ff 00 00 00       	and    eax,0xff
  4b1393:	83 f8 09             	cmp    eax,0x9
  4b1396:	77 43                	ja     0x4b13db
  4b1398:	33 c9                	xor    ecx,ecx
  4b139a:	8a 88 1c 15 4b 00    	mov    cl,BYTE PTR [eax+0x4b151c]
  4b13a0:	ff 24 8d 0c 15 4b 00 	jmp    DWORD PTR [ecx*4+0x4b150c]
  4b13a7:	8b 17                	mov    edx,DWORD PTR [edi]
  4b13a9:	6a 00                	push   0x0
  4b13ab:	68 3b 4e 00 00       	push   0x4e3b
  4b13b0:	8b cf                	mov    ecx,edi
  4b13b2:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  4b13b5:	85 c0                	test   eax,eax
  4b13b7:	75 22                	jne    0x4b13db
  4b13b9:	8b 07                	mov    eax,DWORD PTR [edi]
  4b13bb:	6a 00                	push   0x0
  4b13bd:	68 3c 4e 00 00       	push   0x4e3c
  4b13c2:	8b cf                	mov    ecx,edi
  4b13c4:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  4b13c7:	85 c0                	test   eax,eax
  4b13c9:	75 10                	jne    0x4b13db
  4b13cb:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  4b13ce:	85 c0                	test   eax,eax
  4b13d0:	75 09                	jne    0x4b13db
  4b13d2:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  4b13d9:	eb 48                	jmp    0x4b1423
  4b13db:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4b13de:	3b d8                	cmp    ebx,eax
  4b13e0:	75 08                	jne    0x4b13ea
  4b13e2:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4b13e5:	3b 4d 0c             	cmp    ecx,DWORD PTR [ebp+0xc]
  4b13e8:	74 39                	je     0x4b1423
  4b13ea:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  4b13ed:	52                   	push   edx
  4b13ee:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4b13f1:	83 ec 0c             	sub    esp,0xc
  4b13f4:	8b cc                	mov    ecx,esp
  4b13f6:	89 01                	mov    DWORD PTR [ecx],eax
  4b13f8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4b13fb:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4b13fe:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4b1401:	8b ce                	mov    ecx,esi
  4b1403:	e8 88 fc ff ff       	call   0x4b1090
  4b1408:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  4b140b:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  4b140e:	57                   	push   edi
  4b140f:	83 ec 0c             	sub    esp,0xc
  4b1412:	8b cc                	mov    ecx,esp
  4b1414:	89 19                	mov    DWORD PTR [ecx],ebx
  4b1416:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4b1419:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4b141c:	8b ce                	mov    ecx,esi
  4b141e:	e8 ed dc ff ff       	call   0x4af110
  4b1423:	8b 16                	mov    edx,DWORD PTR [esi]
  4b1425:	8b ce                	mov    ecx,esi
  4b1427:	ff 52 08             	call   DWORD PTR [edx+0x8]
  4b142a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  4b142d:	85 c0                	test   eax,eax
  4b142f:	74 0d                	je     0x4b143e
  4b1431:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  4b1434:	8b f3                	mov    esi,ebx
  4b1436:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
  4b1439:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4b143c:	eb 0c                	jmp    0x4b144a
  4b143e:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  4b1441:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4b1444:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  4b1447:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  4b144a:	8a 45 2c             	mov    al,BYTE PTR [ebp+0x2c]
  4b144d:	84 c0                	test   al,al
  4b144f:	74 6b                	je     0x4b14bc
  4b1451:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4b1454:	e8 97 49 fd ff       	call   0x485df0
  4b1459:	6a 01                	push   0x1
  4b145b:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4b145e:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4b1462:	e8 e9 4c fd ff       	call   0x486150
  4b1467:	56                   	push   esi
  4b1468:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4b146b:	e8 e0 4c fd ff       	call   0x486150
  4b1470:	53                   	push   ebx
  4b1471:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4b1474:	e8 d7 4c fd ff       	call   0x486150
  4b1479:	8b 17                	mov    edx,DWORD PTR [edi]
  4b147b:	8d 45 d0             	lea    eax,[ebp-0x30]
  4b147e:	50                   	push   eax
  4b147f:	8b cf                	mov    ecx,edi
  4b1481:	ff 92 ac 01 00 00    	call   DWORD PTR [edx+0x1ac]
  4b1487:	8b 17                	mov    edx,DWORD PTR [edi]
  4b1489:	8b cf                	mov    ecx,edi
  4b148b:	ff 92 d0 01 00 00    	call   DWORD PTR [edx+0x1d0]
  4b1491:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4b1494:	50                   	push   eax
  4b1495:	8d 45 d0             	lea    eax,[ebp-0x30]
  4b1498:	50                   	push   eax
  4b1499:	6a 16                	push   0x16
  4b149b:	83 ec 0c             	sub    esp,0xc
  4b149e:	8b cc                	mov    ecx,esp
  4b14a0:	89 31                	mov    DWORD PTR [ecx],esi
  4b14a2:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  4b14a5:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  4b14a8:	e8 43 e6 f5 ff       	call   0x40faf0
  4b14ad:	83 c4 18             	add    esp,0x18
  4b14b0:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4b14b3:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  4b14b7:	e8 c4 49 fd ff       	call   0x485e80


== WorldMap::SetBlocking @ 0x4af350..0x4af3d2 ==

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004af350 <.text+0xae350>:
  4af350:	55                   	push   ebp
  4af351:	8b ec                	mov    ebp,esp
  4af353:	56                   	push   esi
  4af354:	33 f6                	xor    esi,esi
  4af356:	66 8b 71 2c          	mov    si,WORD PTR [ecx+0x2c]
  4af35a:	57                   	push   edi
  4af35b:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  4af35e:	3b fe                	cmp    edi,esi
  4af360:	7d 6c                	jge    0x4af3ce
  4af362:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4af365:	33 d2                	xor    edx,edx
  4af367:	66 8b 51 2e          	mov    dx,WORD PTR [ecx+0x2e]
  4af36b:	3b c2                	cmp    eax,edx
  4af36d:	7d 5f                	jge    0x4af3ce
  4af36f:	85 ff                	test   edi,edi
  4af371:	7c 5b                	jl     0x4af3ce
  4af373:	85 c0                	test   eax,eax
  4af375:	7c 57                	jl     0x4af3ce
  4af377:	d1 ee                	shr    esi,1
  4af379:	0f af f0             	imul   esi,eax
  4af37c:	8b c7                	mov    eax,edi
  4af37e:	99                   	cdq
  4af37f:	2b c2                	sub    eax,edx
  4af381:	d1 f8                	sar    eax,1
  4af383:	03 f0                	add    esi,eax
  4af385:	81 e7 01 00 00 80    	and    edi,0x80000001
  4af38b:	79 05                	jns    0x4af392
  4af38d:	4f                   	dec    edi
  4af38e:	83 cf fe             	or     edi,0xfffffffe
  4af391:	47                   	inc    edi
  4af392:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
  4af395:	75 22                	jne    0x4af3b9
  4af397:	8a 14 30             	mov    dl,BYTE PTR [eax+esi*1]
  4af39a:	03 c6                	add    eax,esi
  4af39c:	80 e2 0f             	and    dl,0xf
  4af39f:	88 10                	mov    BYTE PTR [eax],dl
  4af3a1:	8b 49 30             	mov    ecx,DWORD PTR [ecx+0x30]
  4af3a4:	8a 55 14             	mov    dl,BYTE PTR [ebp+0x14]
  4af3a7:	8d 04 31             	lea    eax,[ecx+esi*1]
  4af3aa:	8a 08                	mov    cl,BYTE PTR [eax]
  4af3ac:	c0 e2 04             	shl    dl,0x4
  4af3af:	0a ca                	or     cl,dl
  4af3b1:	5f                   	pop    edi
  4af3b2:	88 08                	mov    BYTE PTR [eax],cl
  4af3b4:	5e                   	pop    esi
  4af3b5:	5d                   	pop    ebp
  4af3b6:	c2 10 00             	ret    0x10
  4af3b9:	8a 14 30             	mov    dl,BYTE PTR [eax+esi*1]
  4af3bc:	03 c6                	add    eax,esi
  4af3be:	80 e2 f0             	and    dl,0xf0
  4af3c1:	88 10                	mov    BYTE PTR [eax],dl
  4af3c3:	8b 49 30             	mov    ecx,DWORD PTR [ecx+0x30]
  4af3c6:	8a 55 14             	mov    dl,BYTE PTR [ebp+0x14]
  4af3c9:	8d 04 31             	lea    eax,[ecx+esi*1]
  4af3cc:	08 10                	or     BYTE PTR [eax],dl
  4af3ce:	5f                   	pop    edi
  4af3cf:	5e                   	pop    esi
  4af3d0:	5d                   	pop    ebp
  4af3d1:	c2                   	.byte 0xc2


== WorldMap::RemoveBlockingUnit @ 0x4af560..0x4af5c8 ==

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004af560 <.text+0xae560>:
  4af560:	55                   	push   ebp
  4af561:	8b ec                	mov    ebp,esp
  4af563:	83 ec 10             	sub    esp,0x10
  4af566:	53                   	push   ebx
  4af567:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  4af56a:	56                   	push   esi
  4af56b:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  4af56e:	8b 06                	mov    eax,DWORD PTR [esi]
  4af570:	57                   	push   edi
  4af571:	6a 00                	push   0x0
  4af573:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
  4af576:	6a 0e                	push   0xe
  4af578:	8b ce                	mov    ecx,esi
  4af57a:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
  4af57d:	8b fb                	mov    edi,ebx
  4af57f:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  4af582:	8b cb                	mov    ecx,ebx
  4af584:	2b c8                	sub    ecx,eax
  4af586:	3b d9                	cmp    ebx,ecx
  4af588:	7e 37                	jle    0x4af5c1
  4af58a:	8b ce                	mov    ecx,esi
  4af58c:	e8 ff fe fd ff       	call   0x48f490
  4af591:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  4af594:	50                   	push   eax
  4af595:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4af598:	83 ec 0c             	sub    esp,0xc
  4af59b:	8b d4                	mov    edx,esp
  4af59d:	89 02                	mov    DWORD PTR [edx],eax
  4af59f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4af5a2:	89 7a 04             	mov    DWORD PTR [edx+0x4],edi
  4af5a5:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  4af5a8:	e8 a3 fd ff ff       	call   0x4af350
  4af5ad:	8b 06                	mov    eax,DWORD PTR [esi]
  4af5af:	6a 00                	push   0x0
  4af5b1:	6a 0e                	push   0xe
  4af5b3:	8b ce                	mov    ecx,esi
  4af5b5:	4f                   	dec    edi
  4af5b6:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  4af5b9:	8b cb                	mov    ecx,ebx
  4af5bb:	2b c8                	sub    ecx,eax
  4af5bd:	3b f9                	cmp    edi,ecx
  4af5bf:	7f c9                	jg     0x4af58a
  4af5c1:	5f                   	pop    edi
  4af5c2:	5e                   	pop    esi
  4af5c3:	5b                   	pop    ebx
  4af5c4:	8b e5                	mov    esp,ebp
  4af5c6:	5d                   	pop    ebp
  4af5c7:	c2                   	.byte 0xc2


== Unit::SetVisibility @ 0x463530..0x463540 ==

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00463530 <.text+0x62530>:
  463530:	55                   	push   ebp
  463531:	8b ec                	mov    ebp,esp
  463533:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
  463536:	84 c0                	test   al,al
  463538:	0f 94 c0             	sete   al
  46353b:	88 41 5a             	mov    BYTE PTR [ecx+0x5a],al
  46353e:	5d                   	pop    ebp
  46353f:	c2                   	.byte 0xc2
