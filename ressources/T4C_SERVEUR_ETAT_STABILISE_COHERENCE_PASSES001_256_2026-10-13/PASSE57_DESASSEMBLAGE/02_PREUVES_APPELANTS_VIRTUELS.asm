; PASSE 57: preuves T4C Server.exe SHA256=13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instuctions x86 controlees par adresse VA; blocs notes comme bornes semi-ouvertes, sans donnees declarees comme code.

; [0x0045C890,0x0045C941) Wrapper 0x45C890 : delegation au dispatcher puis envoi conditionnel selon le type de unite
  45c890:	55                            push   ebp
  45c891:	8b ec                         mov    ebp,esp
  45c893:	6a ff                         push   0xffffffff
  45c895:	68 58 77 4d 00                push   0x4d7758
  45c89a:	64 a1 00 00 00 00             mov    eax,fs:0x0
  45c8a0:	50                            push   eax
  45c8a1:	64 89 25 00 00 00 00          mov    DWORD PTR fs:0x0,esp
  45c8a8:	51                            push   ecx
  45c8a9:	53                            push   ebx
  45c8aa:	56                            push   esi
  45c8ab:	57                            push   edi
  45c8ac:	8d 4d f0                      lea    ecx,[ebp-0x10]
  45c8af:	e8 aa 51 07 00                call   0x4d1a5e
  45c8b4:	8b 45 18                      mov    eax,DWORD PTR [ebp+0x18]
  45c8b7:	8b 55 14                      mov    edx,DWORD PTR [ebp+0x14]
  45c8ba:	8b 7d 10                      mov    edi,DWORD PTR [ebp+0x10]
  45c8bd:	8b 75 0c                      mov    esi,DWORD PTR [ebp+0xc]
  45c8c0:	8b 5d 08                      mov    ebx,DWORD PTR [ebp+0x8]
  45c8c3:	50                            push   eax
  45c8c4:	8d 4d f0                      lea    ecx,[ebp-0x10]
  45c8c7:	51                            push   ecx
  45c8c8:	52                            push   edx
  45c8c9:	57                            push   edi
  45c8ca:	56                            push   esi
  45c8cb:	53                            push   ebx
  45c8cc:	c7 45 fc 00 00 00 00          mov    DWORD PTR [ebp-0x4],0x0
  45c8d3:	e8 c8 de ff ff                call   0x45a7a0
  45c8d8:	8b 45 f0                      mov    eax,DWORD PTR [ebp-0x10]
  45c8db:	8b 48 f8                      mov    ecx,DWORD PTR [eax-0x8]
  45c8de:	83 c4 18                      add    esp,0x18
  45c8e1:	85 c9                         test   ecx,ecx
  45c8e3:	74 3c                         je     0x45c921
  45c8e5:	8b 16                         mov    edx,DWORD PTR [esi]
  45c8e7:	8b ce                         mov    ecx,esi
  45c8e9:	ff 92 a4 01 00 00             call   DWORD PTR [edx+0x1a4]
  45c8ef:	85 c0                         test   eax,eax
  45c8f1:	74 18                         je     0x45c90b
  45c8f3:	8b 8b 44 01 00 00             mov    ecx,DWORD PTR [ebx+0x144]
  45c8f9:	8b 07                         mov    eax,DWORD PTR [edi]
  45c8fb:	51                            push   ecx
  45c8fc:	56                            push   esi
  45c8fd:	8d 55 f0                      lea    edx,[ebp-0x10]
  45c900:	52                            push   edx
  45c901:	8b cf                         mov    ecx,edi
  45c903:	ff 90 a8 01 00 00             call   DWORD PTR [eax+0x1a8]
  45c909:	eb 16                         jmp    0x45c921
  45c90b:	8b 8b 44 01 00 00             mov    ecx,DWORD PTR [ebx+0x144]
  45c911:	8b 55 f0                      mov    edx,DWORD PTR [ebp-0x10]
  45c914:	8b 06                         mov    eax,DWORD PTR [esi]
  45c916:	57                            push   edi
  45c917:	51                            push   ecx
  45c918:	52                            push   edx
  45c919:	8b ce                         mov    ecx,esi
  45c91b:	ff 90 58 01 00 00             call   DWORD PTR [eax+0x158]
  45c921:	8d 4d f0                      lea    ecx,[ebp-0x10]
  45c924:	c7 45 fc ff ff ff ff          mov    DWORD PTR [ebp-0x4],0xffffffff
  45c92b:	e8 10 51 07 00                call   0x4d1a40
  45c930:	8b 4d f4                      mov    ecx,DWORD PTR [ebp-0xc]
  45c933:	5f                            pop    edi
  45c934:	5e                            pop    esi
  45c935:	5b                            pop    ebx
  45c936:	64 89 0d 00 00 00 00          mov    DWORD PTR fs:0x0,ecx
  45c93d:	8b e5                         mov    esp,ebp
  45c93f:	5d                            pop    ebp
  45c940:	c3                            ret
