; T4C Server(1).exe — preuves machine-code pour la passe 41
; Instructions copiees de objdump Intel et verifiees byte par byte contre le PE original.
; Les adresses sont des VA et tous les commentaires sont des annotations statiques, sans execution du serveur.

; Deux fichiers WDA charges puis transformation finale de la collection commune — [0x475D9E,0x475DE4)
  475d9e: 8d 4d bc                                    lea    ecx,[ebp-0x44]
  475da1: 51                                          push   ecx
  475da2: b3 07                                       mov    bl,0x7
  475da4: 8d 4d 84                                    lea    ecx,[ebp-0x7c]
  475da7: 88 5d fc                                    mov    BYTE PTR [ebp-0x4],bl
  475daa: e8 61 25 03 00                              call   0x4a8310
  475daf: 6a 01                                       push   0x1
  475db1: 8d 55 dc                                    lea    edx,[ebp-0x24]
  475db4: 52                                          push   edx
  475db5: 8d 4d 84                                    lea    ecx,[ebp-0x7c]
  475db8: c6 45 fc 08                                 mov    BYTE PTR [ebp-0x4],0x8
  475dbc: e8 4f 2a 03 00                              call   0x4a8810
  475dc1: 8a 45 ef                                    mov    al,BYTE PTR [ebp-0x11]
  475dc4: 84 c0                                       test   al,al
  475dc6: 74 10                                       je     0x475dd8
  475dc8: 8b 45 e8                                    mov    eax,DWORD PTR [ebp-0x18]
  475dcb: 50                                          push   eax
  475dcc: 8d 4d d4                                    lea    ecx,[ebp-0x2c]
  475dcf: 51                                          push   ecx
  475dd0: 8d 4d 84                                    lea    ecx,[ebp-0x7c]
  475dd3: e8 38 2a 03 00                              call   0x4a8810
  475dd8: 8d 55 84                                    lea    edx,[ebp-0x7c]
  475ddb: 52                                          push   edx
  475ddc: 8d 4d e4                                    lea    ecx,[ebp-0x1c]
  475ddf: e8 2c d8 ff ff                              call   0x473610

; Debut de lecture des enregistrements WDA avec compteur — [0x4A8810,0x4A886C)
  4a8810: 55                                          push   ebp
  4a8811: 8b ec                                       mov    ebp,esp
  4a8813: 6a ff                                       push   0xffffffff
  4a8815: 68 bf bf 4d 00                              push   0x4dbfbf
  4a881a: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4a8820: 50                                          push   eax
  4a8821: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4a8828: 81 ec 80 09 00 00                           sub    esp,0x980
  4a882e: 8b 41 10                                    mov    eax,DWORD PTR [ecx+0x10]
  4a8831: 53                                          push   ebx
  4a8832: 56                                          push   esi
  4a8833: 57                                          push   edi
  4a8834: 89 4d f0                                    mov    DWORD PTR [ebp-0x10],ecx
  4a8837: 8b 49 04                                    mov    ecx,DWORD PTR [ecx+0x4]
  4a883a: 68 f0 f7 50 00                              push   0x50f7f0
  4a883f: c7 45 ec ef cd ab 00                        mov    DWORD PTR [ebp-0x14],0xabcdef
  4a8846: 8b 10                                       mov    edx,DWORD PTR [eax]
  4a8848: 51                                          push   ecx
  4a8849: 8b c8                                       mov    ecx,eax
  4a884b: ff 52 04                                    call   DWORD PTR [edx+0x4]
  4a884e: 8b 75 08                                    mov    esi,DWORD PTR [ebp+0x8]
  4a8851: 8d 55 ec                                    lea    edx,[ebp-0x14]
  4a8854: 52                                          push   edx
  4a8855: 8b ce                                       mov    ecx,esi
  4a8857: e8 24 13 ff ff                              call   0x499b80
  4a885c: 8b 45 ec                                    mov    eax,DWORD PTR [ebp-0x14]
  4a885f: 33 db                                       xor    ebx,ebx
  4a8861: 3b c3                                       cmp    eax,ebx
  4a8863: 89 5d e8                                    mov    DWORD PTR [ebp-0x18],ebx
  4a8866: 0f 86 10 07 00 00                           jbe    0x4a8f7c

; Resultat precedent du generateur XOR, deux chemins d ecriture — [0x459064,0x45909F)
  459064: 8b 0d e0 4c 51 00                           mov    ecx,DWORD PTR ds:0x514ce0
  45906a: 03 c6                                       add    eax,esi
  45906c: 3b c8                                       cmp    ecx,eax
  45906e: 75 16                                       jne    0x459086
  459070: 8b 4d 10                                    mov    ecx,DWORD PTR [ebp+0x10]
  459073: 85 c9                                       test   ecx,ecx
  459075: 75 0f                                       jne    0x459086
  459077: 8b 7d 0c                                    mov    edi,DWORD PTR [ebp+0xc]
  45907a: c7 45 10 01 00 00 00                        mov    DWORD PTR [ebp+0x10],0x1
  459081: e9 76 ff ff ff                              jmp    0x458ffc
  459086: 5f                                          pop    edi
  459087: 5e                                          pop    esi
  459088: a3 e0 4c 51 00                              mov    ds:0x514ce0,eax
  45908d: 99                                          cdq
  45908e: 5b                                          pop    ebx
  45908f: 5d                                          pop    ebp
  459090: c3                                          ret
  459091: 5f                                          pop    edi
  459092: 8b c6                                       mov    eax,esi
  459094: 89 35 e0 4c 51 00                           mov    DWORD PTR ds:0x514ce0,esi
  45909a: 5e                                          pop    esi
  45909b: 99                                          cdq
  45909c: 5b                                          pop    ebx
  45909d: 5d                                          pop    ebp
  45909e: c3                                          ret

