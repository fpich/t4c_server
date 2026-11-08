; PASSE 56. Preuves serveur SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Adresses VA x86 et octets verifiables; les bornes semi-ouvertes peuvent couper le flux de desassemblage.
; Ne pas interpreter les fonctions MFC/imports non resolus comme primitives connues.

; [00442060,004420a9) Desallocateur generique avec voie directe et voie pool
  442060:	55                        push   ebp
  442061:	8b ec                     mov    ebp,esp
  442063:	51                        push   ecx
  442064:	56                        push   esi
  442065:	e8 46 00 00 00            call   0x4420b0
  44206a:	8b f0                     mov    esi,eax
  44206c:	8a 46 20                  mov    al,BYTE PTR [esi+0x20]
  44206f:	84 c0                     test   al,al
  442071:	75 12                     jne    0x442085
  442073:	8b 45 08                  mov    eax,DWORD PTR [ebp+0x8]
  442076:	50                        push   eax
  442077:	ff 15 08 e3 4d 00         call   DWORD PTR ds:0x4de308
  44207d:	83 c4 04                  add    esp,0x4
  442080:	5e                        pop    esi
  442081:	8b e5                     mov    esp,ebp
  442083:	5d                        pop    ebp
  442084:	c3                        ret
  442085:	8d 4e 08                  lea    ecx,[esi+0x8]
  442088:	51                        push   ecx
  442089:	8d 4d fc                  lea    ecx,[ebp-0x4]
  44208c:	e8 ef 75 fc ff            call   0x409680
  442091:	8b 55 08                  mov    edx,DWORD PTR [ebp+0x8]
  442094:	52                        push   edx
  442095:	8b ce                     mov    ecx,esi
  442097:	e8 34 03 00 00            call   0x4423d0
  44209c:	8d 4d fc                  lea    ecx,[ebp-0x4]
  44209f:	e8 fc 75 fc ff            call   0x4096a0
  4420a4:	5e                        pop    esi
  4420a5:	8b e5                     mov    esp,ebp
  4420a7:	5d                        pop    ebp
  4420a8:	c3                        ret

; [004420b0,004420e3) Instance globale lazy init du pool, drapeau global
  4420b0:	8a 0d 44 43 51 00         mov    cl,BYTE PTR ds:0x514344
  4420b6:	b0 01                     mov    al,0x1
  4420b8:	84 c8                     test   al,cl
  4420ba:	75 21                     jne    0x4420dd
  4420bc:	8a d1                     mov    dl,cl
  4420be:	0a d0                     or     dl,al
  4420c0:	b9 08 43 51 00            mov    ecx,0x514308
  4420c5:	88 15 44 43 51 00         mov    BYTE PTR ds:0x514344,dl
  4420cb:	e8 30 00 00 00            call   0x442100
  4420d0:	68 f0 20 44 00            push   0x4420f0
  4420d5:	e8 31 fc 08 00            call   0x4d1d0b
  4420da:	83 c4 04                  add    esp,0x4
  4420dd:	b8 08 43 51 00            mov    eax,0x514308
  4420e2:	c3                        ret

; [00442150,00442196) Init du pool avec 1024 buckets et zeroing des 4096 octets
  442150:	53                        push   ebx
  442151:	56                        push   esi
  442152:	8b f1                     mov    esi,ecx
  442154:	33 db                     xor    ebx,ebx
  442156:	57                        push   edi
  442157:	68 00 10 00 00            push   0x1000
  44215c:	89 5e 38                  mov    DWORD PTR [esi+0x38],ebx
  44215f:	89 5e 24                  mov    DWORD PTR [esi+0x24],ebx
  442162:	89 5e 28                  mov    DWORD PTR [esi+0x28],ebx
  442165:	89 5e 2c                  mov    DWORD PTR [esi+0x2c],ebx
  442168:	89 5e 30                  mov    DWORD PTR [esi+0x30],ebx
  44216b:	89 5e 04                  mov    DWORD PTR [esi+0x4],ebx
  44216e:	ff 15 94 e2 4d 00         call   DWORD PTR ds:0x4de294
  442174:	8b f8                     mov    edi,eax
  442176:	33 c0                     xor    eax,eax
  442178:	89 7e 34                  mov    DWORD PTR [esi+0x34],edi
  44217b:	b9 00 04 00 00            mov    ecx,0x400
  442180:	f3 ab                     rep stos DWORD PTR es:[edi],eax
  442182:	83 c4 04                  add    esp,0x4
  442185:	8d 46 08                  lea    eax,[esi+0x8]
  442188:	50                        push   eax
  442189:	ff 15 dc e0 4d 00         call   DWORD PTR ds:0x4de0dc
  44218f:	5f                        pop    edi
  442190:	88 5e 20                  mov    BYTE PTR [esi+0x20],bl
  442193:	5e                        pop    esi
  442194:	5b                        pop    ebx
  442195:	c3                        ret