; lignes_verifiees_bloc=65

; [0x0045C950,0x0045CAA7) Routine 0x45C950 : controle du contexte, autorisation, notifications initiales
  45c950:	55                            push   ebp
  45c951:	8b ec                         mov    ebp,esp
  45c953:	6a ff                         push   0xffffffff
  45c955:	68 eb 77 4d 00                push   0x4d77eb
  45c95a:	64 a1 00 00 00 00             mov    eax,fs:0x0
  45c960:	50                            push   eax
  45c961:	64 89 25 00 00 00 00          mov    DWORD PTR fs:0x0,esp
  45c968:	81 ec b8 00 00 00             sub    esp,0xb8
  45c96e:	53                            push   ebx
  45c96f:	56                            push   esi
  45c970:	57                            push   edi
  45c971:	68 40 1a 4d 00                push   0x4d1a40
  45c976:	68 5e 1a 4d 00                push   0x4d1a5e
  45c97b:	6a 05                         push   0x5
  45c97d:	6a 04                         push   0x4
  45c97f:	8d 45 88                      lea    eax,[ebp-0x78]
  45c982:	50                            push   eax
  45c983:	89 4d c0                      mov    DWORD PTR [ebp-0x40],ecx
  45c986:	e8 01 54 07 00                call   0x4d1d8c
  45c98b:	8b 7d 10                      mov    edi,DWORD PTR [ebp+0x10]
  45c98e:	33 db                         xor    ebx,ebx
  45c990:	8b cf                         mov    ecx,edi
  45c992:	89 5d fc                      mov    DWORD PTR [ebp-0x4],ebx
  45c995:	89 5d a0                      mov    DWORD PTR [ebp-0x60],ebx
  45c998:	e8 d3 ec 02 00                call   0x48b670
  45c99d:	3c 01                         cmp    al,0x1
  45c99f:	75 07                         jne    0x45c9a8
  45c9a1:	8b cf                         mov    ecx,edi
  45c9a3:	e8 48 e1 fb ff                call   0x41aaf0
  45c9a8:	8b 4d 14                      mov    ecx,DWORD PTR [ebp+0x14]
  45c9ab:	51                            push   ecx
  45c9ac:	8d 4d f0                      lea    ecx,[ebp-0x10]
  45c9af:	e8 b0 50 07 00                call   0x4d1a64
  45c9b4:	8d 4d d4                      lea    ecx,[ebp-0x2c]
  45c9b7:	c6 45 fc 01                   mov    BYTE PTR [ebp-0x4],0x1
  45c9bb:	e8 9e 50 07 00                call   0x4d1a5e
  45c9c0:	8d 55 d4                      lea    edx,[ebp-0x2c]
  45c9c3:	52                            push   edx
  45c9c4:	8d 45 f0                      lea    eax,[ebp-0x10]
  45c9c7:	50                            push   eax
  45c9c8:	c6 45 fc 02                   mov    BYTE PTR [ebp-0x4],0x2
  45c9cc:	e8 0f c0 fe ff                call   0x4489e0
  45c9d1:	83 c4 08                      add    esp,0x8
  45c9d4:	8d 4d d0                      lea    ecx,[ebp-0x30]
  45c9d7:	e8 82 50 07 00                call   0x4d1a5e
  45c9dc:	8b 75 08                      mov    esi,DWORD PTR [ebp+0x8]
  45c9df:	8b 16                         mov    edx,DWORD PTR [esi]
  45c9e1:	8b ce                         mov    ecx,esi
  45c9e3:	c6 45 fc 03                   mov    BYTE PTR [ebp-0x4],0x3
  45c9e7:	ff 52 7c                      call   DWORD PTR [edx+0x7c]
  45c9ea:	3a c3                         cmp    al,bl
  45c9ec:	74 04                         je     0x45c9f2
  45c9ee:	3c 03                         cmp    al,0x3
  45c9f0:	75 34                         jne    0x45ca26
  45c9f2:	89 1d 34 4d 51 00             mov    DWORD PTR ds:0x514d34,ebx
  45c9f8:	8b 06                         mov    eax,DWORD PTR [esi]
  45c9fa:	6a 02                         push   0x2
  45c9fc:	8b ce                         mov    ecx,esi
  45c9fe:	ff 90 80 00 00 00             call   DWORD PTR [eax+0x80]
  45ca04:	8b 16                         mov    edx,DWORD PTR [esi]
  45ca06:	8b ce                         mov    ecx,esi
  45ca08:	ff 92 a4 01 00 00             call   DWORD PTR [edx+0x1a4]
  45ca0e:	85 c0                         test   eax,eax
  45ca10:	75 0b                         jne    0x45ca1d
  45ca12:	8b 06                         mov    eax,DWORD PTR [esi]
  45ca14:	57                            push   edi
  45ca15:	8b ce                         mov    ecx,esi
  45ca17:	ff 90 ac 00 00 00             call   DWORD PTR [eax+0xac]
  45ca1d:	c7 45 a0 01 00 00 00          mov    DWORD PTR [ebp-0x60],0x1
  45ca24:	eb 08                         jmp    0x45ca2e
  45ca26:	3c 02                         cmp    al,0x2
  45ca28:	0f 85 7c 08 00 00             jne    0x45d2aa
  45ca2e:	8b 16                         mov    edx,DWORD PTR [esi]
  45ca30:	8b ce                         mov    ecx,esi
  45ca32:	ff 92 a8 00 00 00             call   DWORD PTR [edx+0xa8]
  45ca38:	3b c7                         cmp    eax,edi
  45ca3a:	0f 84 af 00 00 00             je     0x45caef
  45ca40:	8b 06                         mov    eax,DWORD PTR [esi]
  45ca42:	8b ce                         mov    ecx,esi
  45ca44:	ff 90 a4 01 00 00             call   DWORD PTR [eax+0x1a4]
  45ca4a:	85 c0                         test   eax,eax
  45ca4c:	0f 85 9d 00 00 00             jne    0x45caef
  45ca52:	57                            push   edi
  45ca53:	53                            push   ebx
  45ca54:	e8 67 9d fe ff                call   0x4467c0
  45ca59:	83 c4 08                      add    esp,0x8
  45ca5c:	3b fb                         cmp    edi,ebx
  45ca5e:	75 07                         jne    0x45ca67
  45ca60:	e8 fb 0f fe ff                call   0x43da60
  45ca65:	eb 0a                         jmp    0x45ca71
  45ca67:	8b 17                         mov    edx,DWORD PTR [edi]
  45ca69:	8b cf                         mov    ecx,edi
  45ca6b:	ff 92 94 01 00 00             call   DWORD PTR [edx+0x194]
  45ca71:	68 a4 6b 50 00                push   0x506ba4
  45ca76:	50                            push   eax
  45ca77:	68 7a 1c 00 00                push   0x1c7a
  45ca7c:	e8 6f 0f fe ff                call   0x43d9f0
  45ca81:	83 c4 0c                      add    esp,0xc
  45ca84:	50                            push   eax
  45ca85:	8d 4d 10                      lea    ecx,[ebp+0x10]
  45ca88:	e8 d7 4f 07 00                call   0x4d1a64
  45ca8d:	8b 4d c0                      mov    ecx,DWORD PTR [ebp-0x40]
  45ca90:	8b 89 44 01 00 00             mov    ecx,DWORD PTR [ecx+0x144]
  45ca96:	8b 17                         mov    edx,DWORD PTR [edi]
  45ca98:	51                            push   ecx
  45ca99:	56                            push   esi
  45ca9a:	50                            push   eax
  45ca9b:	8b cf                         mov    ecx,edi
  45ca9d:	c6 45 fc 04                   mov    BYTE PTR [ebp-0x4],0x4
  45caa1:	ff 92 a8 01 00 00             call   DWORD PTR [edx+0x1a8]
