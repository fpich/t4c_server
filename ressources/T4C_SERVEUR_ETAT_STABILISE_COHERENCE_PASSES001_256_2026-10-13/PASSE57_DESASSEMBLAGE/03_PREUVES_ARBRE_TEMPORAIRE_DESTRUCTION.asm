; PASSE 57: preuves T4C Server.exe SHA256=13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instuctions x86 controlees par adresse VA; blocs notes comme bornes semi-ouvertes, sans donnees declarees comme code.

; [0x0045E8A0,0x0045E8EB) Construction arbre local: sentinelle, 48 octets, compteur zero
  45e8a0:	55                            push   ebp
  45e8a1:	8b ec                         mov    ebp,esp
  45e8a3:	8b 45 0c                      mov    eax,DWORD PTR [ebp+0xc]
  45e8a6:	8a 00                         mov    al,BYTE PTR [eax]
  45e8a8:	56                            push   esi
  45e8a9:	8b f1                         mov    esi,ecx
  45e8ab:	8b 4d 08                      mov    ecx,DWORD PTR [ebp+0x8]
  45e8ae:	8a 09                         mov    cl,BYTE PTR [ecx]
  45e8b0:	6a 30                         push   0x30
  45e8b2:	88 0e                         mov    BYTE PTR [esi],cl
  45e8b4:	88 46 01                      mov    BYTE PTR [esi+0x1],al
  45e8b7:	e8 34 37 fe ff                call   0x441ff0
  45e8bc:	83 c4 04                      add    esp,0x4
  45e8bf:	33 c9                         xor    ecx,ecx
  45e8c1:	89 48 04                      mov    DWORD PTR [eax+0x4],ecx
  45e8c4:	88 48 29                      mov    BYTE PTR [eax+0x29],cl
  45e8c7:	b2 01                         mov    dl,0x1
  45e8c9:	88 50 28                      mov    BYTE PTR [eax+0x28],dl
  45e8cc:	89 46 04                      mov    DWORD PTR [esi+0x4],eax
  45e8cf:	88 50 29                      mov    BYTE PTR [eax+0x29],dl
  45e8d2:	8b 46 04                      mov    eax,DWORD PTR [esi+0x4]
  45e8d5:	89 40 04                      mov    DWORD PTR [eax+0x4],eax
  45e8d8:	8b 46 04                      mov    eax,DWORD PTR [esi+0x4]
  45e8db:	89 00                         mov    DWORD PTR [eax],eax
  45e8dd:	8b 46 04                      mov    eax,DWORD PTR [esi+0x4]
  45e8e0:	89 40 08                      mov    DWORD PTR [eax+0x8],eax
  45e8e3:	89 4e 08                      mov    DWORD PTR [esi+0x8],ecx
  45e8e6:	8b c6                         mov    eax,esi
  45e8e8:	5e                            pop    esi
  45e8e9:	5d                            pop    ebp
; lignes_verifiees_bloc=30

; [0x0045E3D0,0x0045E461) Nettoyage arbre local: detache les noeuds, appelle destructeur element, libere les allocations
  45e3d0:	55                            push   ebp
  45e3d1:	8b ec                         mov    ebp,esp
  45e3d3:	83 ec 08                      sub    esp,0x8
  45e3d6:	53                            push   ebx
  45e3d7:	56                            push   esi
  45e3d8:	8b f1                         mov    esi,ecx
  45e3da:	8b 4e 08                      mov    ecx,DWORD PTR [esi+0x8]
  45e3dd:	85 c9                         test   ecx,ecx
  45e3df:	57                            push   edi
  45e3e0:	8b 7e 04                      mov    edi,DWORD PTR [esi+0x4]
  45e3e3:	8b 07                         mov    eax,DWORD PTR [edi]
  45e3e5:	89 45 fc                      mov    DWORD PTR [ebp-0x4],eax
  45e3e8:	74 55                         je     0x45e43f
  45e3ea:	8b c8                         mov    ecx,eax
  45e3ec:	3b c1                         cmp    eax,ecx
  45e3ee:	75 4f                         jne    0x45e43f
  45e3f0:	8b 5f 04                      mov    ebx,DWORD PTR [edi+0x4]
  45e3f3:	8a 43 29                      mov    al,BYTE PTR [ebx+0x29]
  45e3f6:	84 c0                         test   al,al
  45e3f8:	8b fb                         mov    edi,ebx
  45e3fa:	75 29                         jne    0x45e425
  45e3fc:	8b 47 08                      mov    eax,DWORD PTR [edi+0x8]
  45e3ff:	50                            push   eax
  45e400:	8b ce                         mov    ecx,esi
  45e402:	e8 79 0c 00 00                call   0x45f080
  45e407:	8b 3f                         mov    edi,DWORD PTR [edi]
  45e409:	6a 00                         push   0x0
  45e40b:	8d 4b 10                      lea    ecx,[ebx+0x10]
  45e40e:	e8 ad 10 00 00                call   0x45f4c0
  45e413:	53                            push   ebx
  45e414:	e8 47 3c fe ff                call   0x442060
  45e419:	8a 47 29                      mov    al,BYTE PTR [edi+0x29]
  45e41c:	83 c4 04                      add    esp,0x4
  45e41f:	84 c0                         test   al,al
  45e421:	8b df                         mov    ebx,edi
  45e423:	74 d7                         je     0x45e3fc
  45e425:	8b 46 04                      mov    eax,DWORD PTR [esi+0x4]
  45e428:	89 40 04                      mov    DWORD PTR [eax+0x4],eax
  45e42b:	8b 46 04                      mov    eax,DWORD PTR [esi+0x4]
  45e42e:	c7 46 08 00 00 00 00          mov    DWORD PTR [esi+0x8],0x0
  45e435:	89 00                         mov    DWORD PTR [eax],eax
  45e437:	8b 46 04                      mov    eax,DWORD PTR [esi+0x4]
  45e43a:	89 40 08                      mov    DWORD PTR [eax+0x8],eax
  45e43d:	eb 21                         jmp    0x45e460
  45e43f:	3b c7                         cmp    eax,edi
  45e441:	74 1d                         je     0x45e460
  45e443:	8d 4d fc                      lea    ecx,[ebp-0x4]
  45e446:	8b d8                         mov    ebx,eax
  45e448:	e8 83 0c 00 00                call   0x45f0d0
  45e44d:	53                            push   ebx
  45e44e:	8d 4d f8                      lea    ecx,[ebp-0x8]
  45e451:	51                            push   ecx
  45e452:	8b ce                         mov    ecx,esi
  45e454:	e8 a7 07 00 00                call   0x45ec00
  45e459:	8b 45 fc                      mov    eax,DWORD PTR [ebp-0x4]
  45e45c:	3b c7                         cmp    eax,edi
  45e45e:	75 e3                         jne    0x45e443
