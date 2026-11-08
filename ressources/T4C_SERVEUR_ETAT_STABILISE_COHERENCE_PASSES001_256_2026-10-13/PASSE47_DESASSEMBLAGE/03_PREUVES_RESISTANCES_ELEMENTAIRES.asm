; PASSE47 — résistances et transformations de valeurs
; Binaire serveur SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; .text — instructions originales validées octet par octet ; adresses VA PE32 x86
; Extrait documentaire statique, non preuve de fonctionnement dynamique

; Six GetXResist | [0x463000,0x4630f0[
; GetXResist := 100 + ViewFlag(0x4eXX) + QueryBoost(code stat).
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
  4630e2:	90                   	nop
  4630e3:	90                   	nop
  4630e4:	90                   	nop
  4630e5:	90                   	nop
  4630e6:	90                   	nop
  4630e7:	90                   	nop
  4630e8:	90                   	nop
  4630e9:	90                   	nop
  4630ea:	90                   	nop
  4630eb:	90                   	nop
  4630ec:	90                   	nop
  4630ed:	90                   	nop
  4630ee:	90                   	nop
  4630ef:	90                   	nop

; Sept GetTrueXResist | [0x4630f0,0x463150[
; Retourne ViewFlag(0x4eXX) + 100, sans QueryBoost.
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

; Six SetXResist | [0x463150,0x463210[
; Passage d une valeur corrigée de 100 à SetFlag virtuel.
  463150:	55                   	push   ebp
  463151:	8b ec                	mov    ebp,esp
  463153:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  463156:	8b 01                	mov    eax,DWORD PTR [ecx]
  463158:	83 c2 9c             	add    edx,0xffffff9c
  46315b:	52                   	push   edx
  46315c:	68 3e 4e 00 00       	push   0x4e3e
  463161:	ff 50 04             	call   DWORD PTR [eax+0x4]
  463164:	5d                   	pop    ebp
  463165:	c2 04 00             	ret    0x4
  463168:	90                   	nop
  463169:	90                   	nop
  46316a:	90                   	nop
  46316b:	90                   	nop
  46316c:	90                   	nop
  46316d:	90                   	nop
  46316e:	90                   	nop
  46316f:	90                   	nop
  463170:	55                   	push   ebp
  463171:	8b ec                	mov    ebp,esp
  463173:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  463176:	8b 01                	mov    eax,DWORD PTR [ecx]
  463178:	83 c2 9c             	add    edx,0xffffff9c
  46317b:	52                   	push   edx
  46317c:	68 3f 4e 00 00       	push   0x4e3f
  463181:	ff 50 04             	call   DWORD PTR [eax+0x4]
  463184:	5d                   	pop    ebp
  463185:	c2 04 00             	ret    0x4
  463188:	90                   	nop
  463189:	90                   	nop
  46318a:	90                   	nop
  46318b:	90                   	nop
  46318c:	90                   	nop
  46318d:	90                   	nop
  46318e:	90                   	nop
  46318f:	90                   	nop
  463190:	55                   	push   ebp
  463191:	8b ec                	mov    ebp,esp
  463193:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  463196:	8b 01                	mov    eax,DWORD PTR [ecx]
  463198:	83 c2 9c             	add    edx,0xffffff9c
  46319b:	52                   	push   edx
  46319c:	68 40 4e 00 00       	push   0x4e40
  4631a1:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4631a4:	5d                   	pop    ebp
  4631a5:	c2 04 00             	ret    0x4
  4631a8:	90                   	nop
  4631a9:	90                   	nop
  4631aa:	90                   	nop
  4631ab:	90                   	nop
  4631ac:	90                   	nop
  4631ad:	90                   	nop
  4631ae:	90                   	nop
  4631af:	90                   	nop
  4631b0:	55                   	push   ebp
  4631b1:	8b ec                	mov    ebp,esp
  4631b3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4631b6:	8b 01                	mov    eax,DWORD PTR [ecx]
  4631b8:	83 c2 9c             	add    edx,0xffffff9c
  4631bb:	52                   	push   edx
  4631bc:	68 41 4e 00 00       	push   0x4e41
  4631c1:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4631c4:	5d                   	pop    ebp
  4631c5:	c2 04 00             	ret    0x4
  4631c8:	90                   	nop
  4631c9:	90                   	nop
  4631ca:	90                   	nop
  4631cb:	90                   	nop
  4631cc:	90                   	nop
  4631cd:	90                   	nop
  4631ce:	90                   	nop
  4631cf:	90                   	nop
  4631d0:	55                   	push   ebp
  4631d1:	8b ec                	mov    ebp,esp
  4631d3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4631d6:	8b 01                	mov    eax,DWORD PTR [ecx]
  4631d8:	83 c2 9c             	add    edx,0xffffff9c
  4631db:	52                   	push   edx
  4631dc:	68 45 4e 00 00       	push   0x4e45
  4631e1:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4631e4:	5d                   	pop    ebp
  4631e5:	c2 04 00             	ret    0x4
  4631e8:	90                   	nop
  4631e9:	90                   	nop
  4631ea:	90                   	nop
  4631eb:	90                   	nop
  4631ec:	90                   	nop
  4631ed:	90                   	nop
  4631ee:	90                   	nop
  4631ef:	90                   	nop
  4631f0:	55                   	push   ebp
  4631f1:	8b ec                	mov    ebp,esp
  4631f3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4631f6:	8b 01                	mov    eax,DWORD PTR [ecx]
  4631f8:	83 c2 9c             	add    edx,0xffffff9c
  4631fb:	52                   	push   edx
  4631fc:	68 46 4e 00 00       	push   0x4e46
  463201:	ff 50 04             	call   DWORD PTR [eax+0x4]
  463204:	5d                   	pop    ebp
  463205:	c2 04 00             	ret    0x4
  463208:	90                   	nop
  463209:	90                   	nop
  46320a:	90                   	nop
  46320b:	90                   	nop
  46320c:	90                   	nop
  46320d:	90                   	nop
  46320e:	90                   	nop
  46320f:	90                   	nop

; Autres getters power élémentaires | [0x463210,0x4633a0[
; Distinction des getters de puissance élémentaire; voir symboles et preuves.
  463210:	56                   	push   esi
  463211:	57                   	push   edi
  463212:	8b f1                	mov    esi,ecx
  463214:	8b 06                	mov    eax,DWORD PTR [esi]
  463216:	6a 00                	push   0x0
  463218:	68 49 4e 00 00       	push   0x4e49
  46321d:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  463220:	6a 10                	push   0x10
  463222:	8b ce                	mov    ecx,esi
  463224:	8b f8                	mov    edi,eax
  463226:	e8 35 ac 02 00       	call   0x48de60
  46322b:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  46322f:	5f                   	pop    edi
  463230:	5e                   	pop    esi
  463231:	c3                   	ret
  463232:	90                   	nop
  463233:	90                   	nop
  463234:	90                   	nop
  463235:	90                   	nop
  463236:	90                   	nop
  463237:	90                   	nop
  463238:	90                   	nop
  463239:	90                   	nop
  46323a:	90                   	nop
  46323b:	90                   	nop
  46323c:	90                   	nop
  46323d:	90                   	nop
  46323e:	90                   	nop
  46323f:	90                   	nop
  463240:	56                   	push   esi
  463241:	57                   	push   edi
  463242:	8b f1                	mov    esi,ecx
  463244:	8b 06                	mov    eax,DWORD PTR [esi]
  463246:	6a 00                	push   0x0
  463248:	68 4a 4e 00 00       	push   0x4e4a
  46324d:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  463250:	6a 12                	push   0x12
  463252:	8b ce                	mov    ecx,esi
  463254:	8b f8                	mov    edi,eax
  463256:	e8 05 ac 02 00       	call   0x48de60
  46325b:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  46325f:	5f                   	pop    edi
  463260:	5e                   	pop    esi
  463261:	c3                   	ret
  463262:	90                   	nop
  463263:	90                   	nop
  463264:	90                   	nop
  463265:	90                   	nop
  463266:	90                   	nop
  463267:	90                   	nop
  463268:	90                   	nop
  463269:	90                   	nop
  46326a:	90                   	nop
  46326b:	90                   	nop
  46326c:	90                   	nop
  46326d:	90                   	nop
  46326e:	90                   	nop
  46326f:	90                   	nop
  463270:	56                   	push   esi
  463271:	57                   	push   edi
  463272:	8b f1                	mov    esi,ecx
  463274:	8b 06                	mov    eax,DWORD PTR [esi]
  463276:	6a 00                	push   0x0
  463278:	68 4b 4e 00 00       	push   0x4e4b
  46327d:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  463280:	6a 11                	push   0x11
  463282:	8b ce                	mov    ecx,esi
  463284:	8b f8                	mov    edi,eax
  463286:	e8 d5 ab 02 00       	call   0x48de60
  46328b:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  46328f:	5f                   	pop    edi
  463290:	5e                   	pop    esi
  463291:	c3                   	ret
  463292:	90                   	nop
  463293:	90                   	nop
  463294:	90                   	nop
  463295:	90                   	nop
  463296:	90                   	nop
  463297:	90                   	nop
  463298:	90                   	nop
  463299:	90                   	nop
  46329a:	90                   	nop
  46329b:	90                   	nop
  46329c:	90                   	nop
  46329d:	90                   	nop
  46329e:	90                   	nop
  46329f:	90                   	nop
  4632a0:	56                   	push   esi
  4632a1:	57                   	push   edi
  4632a2:	8b f1                	mov    esi,ecx
  4632a4:	8b 06                	mov    eax,DWORD PTR [esi]
  4632a6:	6a 00                	push   0x0
  4632a8:	68 4c 4e 00 00       	push   0x4e4c
  4632ad:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  4632b0:	6a 13                	push   0x13
  4632b2:	8b ce                	mov    ecx,esi
  4632b4:	8b f8                	mov    edi,eax
  4632b6:	e8 a5 ab 02 00       	call   0x48de60
  4632bb:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  4632bf:	5f                   	pop    edi
  4632c0:	5e                   	pop    esi
  4632c1:	c3                   	ret
  4632c2:	90                   	nop
  4632c3:	90                   	nop
  4632c4:	90                   	nop
  4632c5:	90                   	nop
  4632c6:	90                   	nop
  4632c7:	90                   	nop
  4632c8:	90                   	nop
  4632c9:	90                   	nop
  4632ca:	90                   	nop
  4632cb:	90                   	nop
  4632cc:	90                   	nop
  4632cd:	90                   	nop
  4632ce:	90                   	nop
  4632cf:	90                   	nop
  4632d0:	56                   	push   esi
  4632d1:	57                   	push   edi
  4632d2:	8b f1                	mov    esi,ecx
  4632d4:	8b 06                	mov    eax,DWORD PTR [esi]
  4632d6:	6a 00                	push   0x0
  4632d8:	68 47 4e 00 00       	push   0x4e47
  4632dd:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  4632e0:	6a 17                	push   0x17
  4632e2:	8b ce                	mov    ecx,esi
  4632e4:	8b f8                	mov    edi,eax
  4632e6:	e8 75 ab 02 00       	call   0x48de60
  4632eb:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  4632ef:	5f                   	pop    edi
  4632f0:	5e                   	pop    esi
  4632f1:	c3                   	ret
  4632f2:	90                   	nop
  4632f3:	90                   	nop
  4632f4:	90                   	nop
  4632f5:	90                   	nop
  4632f6:	90                   	nop
  4632f7:	90                   	nop
  4632f8:	90                   	nop
  4632f9:	90                   	nop
  4632fa:	90                   	nop
  4632fb:	90                   	nop
  4632fc:	90                   	nop
  4632fd:	90                   	nop
  4632fe:	90                   	nop
  4632ff:	90                   	nop
  463300:	56                   	push   esi
  463301:	57                   	push   edi
  463302:	8b f1                	mov    esi,ecx
  463304:	8b 06                	mov    eax,DWORD PTR [esi]
  463306:	6a 00                	push   0x0
  463308:	68 48 4e 00 00       	push   0x4e48
  46330d:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  463310:	6a 18                	push   0x18
  463312:	8b ce                	mov    ecx,esi
  463314:	8b f8                	mov    edi,eax
  463316:	e8 45 ab 02 00       	call   0x48de60
  46331b:	8d 44 07 64          	lea    eax,[edi+eax*1+0x64]
  46331f:	5f                   	pop    edi
  463320:	5e                   	pop    esi
  463321:	c3                   	ret
  463322:	90                   	nop
  463323:	90                   	nop
  463324:	90                   	nop
  463325:	90                   	nop
  463326:	90                   	nop
  463327:	90                   	nop
  463328:	90                   	nop
  463329:	90                   	nop
  46332a:	90                   	nop
  46332b:	90                   	nop
  46332c:	90                   	nop
  46332d:	90                   	nop
  46332e:	90                   	nop
  46332f:	90                   	nop
  463330:	8b 01                	mov    eax,DWORD PTR [ecx]
  463332:	6a 00                	push   0x0
  463334:	68 49 4e 00 00       	push   0x4e49
  463339:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46333c:	83 c0 64             	add    eax,0x64
  46333f:	c3                   	ret
  463340:	8b 01                	mov    eax,DWORD PTR [ecx]
  463342:	6a 00                	push   0x0
  463344:	68 4a 4e 00 00       	push   0x4e4a
  463349:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46334c:	83 c0 64             	add    eax,0x64
  46334f:	c3                   	ret
  463350:	8b 01                	mov    eax,DWORD PTR [ecx]
  463352:	6a 00                	push   0x0
  463354:	68 4b 4e 00 00       	push   0x4e4b
  463359:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46335c:	83 c0 64             	add    eax,0x64
  46335f:	c3                   	ret
  463360:	8b 01                	mov    eax,DWORD PTR [ecx]
  463362:	6a 00                	push   0x0
  463364:	68 4c 4e 00 00       	push   0x4e4c
  463369:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46336c:	83 c0 64             	add    eax,0x64
  46336f:	c3                   	ret
  463370:	8b 01                	mov    eax,DWORD PTR [ecx]
  463372:	6a 00                	push   0x0
  463374:	68 47 4e 00 00       	push   0x4e47
  463379:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46337c:	83 c0 64             	add    eax,0x64
  46337f:	c3                   	ret
  463380:	8b 01                	mov    eax,DWORD PTR [ecx]
  463382:	6a 00                	push   0x0
  463384:	68 48 4e 00 00       	push   0x4e48
  463389:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46338c:	83 c0 64             	add    eax,0x64
  46338f:	c3                   	ret
  463390:	55                   	push   ebp
  463391:	8b ec                	mov    ebp,esp
  463393:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  463396:	8b 01                	mov    eax,DWORD PTR [ecx]
  463398:	83 c2 9c             	add    edx,0xffffff9c
  46339b:	52                   	push   edx
  46339c:	68 49 4e 00 00       	push   0x4e49