; lignes_verifiees_bloc=110

; [0x0045CAF1,0x0045CB59) Routine 0x45C950 : GetRound, creation du conteneur temporaire et extraction des messages
  45caf1:	e8 9a 57 01 00                call   0x472290
  45caf6:	50                            push   eax
  45caf7:	8b ce                         mov    ecx,esi
  45caf9:	ff 97 c0 00 00 00             call   DWORD PTR [edi+0xc0]
  45caff:	8d 45 b7                      lea    eax,[ebp-0x49]
  45cb02:	50                            push   eax
  45cb03:	8d 4d af                      lea    ecx,[ebp-0x51]
  45cb06:	51                            push   ecx
  45cb07:	8d 4d c4                      lea    ecx,[ebp-0x3c]
  45cb0a:	89 5d b8                      mov    DWORD PTR [ebp-0x48],ebx
  45cb0d:	e8 8e 1d 00 00                call   0x45e8a0
  45cb12:	8b 55 c0                      mov    edx,DWORD PTR [ebp-0x40]
  45cb15:	8b 8a 90 01 00 00             mov    ecx,DWORD PTR [edx+0x190]
  45cb1b:	c6 45 fc 05                   mov    BYTE PTR [ebp-0x4],0x5
  45cb1f:	e8 2c d8 05 00                call   0x4ba350
  45cb24:	8b f0                         mov    esi,eax
  45cb26:	8a 45 13                      mov    al,BYTE PTR [ebp+0x13]
  45cb29:	53                            push   ebx
  45cb2a:	53                            push   ebx
  45cb2b:	8d 4d e4                      lea    ecx,[ebp-0x1c]
  45cb2e:	88 45 e4                      mov    BYTE PTR [ebp-0x1c],al
  45cb31:	e8 9a 19 00 00                call   0x45e4d0
  45cb36:	89 45 e8                      mov    DWORD PTR [ebp-0x18],eax
  45cb39:	89 5d ec                      mov    DWORD PTR [ebp-0x14],ebx
  45cb3c:	8b 16                         mov    edx,DWORD PTR [esi]
  45cb3e:	8d 45 e4                      lea    eax,[ebp-0x1c]
  45cb41:	50                            push   eax
  45cb42:	8b ce                         mov    ecx,esi
  45cb44:	c6 45 fc 06                   mov    BYTE PTR [ebp-0x4],0x6
  45cb48:	ff 52 0c                      call   DWORD PTR [edx+0xc]
  45cb4b:	8b 45 e8                      mov    eax,DWORD PTR [ebp-0x18]
  45cb4e:	3b c3                         cmp    eax,ebx
  45cb50:	75 04                         jne    0x45cb56
  45cb52:	33 c9                         xor    ecx,ecx
  45cb54:	eb 02                         jmp    0x45cb58
  45cb56:	8b 08                         mov    ecx,DWORD PTR [eax]