; [004422c0,004422d2) Index de bucket: (ptr >> 6) & 0x3ff
  4422c0:	55                        push   ebp
  4422c1:	8b ec                     mov    ebp,esp
  4422c3:	8b 45 08                  mov    eax,DWORD PTR [ebp+0x8]
  4422c6:	c1 e8 06                  shr    eax,0x6
  4422c9:	25 ff 03 00 00            and    eax,0x3ff
  4422ce:	5d                        pop    ebp
  4422cf:	c2 04 00                  ret    0x4

; [004423d0,00442466) Retour en pool ou free de bloc selon recherche et classification
  4423d0:	55                        push   ebp
  4423d1:	8b ec                     mov    ebp,esp
  4423d3:	53                        push   ebx
  4423d4:	8b 5d 08                  mov    ebx,DWORD PTR [ebp+0x8]
  4423d7:	56                        push   esi
  4423d8:	57                        push   edi
  4423d9:	8b f1                     mov    esi,ecx
  4423db:	53                        push   ebx
  4423dc:	33 ff                     xor    edi,edi
  4423de:	e8 dd fe ff ff            call   0x4422c0
  4423e3:	8b 4e 34                  mov    ecx,DWORD PTR [esi+0x34]
  4423e6:	85 c9                     test   ecx,ecx
  4423e8:	74 6d                     je     0x442457
  4423ea:	8b 0c 81                  mov    ecx,DWORD PTR [ecx+eax*4]
  4423ed:	85 c9                     test   ecx,ecx
  4423ef:	89 4e 2c                  mov    DWORD PTR [esi+0x2c],ecx
  4423f2:	74 63                     je     0x442457
  4423f4:	8b 4e 2c                  mov    ecx,DWORD PTR [esi+0x2c]
  4423f7:	8b 51 30                  mov    edx,DWORD PTR [ecx+0x30]
  4423fa:	85 d2                     test   edx,edx
  4423fc:	75 04                     jne    0x442402
  4423fe:	39 19                     cmp    DWORD PTR [ecx],ebx
  442400:	75 55                     jne    0x442457
  442402:	39 19                     cmp    DWORD PTR [ecx],ebx
  442404:	74 07                     je     0x44240d
  442406:	8b f9                     mov    edi,ecx
  442408:	89 56 2c                  mov    DWORD PTR [esi+0x2c],edx
  44240b:	eb e7                     jmp    0x4423f4
  44240d:	8b 4e 2c                  mov    ecx,DWORD PTR [esi+0x2c]
  442410:	c7 01 00 00 00 00         mov    DWORD PTR [ecx],0x0
  442416:	8b 56 2c                  mov    edx,DWORD PTR [esi+0x2c]
  442419:	8b 4a 04                  mov    ecx,DWORD PTR [edx+0x4]
  44241c:	8b 56 04                  mov    edx,DWORD PTR [esi+0x4]
  44241f:	2b d1                     sub    edx,ecx
  442421:	85 ff                     test   edi,edi
  442423:	89 56 04                  mov    DWORD PTR [esi+0x4],edx
  442426:	8b 56 2c                  mov    edx,DWORD PTR [esi+0x2c]
  442429:	c7 42 04 00 00 00 00      mov    DWORD PTR [edx+0x4],0x0
  442430:	8b 4e 2c                  mov    ecx,DWORD PTR [esi+0x2c]
  442433:	8b 49 30                  mov    ecx,DWORD PTR [ecx+0x30]
  442436:	74 05                     je     0x44243d
  442438:	89 4f 30                  mov    DWORD PTR [edi+0x30],ecx
  44243b:	eb 06                     jmp    0x442443
  44243d:	8b 56 34                  mov    edx,DWORD PTR [esi+0x34]
  442440:	89 0c 82                  mov    DWORD PTR [edx+eax*4],ecx
  442443:	8b 46 2c                  mov    eax,DWORD PTR [esi+0x2c]
  442446:	50                        push   eax
  442447:	ff 15 08 e3 4d 00         call   DWORD PTR ds:0x4de308
  44244d:	8b 46 38                  mov    eax,DWORD PTR [esi+0x38]
  442450:	83 c4 04                  add    esp,0x4
  442453:	48                        dec    eax
  442454:	89 46 38                  mov    DWORD PTR [esi+0x38],eax
  442457:	53                        push   ebx
  442458:	ff 15 08 e3 4d 00         call   DWORD PTR ds:0x4de308
  44245e:	83 c4 04                  add    esp,0x4
  442461:	5f                        pop    edi
  442462:	5e                        pop    esi
  442463:	5b                        pop    ebx
  442464:	5d                        pop    ebp
  442465:	c2 04 00                  ret    0x4