; lignes_verifiees_bloc=57

; [0x0045F4C0,0x0045F52D) Destructeur element de noeud puis chaine partagee avec decrementation de reference
  45f4c0:	55                            push   ebp
  45f4c1:	8b ec                         mov    ebp,esp
  45f4c3:	56                            push   esi
  45f4c4:	8b f1                         mov    esi,ecx
  45f4c6:	e8 25 fd fa ff                call   0x40f1f0
  45f4cb:	f6 45 08 01                   test   BYTE PTR [ebp+0x8],0x1
  45f4cf:	74 09                         je     0x45f4da
  45f4d1:	56                            push   esi
  45f4d2:	e8 89 2b fe ff                call   0x442060
  45f4d7:	83 c4 04                      add    esp,0x4
  45f4da:	8b c6                         mov    eax,esi
  45f4dc:	5e                            pop    esi
  45f4dd:	5d                            pop    ebp
  45f4de:	c2 04 00                      ret    0x4
  45f4e1:	90                            nop
  45f4e2:	90                            nop
  45f4e3:	90                            nop
  45f4e4:	90                            nop
  45f4e5:	90                            nop
  45f4e6:	90                            nop
  45f4e7:	90                            nop
  45f4e8:	90                            nop
  45f4e9:	90                            nop
  45f4ea:	90                            nop
  45f4eb:	90                            nop
  45f4ec:	90                            nop
  45f4ed:	90                            nop
  45f4ee:	90                            nop
  45f4ef:	90                            nop
  45f4f0:	56                            push   esi
  45f4f1:	8b f1                         mov    esi,ecx
  45f4f3:	8b 46 04                      mov    eax,DWORD PTR [esi+0x4]
  45f4f6:	85 c0                         test   eax,eax
  45f4f8:	74 1c                         je     0x45f516
  45f4fa:	8d 48 ff                      lea    ecx,[eax-0x1]
  45f4fd:	8a 01                         mov    al,BYTE PTR [ecx]
  45f4ff:	84 c0                         test   al,al
  45f501:	74 0a                         je     0x45f50d
  45f503:	3c ff                         cmp    al,0xff
  45f505:	74 06                         je     0x45f50d
  45f507:	fe c8                         dec    al
  45f509:	88 01                         mov    BYTE PTR [ecx],al
  45f50b:	eb 09                         jmp    0x45f516
  45f50d:	51                            push   ecx
  45f50e:	e8 4d 2b fe ff                call   0x442060
  45f513:	83 c4 04                      add    esp,0x4
  45f516:	c7 46 04 00 00 00 00          mov    DWORD PTR [esi+0x4],0x0
  45f51d:	c7 46 08 00 00 00 00          mov    DWORD PTR [esi+0x8],0x0
  45f524:	c7 46 0c 00 00 00 00          mov    DWORD PTR [esi+0xc],0x0
  45f52b:	5e                            pop    esi
  45f52c:	c3                            ret
; lignes_verifiees_bloc=51

; [0x0045D0E0,0x0045D100) Autre branche de destruction de arbre local
  45d0e0:	8d 4d c4                      lea    ecx,[ebp-0x3c]
  45d0e3:	89 5d e8                      mov    DWORD PTR [ebp-0x18],ebx
  45d0e6:	89 5d ec                      mov    DWORD PTR [ebp-0x14],ebx
  45d0e9:	c6 45 fc 03                   mov    BYTE PTR [ebp-0x4],0x3
  45d0ed:	e8 de 12 00 00                call   0x45e3d0
  45d0f2:	e9 f5 00 00 00                jmp    0x45d1ec
  45d0f7:	8b 55 10                      mov    edx,DWORD PTR [ebp+0x10]
  45d0fa:	8b 45 08                      mov    eax,DWORD PTR [ebp+0x8]
  45d0fd:	8d 4d c4                      lea    ecx,[ebp-0x3c]
; lignes_verifiees_bloc=9