; lignes_verifiees_bloc=36

; [0x0045CECE,0x0045CF95) Six appels contextuels au wrapper 0x45C890 et destruction d une collection
  45cece:	8b 4d bc                      mov    ecx,DWORD PTR [ebp-0x44]
  45ced1:	8b 55 10                      mov    edx,DWORD PTR [ebp+0x10]
  45ced4:	8d 45 c4                      lea    eax,[ebp-0x3c]
  45ced7:	50                            push   eax
  45ced8:	8b 45 08                      mov    eax,DWORD PTR [ebp+0x8]
  45cedb:	51                            push   ecx
  45cedc:	8b 4d c0                      mov    ecx,DWORD PTR [ebp-0x40]
  45cedf:	52                            push   edx
  45cee0:	50                            push   eax
  45cee1:	51                            push   ecx
  45cee2:	e8 a9 f9 ff ff                call   0x45c890
  45cee7:	8b 55 e8                      mov    edx,DWORD PTR [ebp-0x18]
  45ceea:	83 c4 14                      add    esp,0x14
  45ceed:	52                            push   edx
  45ceee:	8d 45 10                      lea    eax,[ebp+0x10]
  45cef1:	50                            push   eax
  45cef2:	8d 4d e4                      lea    ecx,[ebp-0x1c]
  45cef5:	c6 45 fc 05                   mov    BYTE PTR [ebp-0x4],0x5
  45cef9:	e8 72 0d 00 00                call   0x45dc70
  45cefe:	8b 08                         mov    ecx,DWORD PTR [eax]
  45cf00:	51                            push   ecx
  45cf01:	8d 55 08                      lea    edx,[ebp+0x8]
  45cf04:	eb 68                         jmp    0x45cf6e
  45cf06:	8b 45 10                      mov    eax,DWORD PTR [ebp+0x10]
  45cf09:	8b 4d 08                      mov    ecx,DWORD PTR [ebp+0x8]
  45cf0c:	8d 55 c4                      lea    edx,[ebp-0x3c]
  45cf0f:	52                            push   edx
  45cf10:	8b 55 c0                      mov    edx,DWORD PTR [ebp-0x40]
  45cf13:	57                            push   edi
  45cf14:	50                            push   eax
  45cf15:	51                            push   ecx
  45cf16:	52                            push   edx
  45cf17:	e8 74 f9 ff ff                call   0x45c890
  45cf1c:	8b 45 dc                      mov    eax,DWORD PTR [ebp-0x24]
  45cf1f:	83 c4 14                      add    esp,0x14
  45cf22:	50                            push   eax
  45cf23:	8d 4d 10                      lea    ecx,[ebp+0x10]
  45cf26:	51                            push   ecx
  45cf27:	8d 4d d8                      lea    ecx,[ebp-0x28]
  45cf2a:	c6 45 fc 06                   mov    BYTE PTR [ebp-0x4],0x6
  45cf2e:	e8 ad 13 00 00                call   0x45e2e0
  45cf33:	8b 10                         mov    edx,DWORD PTR [eax]
  45cf35:	52                            push   edx
  45cf36:	8d 45 08                      lea    eax,[ebp+0x8]
  45cf39:	50                            push   eax
  45cf3a:	8d 4d d8                      lea    ecx,[ebp-0x28]
  45cf3d:	e8 fe 17 00 00                call   0x45e740
  45cf42:	8b 4d dc                      mov    ecx,DWORD PTR [ebp-0x24]
  45cf45:	51                            push   ecx
  45cf46:	e8 15 51 fe ff                call   0x442060
  45cf4b:	8b 55 e8                      mov    edx,DWORD PTR [ebp-0x18]
  45cf4e:	83 c4 04                      add    esp,0x4
  45cf51:	52                            push   edx
  45cf52:	8d 45 10                      lea    eax,[ebp+0x10]
  45cf55:	50                            push   eax
  45cf56:	8d 4d e4                      lea    ecx,[ebp-0x1c]
  45cf59:	89 5d dc                      mov    DWORD PTR [ebp-0x24],ebx
  45cf5c:	89 5d e0                      mov    DWORD PTR [ebp-0x20],ebx
  45cf5f:	c6 45 fc 05                   mov    BYTE PTR [ebp-0x4],0x5
  45cf63:	e8 08 0d 00 00                call   0x45dc70
  45cf68:	8b 08                         mov    ecx,DWORD PTR [eax]
  45cf6a:	51                            push   ecx
  45cf6b:	8d 55 08                      lea    edx,[ebp+0x8]
  45cf6e:	52                            push   edx
  45cf6f:	8d 4d e4                      lea    ecx,[ebp-0x1c]
  45cf72:	e8 09 15 00 00                call   0x45e480
  45cf77:	8b 45 e8                      mov    eax,DWORD PTR [ebp-0x18]
  45cf7a:	50                            push   eax
  45cf7b:	e8 e0 50 fe ff                call   0x442060
  45cf80:	83 c4 04                      add    esp,0x4
  45cf83:	8d 4d c4                      lea    ecx,[ebp-0x3c]
  45cf86:	89 5d e8                      mov    DWORD PTR [ebp-0x18],ebx
  45cf89:	89 5d ec                      mov    DWORD PTR [ebp-0x14],ebx
  45cf8c:	c6 45 fc 03                   mov    BYTE PTR [ebp-0x4],0x3
  45cf90:	e8 3b 14 00 00                call   0x45e3d0
; lignes_verifiees_bloc=75

; [0x0045CF9A,0x0045D112) Suite des choix de messages, iterations et appels au wrapper
  45cf9a:	8b 45 bc                      mov    eax,DWORD PTR [ebp-0x44]
  45cf9d:	8b 4d 10                      mov    ecx,DWORD PTR [ebp+0x10]
  45cfa0:	8d 55 c4                      lea    edx,[ebp-0x3c]
  45cfa3:	52                            push   edx
  45cfa4:	8b 55 08                      mov    edx,DWORD PTR [ebp+0x8]
  45cfa7:	50                            push   eax
  45cfa8:	8b 45 c0                      mov    eax,DWORD PTR [ebp-0x40]
  45cfab:	51                            push   ecx
  45cfac:	52                            push   edx
  45cfad:	50                            push   eax
  45cfae:	e8 dd f8 ff ff                call   0x45c890
  45cfb3:	8b 45 dc                      mov    eax,DWORD PTR [ebp-0x24]
  45cfb6:	83 c4 14                      add    esp,0x14
  45cfb9:	3b c3                         cmp    eax,ebx
  45cfbb:	c6 45 fc 06                   mov    BYTE PTR [ebp-0x4],0x6
  45cfbf:	75 04                         jne    0x45cfc5
  45cfc1:	33 c9                         xor    ecx,ecx
  45cfc3:	eb 02                         jmp    0x45cfc7
  45cfc5:	8b 08                         mov    ecx,DWORD PTR [eax]
  45cfc7:	3b c8                         cmp    ecx,eax
  45cfc9:	8b f0                         mov    esi,eax
  45cfcb:	89 4d 10                      mov    DWORD PTR [ebp+0x10],ecx
  45cfce:	74 24                         je     0x45cff4
  45cfd0:	53                            push   ebx
  45cfd1:	8d 4d 08                      lea    ecx,[ebp+0x8]
  45cfd4:	51                            push   ecx
  45cfd5:	8d 4d 10                      lea    ecx,[ebp+0x10]
  45cfd8:	e8 33 13 00 00                call   0x45e310
  45cfdd:	8b 10                         mov    edx,DWORD PTR [eax]
  45cfdf:	52                            push   edx
  45cfe0:	8d 45 14                      lea    eax,[ebp+0x14]
  45cfe3:	50                            push   eax
  45cfe4:	8d 4d d8                      lea    ecx,[ebp-0x28]
  45cfe7:	e8 d4 0d fd ff                call   0x42ddc0
  45cfec:	39 75 10                      cmp    DWORD PTR [ebp+0x10],esi
  45cfef:	75 df                         jne    0x45cfd0
  45cff1:	8b 45 dc                      mov    eax,DWORD PTR [ebp-0x24]
  45cff4:	50                            push   eax
  45cff5:	e8 66 50 fe ff                call   0x442060
  45cffa:	8b 45 e8                      mov    eax,DWORD PTR [ebp-0x18]
  45cffd:	83 c4 04                      add    esp,0x4
  45d000:	3b c3                         cmp    eax,ebx
  45d002:	89 5d dc                      mov    DWORD PTR [ebp-0x24],ebx
  45d005:	89 5d e0                      mov    DWORD PTR [ebp-0x20],ebx
  45d008:	c6 45 fc 05                   mov    BYTE PTR [ebp-0x4],0x5
  45d00c:	75 04                         jne    0x45d012
  45d00e:	33 c9                         xor    ecx,ecx
  45d010:	eb 02                         jmp    0x45d014
  45d012:	8b 08                         mov    ecx,DWORD PTR [eax]
  45d014:	3b c8                         cmp    ecx,eax
  45d016:	8b f0                         mov    esi,eax
  45d018:	89 4d 10                      mov    DWORD PTR [ebp+0x10],ecx
  45d01b:	74 24                         je     0x45d041
  45d01d:	53                            push   ebx
  45d01e:	8d 4d 08                      lea    ecx,[ebp+0x8]
  45d021:	51                            push   ecx
  45d022:	8d 4d 10                      lea    ecx,[ebp+0x10]
  45d025:	e8 76 0c 00 00                call   0x45dca0
  45d02a:	8b 10                         mov    edx,DWORD PTR [eax]
  45d02c:	52                            push   edx
  45d02d:	8d 45 14                      lea    eax,[ebp+0x14]
  45d030:	50                            push   eax
  45d031:	8d 4d e4                      lea    ecx,[ebp-0x1c]
  45d034:	e8 c7 1a 00 00                call   0x45eb00
  45d039:	39 75 10                      cmp    DWORD PTR [ebp+0x10],esi
  45d03c:	75 df                         jne    0x45d01d
  45d03e:	8b 45 e8                      mov    eax,DWORD PTR [ebp-0x18]
  45d041:	50                            push   eax
  45d042:	e8 19 50 fe ff                call   0x442060
  45d047:	8b 45 c8                      mov    eax,DWORD PTR [ebp-0x38]
  45d04a:	83 c4 04                      add    esp,0x4
  45d04d:	89 5d e8                      mov    DWORD PTR [ebp-0x18],ebx
  45d050:	89 5d ec                      mov    DWORD PTR [ebp-0x14],ebx
  45d053:	8b 08                         mov    ecx,DWORD PTR [eax]
  45d055:	50                            push   eax
  45d056:	51                            push   ecx
  45d057:	c6 45 fc 03                   mov    BYTE PTR [ebp-0x4],0x3
  45d05b:	8d 4d 10                      lea    ecx,[ebp+0x10]
  45d05e:	e9 6e 01 00 00                jmp    0x45d1d1
  45d063:	8b 55 10                      mov    edx,DWORD PTR [ebp+0x10]
  45d066:	8b 45 08                      mov    eax,DWORD PTR [ebp+0x8]
  45d069:	8d 4d c4                      lea    ecx,[ebp-0x3c]
  45d06c:	51                            push   ecx
  45d06d:	8b 4d c0                      mov    ecx,DWORD PTR [ebp-0x40]
  45d070:	57                            push   edi
  45d071:	52                            push   edx
  45d072:	50                            push   eax
  45d073:	51                            push   ecx
  45d074:	e8 17 f8 ff ff                call   0x45c890
  45d079:	8b 55 dc                      mov    edx,DWORD PTR [ebp-0x24]
  45d07c:	83 c4 14                      add    esp,0x14
  45d07f:	52                            push   edx
  45d080:	8d 45 10                      lea    eax,[ebp+0x10]
  45d083:	50                            push   eax
  45d084:	8d 4d d8                      lea    ecx,[ebp-0x28]
  45d087:	c6 45 fc 06                   mov    BYTE PTR [ebp-0x4],0x6
  45d08b:	e8 50 12 00 00                call   0x45e2e0
  45d090:	8b 08                         mov    ecx,DWORD PTR [eax]
  45d092:	51                            push   ecx
  45d093:	8d 55 08                      lea    edx,[ebp+0x8]
  45d096:	52                            push   edx
  45d097:	8d 4d d8                      lea    ecx,[ebp-0x28]
  45d09a:	e8 a1 16 00 00                call   0x45e740
  45d09f:	8b 45 dc                      mov    eax,DWORD PTR [ebp-0x24]
  45d0a2:	50                            push   eax
  45d0a3:	e8 b8 4f fe ff                call   0x442060
  45d0a8:	8b 4d e8                      mov    ecx,DWORD PTR [ebp-0x18]
  45d0ab:	83 c4 04                      add    esp,0x4
  45d0ae:	51                            push   ecx
  45d0af:	8d 55 10                      lea    edx,[ebp+0x10]
  45d0b2:	52                            push   edx
  45d0b3:	8d 4d e4                      lea    ecx,[ebp-0x1c]
  45d0b6:	89 5d dc                      mov    DWORD PTR [ebp-0x24],ebx
  45d0b9:	89 5d e0                      mov    DWORD PTR [ebp-0x20],ebx
  45d0bc:	c6 45 fc 05                   mov    BYTE PTR [ebp-0x4],0x5
  45d0c0:	e8 ab 0b 00 00                call   0x45dc70
  45d0c5:	8b 00                         mov    eax,DWORD PTR [eax]
  45d0c7:	50                            push   eax
  45d0c8:	8d 4d 08                      lea    ecx,[ebp+0x8]
  45d0cb:	51                            push   ecx
  45d0cc:	8d 4d e4                      lea    ecx,[ebp-0x1c]
  45d0cf:	e8 ac 13 00 00                call   0x45e480
  45d0d4:	8b 55 e8                      mov    edx,DWORD PTR [ebp-0x18]
  45d0d7:	52                            push   edx
  45d0d8:	e8 83 4f fe ff                call   0x442060
  45d0dd:	83 c4 04                      add    esp,0x4
  45d0e0:	8d 4d c4                      lea    ecx,[ebp-0x3c]
  45d0e3:	89 5d e8                      mov    DWORD PTR [ebp-0x18],ebx
  45d0e6:	89 5d ec                      mov    DWORD PTR [ebp-0x14],ebx
  45d0e9:	c6 45 fc 03                   mov    BYTE PTR [ebp-0x4],0x3
  45d0ed:	e8 de 12 00 00                call   0x45e3d0
  45d0f2:	e9 f5 00 00 00                jmp    0x45d1ec
  45d0f7:	8b 55 10                      mov    edx,DWORD PTR [ebp+0x10]
  45d0fa:	8b 45 08                      mov    eax,DWORD PTR [ebp+0x8]
  45d0fd:	8d 4d c4                      lea    ecx,[ebp-0x3c]
  45d100:	51                            push   ecx
  45d101:	8b 4d c0                      mov    ecx,DWORD PTR [ebp-0x40]
  45d104:	57                            push   edi
  45d105:	52                            push   edx
  45d106:	50                            push   eax
  45d107:	51                            push   ecx
  45d108:	e8 83 f7 ff ff                call   0x45c890
  45d10d:	8b 55 dc                      mov    edx,DWORD PTR [ebp-0x24]
; lignes_verifiees_bloc=143

; [0x0045D215,0x0045D2AA) Suite de la construction et de la selection de reponses
  45d216:	6a 04                         push   0x4
  45d218:	8d 45 88                      lea    eax,[ebp-0x78]
  45d21b:	c7 45 fc ff ff ff ff          mov    DWORD PTR [ebp-0x4],0xffffffff
  45d222:	50                            push   eax
  45d223:	e9 b9 00 00 00                jmp    0x45d2e1
  45d228:	8b 55 b8                      mov    edx,DWORD PTR [ebp-0x48]
  45d22b:	8b 45 10                      mov    eax,DWORD PTR [ebp+0x10]
  45d22e:	8d 4d c4                      lea    ecx,[ebp-0x3c]
  45d231:	51                            push   ecx
  45d232:	8b 4d 08                      mov    ecx,DWORD PTR [ebp+0x8]
  45d235:	52                            push   edx
  45d236:	8b 55 c0                      mov    edx,DWORD PTR [ebp-0x40]
  45d239:	50                            push   eax
  45d23a:	51                            push   ecx
  45d23b:	52                            push   edx
  45d23c:	e8 4f f6 ff ff                call   0x45c890
  45d241:	8b 45 e8                      mov    eax,DWORD PTR [ebp-0x18]
  45d244:	83 c4 14                      add    esp,0x14
  45d247:	3b c3                         cmp    eax,ebx
  45d249:	c6 45 fc 05                   mov    BYTE PTR [ebp-0x4],0x5
  45d24d:	75 04                         jne    0x45d253
  45d24f:	33 c9                         xor    ecx,ecx
  45d251:	eb 02                         jmp    0x45d255
  45d253:	8b 08                         mov    ecx,DWORD PTR [eax]
  45d255:	50                            push   eax
  45d256:	51                            push   ecx
  45d257:	8d 45 10                      lea    eax,[ebp+0x10]
  45d25a:	50                            push   eax
  45d25b:	8d 4d e4                      lea    ecx,[ebp-0x1c]
  45d25e:	e8 1d 12 00 00                call   0x45e480
  45d263:	8b 4d e8                      mov    ecx,DWORD PTR [ebp-0x18]
  45d266:	51                            push   ecx
  45d267:	e8 f4 4d fe ff                call   0x442060
  45d26c:	8b 55 c8                      mov    edx,DWORD PTR [ebp-0x38]
  45d26f:	83 c4 04                      add    esp,0x4
  45d272:	52                            push   edx
  45d273:	8d 45 14                      lea    eax,[ebp+0x14]
  45d276:	50                            push   eax
  45d277:	8d 4d c4                      lea    ecx,[ebp-0x3c]
  45d27a:	89 5d e8                      mov    DWORD PTR [ebp-0x18],ebx
  45d27d:	89 5d ec                      mov    DWORD PTR [ebp-0x14],ebx
  45d280:	c6 45 fc 03                   mov    BYTE PTR [ebp-0x4],0x3
  45d284:	e8 67 16 00 00                call   0x45e8f0
  45d289:	8b 08                         mov    ecx,DWORD PTR [eax]
  45d28b:	51                            push   ecx
  45d28c:	8d 55 9c                      lea    edx,[ebp-0x64]
  45d28f:	52                            push   edx
  45d290:	8d 4d c4                      lea    ecx,[ebp-0x3c]
  45d293:	e8 78 16 00 00                call   0x45e910
  45d298:	8b 45 c8                      mov    eax,DWORD PTR [ebp-0x38]
  45d29b:	50                            push   eax
  45d29c:	e8 bf 4d fe ff                call   0x442060
  45d2a1:	83 c4 04                      add    esp,0x4
  45d2a4:	89 5d c8                      mov    DWORD PTR [ebp-0x38],ebx
  45d2a7:	89 5d cc                      mov    DWORD PTR [ebp-0x34],ebx
; lignes_verifiees_bloc=55
