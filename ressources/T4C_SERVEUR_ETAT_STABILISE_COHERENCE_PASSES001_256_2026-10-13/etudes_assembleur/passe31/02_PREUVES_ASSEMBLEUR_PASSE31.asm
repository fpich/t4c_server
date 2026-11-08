; Passe 31 | T4C Server.exe | PE32 x86 | code original, analyses statiques.
; Les octets de chaque ligne ci-dessous sont compares au fichier exécutable.
; Rien dans ces extraits ne provient du developpement d’un serveur Python.

; SpellEffect::CreateEffectStatus 0x460820..0x46097b: S2C83, notification creation
  460820:  55                          push   ebp
  460821:  8b ec                       mov    ebp,esp
  460823:  6a ff                       push   0xffffffff
  460825:  68 61 79 4d 00              push   0x4d7961
  46082a:  64 a1 00 00 00 00           mov    eax,fs:0x0
  460830:  50                          push   eax
  460831:  64 89 25 00 00 00 00        mov    DWORD PTR fs:0x0,esp
  460838:  83 ec 28                    sub    esp,0x28
  46083b:  53                          push   ebx
  46083c:  56                          push   esi
  46083d:  8b 75 08                    mov    esi,DWORD PTR [ebp+0x8]
  460840:  8b 06                       mov    eax,DWORD PTR [esi]
  460842:  57                          push   edi
  460843:  8b ce                       mov    ecx,esi
  460845:  ff 90 94 01 00 00           call   DWORD PTR [eax+0x194]
  46084b:  8d 4d e4                    lea    ecx,[ebp-0x1c]
  46084e:  50                          push   eax
  46084f:  51                          push   ecx
  460850:  8b 4d 18                    mov    ecx,DWORD PTR [ebp+0x18]
  460853:  e8 b8 ec fb ff              call   0x41f510
  460858:  8b 45 ec                    mov    eax,DWORD PTR [ebp-0x14]
  46085b:  85 c0                       test   eax,eax
  46085d:  c7 45 fc 00 00 00 00        mov    DWORD PTR [ebp-0x4],0x0
  460864:  75 34                       jne    0x46089a
  460866:  8b 4d e8                    mov    ecx,DWORD PTR [ebp-0x18]
  460869:  85 c9                       test   ecx,ecx
  46086b:  0f 84 f9 00 00 00           je     0x46096a
  460871:  8a 41 ff                    mov    al,BYTE PTR [ecx-0x1]
  460874:  84 c0                       test   al,al
  460876:  0f 84 e4 00 00 00           je     0x460960
  46087c:  3c ff                       cmp    al,0xff
  46087e:  0f 84 dc 00 00 00           je     0x460960
  460884:  fe c8                       dec    al
  460886:  88 41 ff                    mov    BYTE PTR [ecx-0x1],al
  460889:  8b 4d f4                    mov    ecx,DWORD PTR [ebp-0xc]
  46088c:  64 89 0d 00 00 00 00        mov    DWORD PTR fs:0x0,ecx
  460893:  5f                          pop    edi
  460894:  5e                          pop    esi
  460895:  5b                          pop    ebx
  460896:  8b e5                       mov    esp,ebp
  460898:  5d                          pop    ebp
  460899:  c3                          ret
  46089a:  50                          push   eax
  46089b:  8b 45 04                    mov    eax,DWORD PTR [ebp+0x4]
  46089e:  89 45 08                    mov    DWORD PTR [ebp+0x8],eax
  4608a1:  58                          pop    eax
  4608a2:  8b 55 08                    mov    edx,DWORD PTR [ebp+0x8]
  4608a5:  8b 7d 14                    mov    edi,DWORD PTR [ebp+0x14]
  4608a8:  8b 5d 10                    mov    ebx,DWORD PTR [ebp+0x10]
  4608ab:  8b 45 0c                    mov    eax,DWORD PTR [ebp+0xc]
  4608ae:  52                          push   edx
  4608af:  57                          push   edi
  4608b0:  53                          push   ebx
  4608b1:  50                          push   eax
  4608b2:  8b ce                       mov    ecx,esi
  4608b4:  e8 47 ae 02 00              call   0x48b700
  4608b9:  50                          push   eax
  4608ba:  68 f8 6c 50 00              push   0x506cf8
  4608bf:  68 00 04 00 00              push   0x400
  4608c4:  e8 77 14 01 00              call   0x471d40
  4608c9:  83 c4 1c                    add    esp,0x1c
  4608cc:  8d 4d cc                    lea    ecx,[ebp-0x34]
  4608cf:  e8 1c 55 02 00              call   0x485df0
  4608d4:  6a 53                       push   0x53
  4608d6:  8d 4d cc                    lea    ecx,[ebp-0x34]
  4608d9:  c6 45 fc 01                 mov    BYTE PTR [ebp-0x4],0x1
  4608dd:  e8 6e 58 02 00              call   0x486150
  4608e2:  8b 4d 0c                    mov    ecx,DWORD PTR [ebp+0xc]
  4608e5:  51                          push   ecx
  4608e6:  8d 4d cc                    lea    ecx,[ebp-0x34]
  4608e9:  e8 02 59 02 00              call   0x4861f0
  4608ee:  53                          push   ebx
  4608ef:  8d 4d cc                    lea    ecx,[ebp-0x34]
  4608f2:  e8 f9 58 02 00              call   0x4861f0
  4608f7:  57                          push   edi
  4608f8:  8d 4d cc                    lea    ecx,[ebp-0x34]
  4608fb:  e8 f0 58 02 00              call   0x4861f0
  460900:  8b 55 18                    mov    edx,DWORD PTR [ebp+0x18]
  460903:  8b 82 44 02 00 00           mov    eax,DWORD PTR [edx+0x244]
  460909:  50                          push   eax
  46090a:  8d 4d cc                    lea    ecx,[ebp-0x34]
  46090d:  e8 de 58 02 00              call   0x4861f0
  460912:  8d 4d e4                    lea    ecx,[ebp-0x1c]
  460915:  51                          push   ecx
  460916:  8d 4d cc                    lea    ecx,[ebp-0x34]
  460919:  e8 12 5a 02 00              call   0x486330
  46091e:  8b 16                       mov    edx,DWORD PTR [esi]
  460920:  8d 45 cc                    lea    eax,[ebp-0x34]
  460923:  50                          push   eax
  460924:  8b ce                       mov    ecx,esi
  460926:  ff 92 4c 01 00 00           call   DWORD PTR [edx+0x14c]
  46092c:  8d 4d cc                    lea    ecx,[ebp-0x34]
  46092f:  c6 45 fc 00                 mov    BYTE PTR [ebp-0x4],0x0
  460933:  e8 48 55 02 00              call   0x485e80
  460938:  8b 4d e8                    mov    ecx,DWORD PTR [ebp-0x18]
  46093b:  85 c9                       test   ecx,ecx
  46093d:  74 2b                       je     0x46096a
  46093f:  8a 41 ff                    mov    al,BYTE PTR [ecx-0x1]
  460942:  84 c0                       test   al,al
  460944:  74 1a                       je     0x460960
  460946:  3c ff                       cmp    al,0xff
  460948:  74 16                       je     0x460960
  46094a:  fe c8                       dec    al
  46094c:  88 41 ff                    mov    BYTE PTR [ecx-0x1],al
  46094f:  8b 4d f4                    mov    ecx,DWORD PTR [ebp-0xc]
  460952:  64 89 0d 00 00 00 00        mov    DWORD PTR fs:0x0,ecx
  460959:  5f                          pop    edi
  46095a:  5e                          pop    esi
  46095b:  5b                          pop    ebx
  46095c:  8b e5                       mov    esp,ebp
  46095e:  5d                          pop    ebp
  46095f:  c3                          ret
  460960:  49                          dec    ecx
  460961:  51                          push   ecx
  460962:  e8 f9 16 fe ff              call   0x442060
  460967:  83 c4 04                    add    esp,0x4
  46096a:  8b 4d f4                    mov    ecx,DWORD PTR [ebp-0xc]
  46096d:  5f                          pop    edi
  46096e:  5e                          pop    esi
  46096f:  64 89 0d 00 00 00 00        mov    DWORD PTR fs:0x0,ecx
  460976:  5b                          pop    ebx
  460977:  8b e5                       mov    esp,ebp
  460979:  5d                          pop    ebp
  46097a:  c3                          ret

; SpellEffect::DispellEffectStatus 0x460980..0x460a1d: S2C84, notification retrait
  460980:  55                          push   ebp
  460981:  8b ec                       mov    ebp,esp
  460983:  6a ff                       push   0xffffffff
  460985:  68 78 79 4d 00              push   0x4d7978
  46098a:  64 a1 00 00 00 00           mov    eax,fs:0x0
  460990:  50                          push   eax
  460991:  64 89 25 00 00 00 00        mov    DWORD PTR fs:0x0,esp
  460998:  83 ec 1c                    sub    esp,0x1c
  46099b:  56                          push   esi
  46099c:  57                          push   edi
  46099d:  50                          push   eax
  46099e:  8b 45 04                    mov    eax,DWORD PTR [ebp+0x4]
  4609a1:  89 45 f0                    mov    DWORD PTR [ebp-0x10],eax
  4609a4:  58                          pop    eax
  4609a5:  8b 45 f0                    mov    eax,DWORD PTR [ebp-0x10]
  4609a8:  8b 7d 0c                    mov    edi,DWORD PTR [ebp+0xc]
  4609ab:  8b 75 08                    mov    esi,DWORD PTR [ebp+0x8]
  4609ae:  50                          push   eax
  4609af:  57                          push   edi
  4609b0:  8b ce                       mov    ecx,esi
  4609b2:  e8 49 ad 02 00              call   0x48b700
  4609b7:  50                          push   eax
  4609b8:  68 4c 6d 50 00              push   0x506d4c
  4609bd:  68 00 04 00 00              push   0x400
  4609c2:  e8 79 13 01 00              call   0x471d40
  4609c7:  83 c4 14                    add    esp,0x14
  4609ca:  8d 4d d8                    lea    ecx,[ebp-0x28]
  4609cd:  e8 1e 54 02 00              call   0x485df0
  4609d2:  6a 54                       push   0x54
  4609d4:  8d 4d d8                    lea    ecx,[ebp-0x28]
  4609d7:  c7 45 fc 00 00 00 00        mov    DWORD PTR [ebp-0x4],0x0
  4609de:  e8 6d 57 02 00              call   0x486150
  4609e3:  57                          push   edi
  4609e4:  8d 4d d8                    lea    ecx,[ebp-0x28]
  4609e7:  e8 04 58 02 00              call   0x4861f0
  4609ec:  8b 16                       mov    edx,DWORD PTR [esi]
  4609ee:  8d 45 d8                    lea    eax,[ebp-0x28]
  4609f1:  50                          push   eax
  4609f2:  8b ce                       mov    ecx,esi
  4609f4:  ff 92 4c 01 00 00           call   DWORD PTR [edx+0x14c]
  4609fa:  8d 4d d8                    lea    ecx,[ebp-0x28]
  4609fd:  c7 45 fc ff ff ff ff        mov    DWORD PTR [ebp-0x4],0xffffffff
  460a04:  e8 77 54 02 00              call   0x485e80
  460a09:  8b 4d f4                    mov    ecx,DWORD PTR [ebp-0xc]
  460a0c:  5f                          pop    edi
  460a0d:  64 89 0d 00 00 00 00        mov    DWORD PTR fs:0x0,ecx
  460a14:  5e                          pop    esi
  460a15:  8b e5                       mov    esp,ebp
  460a17:  5d                          pop    ebp
  460a18:  c3                          ret

; SpellEffectManager::Destroy 0x460a70..0x460bd0: destruction registre effets
  460a70:  8b 15 84 4d 51 00           mov    edx,DWORD PTR ds:0x514d84
  460a76:  56                          push   esi
  460a77:  33 f6                       xor    esi,esi
  460a79:  8b c2                       mov    eax,edx
  460a7b:  33 c9                       xor    ecx,ecx
  460a7d:  a3 80 4d 51 00              mov    ds:0x514d80,eax
  460a82:  89 0d a0 4d 51 00           mov    DWORD PTR ds:0x514da0,ecx
  460a88:  c6 05 94 4d 51 00 08        mov    BYTE PTR ds:0x514d94,0x8
  460a8f:  3b ce                       cmp    ecx,esi
  460a91:  74 09                       je     0x460a9c
  460a93:  8b 00                       mov    eax,DWORD PTR [eax]
  460a95:  a3 80 4d 51 00              mov    ds:0x514d80,eax
  460a9a:  eb 0b                       jmp    0x460aa7
  460a9c:  b9 01 00 00 00              mov    ecx,0x1
  460aa1:  89 0d a0 4d 51 00           mov    DWORD PTR ds:0x514da0,ecx
  460aa7:  3b c6                       cmp    eax,esi
  460aa9:  0f 84 01 01 00 00           je     0x460bb0
  460aaf:  ff 0d 98 4d 51 00           dec    DWORD PTR ds:0x514d98
  460ab5:  8b 0d 88 4d 51 00           mov    ecx,DWORD PTR ds:0x514d88
  460abb:  3b c1                       cmp    eax,ecx
  460abd:  a3 8c 4d 51 00              mov    ds:0x514d8c,eax
  460ac2:  74 4d                       je     0x460b11
  460ac4:  3b c2                       cmp    eax,edx
  460ac6:  74 45                       je     0x460b0d
  460ac8:  8b 08                       mov    ecx,DWORD PTR [eax]
  460aca:  8b 50 04                    mov    edx,DWORD PTR [eax+0x4]
  460acd:  89 51 04                    mov    DWORD PTR [ecx+0x4],edx
  460ad0:  a1 80 4d 51 00              mov    eax,ds:0x514d80
  460ad5:  8b 48 04                    mov    ecx,DWORD PTR [eax+0x4]
  460ad8:  8b 10                       mov    edx,DWORD PTR [eax]
  460ada:  89 11                       mov    DWORD PTR [ecx],edx
  460adc:  a1 a0 4d 51 00              mov    eax,ds:0x514da0
  460ae1:  83 f8 01                    cmp    eax,0x1
  460ae4:  75 13                       jne    0x460af9
  460ae6:  a1 80 4d 51 00              mov    eax,ds:0x514d80
  460aeb:  8b 48 04                    mov    ecx,DWORD PTR [eax+0x4]
  460aee:  89 0d 80 4d 51 00           mov    DWORD PTR ds:0x514d80,ecx
  460af4:  e9 84 00 00 00              jmp    0x460b7d
  460af9:  83 f8 02                    cmp    eax,0x2
  460afc:  75 7f                       jne    0x460b7d
  460afe:  8b 15 80 4d 51 00           mov    edx,DWORD PTR ds:0x514d80
  460b04:  8b 02                       mov    eax,DWORD PTR [edx]
  460b06:  a3 80 4d 51 00              mov    ds:0x514d80,eax
  460b0b:  eb 70                       jmp    0x460b7d
  460b0d:  3b c1                       cmp    eax,ecx
  460b0f:  75 2a                       jne    0x460b3b
  460b11:  3b c2                       cmp    eax,edx
  460b13:  74 2a                       je     0x460b3f
  460b15:  8b 48 04                    mov    ecx,DWORD PTR [eax+0x4]
  460b18:  89 31                       mov    DWORD PTR [ecx],esi
  460b1a:  a1 80 4d 51 00              mov    eax,ds:0x514d80
  460b1f:  8b 50 04                    mov    edx,DWORD PTR [eax+0x4]
  460b22:  89 15 88 4d 51 00           mov    DWORD PTR ds:0x514d88,edx
  460b28:  8b 40 04                    mov    eax,DWORD PTR [eax+0x4]
  460b2b:  a3 80 4d 51 00              mov    ds:0x514d80,eax
  460b30:  83 3d a0 4d 51 00 02        cmp    DWORD PTR ds:0x514da0,0x2
  460b37:  75 44                       jne    0x460b7d
  460b39:  eb 3c                       jmp    0x460b77
  460b3b:  3b c2                       cmp    eax,edx
  460b3d:  75 26                       jne    0x460b65
  460b3f:  3b c1                       cmp    eax,ecx
  460b41:  74 22                       je     0x460b65
  460b43:  8b 08                       mov    ecx,DWORD PTR [eax]
  460b45:  89 71 04                    mov    DWORD PTR [ecx+0x4],esi
  460b48:  8b 15 80 4d 51 00           mov    edx,DWORD PTR ds:0x514d80
  460b4e:  8b 02                       mov    eax,DWORD PTR [edx]
  460b50:  a3 80 4d 51 00              mov    ds:0x514d80,eax
  460b55:  a3 84 4d 51 00              mov    ds:0x514d84,eax
  460b5a:  83 3d a0 4d 51 00 01        cmp    DWORD PTR ds:0x514da0,0x1
  460b61:  75 1a                       jne    0x460b7d
  460b63:  eb 12                       jmp    0x460b77
  460b65:  89 35 80 4d 51 00           mov    DWORD PTR ds:0x514d80,esi
  460b6b:  89 35 84 4d 51 00           mov    DWORD PTR ds:0x514d84,esi
  460b71:  89 35 88 4d 51 00           mov    DWORD PTR ds:0x514d88,esi
  460b77:  89 35 a0 4d 51 00           mov    DWORD PTR ds:0x514da0,esi
  460b7d:  a1 8c 4d 51 00              mov    eax,ds:0x514d8c
  460b82:  8b 48 08                    mov    ecx,DWORD PTR [eax+0x8]
  460b85:  51                          push   ecx
  460b86:  e8 d5 14 fe ff              call   0x442060
  460b8b:  8b 15 8c 4d 51 00           mov    edx,DWORD PTR ds:0x514d8c
  460b91:  52                          push   edx
  460b92:  e8 c9 14 fe ff              call   0x442060
  460b97:  a1 80 4d 51 00              mov    eax,ds:0x514d80
  460b9c:  8b 15 84 4d 51 00           mov    edx,DWORD PTR ds:0x514d84
  460ba2:  8b 0d a0 4d 51 00           mov    ecx,DWORD PTR ds:0x514da0
  460ba8:  83 c4 08                    add    esp,0x8
  460bab:  e9 df fe ff ff              jmp    0x460a8f
  460bb0:  3b ce                       cmp    ecx,esi
  460bb2:  74 07                       je     0x460bbb
  460bb4:  c6 05 94 4d 51 00 07        mov    BYTE PTR ds:0x514d94,0x7
  460bbb:  89 35 a0 4d 51 00           mov    DWORD PTR ds:0x514da0,esi
  460bc1:  5e                          pop    esi
  460bc2:  c3                          ret

; SpellEffectManager::RegisterSuperstructure 0x460bd0..0x460bf7: ajout constructeur virtuel
  460bd0:  55                          push   ebp
  460bd1:  8b ec                       mov    ebp,esp
  460bd3:  6a 08                       push   0x8
  460bd5:  e8 16 14 fe ff              call   0x441ff0
  460bda:  8b 4d 08                    mov    ecx,DWORD PTR [ebp+0x8]
  460bdd:  66 8b 55 0c                 mov    dx,WORD PTR [ebp+0xc]
  460be1:  83 c4 04                    add    esp,0x4
  460be4:  89 08                       mov    DWORD PTR [eax],ecx
  460be6:  50                          push   eax
  460be7:  b9 60 4d 51 00              mov    ecx,0x514d60
  460bec:  66 89 50 04                 mov    WORD PTR [eax+0x4],dx
  460bf0:  e8 5b 02 00 00              call   0x460e50
  460bf5:  5d                          pop    ebp
  460bf6:  c3                          ret

; SpellEffectManager::GetEffectObject 0x460c00..0x460c84: recherche type et appel fabrique
  460c00:  55                          push   ebp
  460c01:  8b ec                       mov    ebp,esp
  460c03:  8b 0d 84 4d 51 00           mov    ecx,DWORD PTR ds:0x514d84
  460c09:  53                          push   ebx
  460c0a:  56                          push   esi
  460c0b:  8b 75 0c                    mov    esi,DWORD PTR [ebp+0xc]
  460c0e:  33 c0                       xor    eax,eax
  460c10:  33 d2                       xor    edx,edx
  460c12:  57                          push   edi
  460c13:  66 8b 7d 08                 mov    di,WORD PTR [ebp+0x8]
  460c17:  89 0d 80 4d 51 00           mov    DWORD PTR ds:0x514d80,ecx
  460c1d:  89 15 a0 4d 51 00           mov    DWORD PTR ds:0x514da0,edx
  460c23:  c6 05 94 4d 51 00 08        mov    BYTE PTR ds:0x514d94,0x8
  460c2a:  85 d2                       test   edx,edx
  460c2c:  74 0a                       je     0x460c38
  460c2e:  8b 09                       mov    ecx,DWORD PTR [ecx]
  460c30:  89 0d 80 4d 51 00           mov    DWORD PTR ds:0x514d80,ecx
  460c36:  eb 0b                       jmp    0x460c43
  460c38:  ba 01 00 00 00              mov    edx,0x1
  460c3d:  89 15 a0 4d 51 00           mov    DWORD PTR ds:0x514da0,edx
  460c43:  85 c9                       test   ecx,ecx
  460c45:  74 23                       je     0x460c6a
  460c47:  85 c0                       test   eax,eax
  460c49:  75 34                       jne    0x460c7f
  460c4b:  8b 59 08                    mov    ebx,DWORD PTR [ecx+0x8]
  460c4e:  66 39 7b 04                 cmp    WORD PTR [ebx+0x4],di
  460c52:  75 d6                       jne    0x460c2a
  460c54:  8b c3                       mov    eax,ebx
  460c56:  56                          push   esi
  460c57:  ff 10                       call   DWORD PTR [eax]
  460c59:  8b 0d 80 4d 51 00           mov    ecx,DWORD PTR ds:0x514d80
  460c5f:  8b 15 a0 4d 51 00           mov    edx,DWORD PTR ds:0x514da0
  460c65:  83 c4 04                    add    esp,0x4
  460c68:  eb c0                       jmp    0x460c2a
  460c6a:  85 d2                       test   edx,edx
  460c6c:  74 07                       je     0x460c75
  460c6e:  c6 05 94 4d 51 00 07        mov    BYTE PTR ds:0x514d94,0x7
  460c75:  c7 05 a0 4d 51 00 00        mov    DWORD PTR ds:0x514da0,0x0
  460c7c:  00 00 00                    
  460c7f:  5f                          pop    edi
  460c80:  5e                          pop    esi
  460c81:  5b                          pop    ebx
  460c82:  5d                          pop    ebp
  460c83:  c3                          ret

; UnitEffectManager::RegisterEffect 0x490b10..0x490b35: enregistrement callback
  490b10:  55                          push   ebp
  490b11:  8b ec                       mov    ebp,esp
  490b13:  6a 08                       push   0x8
  490b15:  e8 d6 14 fb ff              call   0x441ff0
  490b1a:  8b 4d 08                    mov    ecx,DWORD PTR [ebp+0x8]
  490b1d:  8b 55 0c                    mov    edx,DWORD PTR [ebp+0xc]
  490b20:  83 c4 04                    add    esp,0x4
  490b23:  89 08                       mov    DWORD PTR [eax],ecx
  490b25:  50                          push   eax
  490b26:  b9 00 64 55 00              mov    ecx,0x556400
  490b2b:  89 50 04                    mov    DWORD PTR [eax+0x4],edx
  490b2e:  e8 0d 04 00 00              call   0x490f40
  490b33:  5d                          pop    ebp
  490b34:  c3                          ret

; UnitEffectManager::GetEffectProc 0x490b40..0x490c1d: recherche callback et verrouillage
  490b40:  55                          push   ebp
  490b41:  8b ec                       mov    ebp,esp
  490b43:  83 ec 08                    sub    esp,0x8
  490b46:  56                          push   esi
  490b47:  57                          push   edi
  490b48:  33 f6                       xor    esi,esi
  490b4a:  50                          push   eax
  490b4b:  8b 45 04                    mov    eax,DWORD PTR [ebp+0x4]
  490b4e:  89 45 f8                    mov    DWORD PTR [ebp-0x8],eax
  490b51:  58                          pop    eax
  490b52:  e8 a9 36 fa ff              call   0x434200
  490b57:  8b 10                       mov    edx,DWORD PTR [eax]
  490b59:  8d 4d fc                    lea    ecx,[ebp-0x4]
  490b5c:  51                          push   ecx
  490b5d:  8b 4d f8                    mov    ecx,DWORD PTR [ebp-0x8]
  490b60:  68 00 64 55 00              push   0x556400
  490b65:  51                          push   ecx
  490b66:  8b c8                       mov    ecx,eax
  490b68:  ff 12                       call   DWORD PTR [edx]
  490b6a:  68 08 64 55 00              push   0x556408
  490b6f:  ff 15 f8 e0 4d 00           call   DWORD PTR ds:0x4de0f8
  490b75:  e8 86 36 fa ff              call   0x434200
  490b7a:  8b 10                       mov    edx,DWORD PTR [eax]
  490b7c:  68 04 64 55 00              push   0x556404
  490b81:  8d 4d fc                    lea    ecx,[ebp-0x4]
  490b84:  51                          push   ecx
  490b85:  8b c8                       mov    ecx,eax
  490b87:  ff 52 04                    call   DWORD PTR [edx+0x4]
  490b8a:  a1 24 64 55 00              mov    eax,ds:0x556424
  490b8f:  8b 55 08                    mov    edx,DWORD PTR [ebp+0x8]
  490b92:  8b 7d 08                    mov    edi,DWORD PTR [ebp+0x8]
  490b95:  33 c9                       xor    ecx,ecx
  490b97:  a3 20 64 55 00              mov    ds:0x556420,eax
  490b9c:  89 0d 40 64 55 00           mov    DWORD PTR ds:0x556440,ecx
  490ba2:  c6 05 34 64 55 00 08        mov    BYTE PTR ds:0x556434,0x8
  490ba9:  85 c9                       test   ecx,ecx
  490bab:  74 09                       je     0x490bb6
  490bad:  8b 00                       mov    eax,DWORD PTR [eax]
  490baf:  a3 20 64 55 00              mov    ds:0x556420,eax
  490bb4:  eb 0b                       jmp    0x490bc1
  490bb6:  b9 01 00 00 00              mov    ecx,0x1
  490bbb:  89 0d 40 64 55 00           mov    DWORD PTR ds:0x556440,ecx
  490bc1:  85 c0                       test   eax,eax
  490bc3:  74 12                       je     0x490bd7
  490bc5:  85 f6                       test   esi,esi
  490bc7:  75 23                       jne    0x490bec
  490bc9:  8b 78 08                    mov    edi,DWORD PTR [eax+0x8]
  490bcc:  39 17                       cmp    DWORD PTR [edi],edx
  490bce:  75 d9                       jne    0x490ba9
  490bd0:  be 01 00 00 00              mov    esi,0x1
  490bd5:  eb d2                       jmp    0x490ba9
  490bd7:  85 c9                       test   ecx,ecx
  490bd9:  74 07                       je     0x490be2
  490bdb:  c6 05 34 64 55 00 07        mov    BYTE PTR ds:0x556434,0x7
  490be2:  c7 05 40 64 55 00 00        mov    DWORD PTR ds:0x556440,0x0
  490be9:  00 00 00                    
  490bec:  e8 0f 36 fa ff              call   0x434200
  490bf1:  8b 10                       mov    edx,DWORD PTR [eax]
  490bf3:  68 04 64 55 00              push   0x556404
  490bf8:  8b c8                       mov    ecx,eax
  490bfa:  ff 52 0c                    call   DWORD PTR [edx+0xc]
  490bfd:  68 08 64 55 00              push   0x556408
  490c02:  ff 15 fc e0 4d 00           call   DWORD PTR ds:0x4de0fc
  490c08:  85 f6                       test   esi,esi
  490c0a:  74 09                       je     0x490c15
  490c0c:  8b 47 04                    mov    eax,DWORD PTR [edi+0x4]
  490c0f:  5f                          pop    edi
  490c10:  5e                          pop    esi
  490c11:  8b e5                       mov    esp,ebp
  490c13:  5d                          pop    ebp
  490c14:  c3                          ret
  490c15:  5f                          pop    edi
  490c16:  5e                          pop    esi
  490c17:  33 c0                       xor    eax,eax
  490c19:  8b e5                       mov    esp,ebp
  490c1b:  5d                          pop    ebp
  490c1c:  c3                          ret

; Unit::AddEffect 0x48c810..0x48c926: liste des effets
  48c810:  55                          push   ebp
  48c811:  8b ec                       mov    ebp,esp
  48c813:  51                          push   ecx
  48c814:  53                          push   ebx
  48c815:  8b d9                       mov    ebx,ecx
  48c817:  8b 43 30                    mov    eax,DWORD PTR [ebx+0x30]
  48c81a:  8d 4b 30                    lea    ecx,[ebx+0x30]
  48c81d:  56                          push   esi
  48c81e:  57                          push   edi
  48c81f:  89 4d fc                    mov    DWORD PTR [ebp-0x4],ecx
  48c822:  ff 50 04                    call   DWORD PTR [eax+0x4]
  48c825:  8b 83 f4 00 00 00           mov    eax,DWORD PTR [ebx+0xf4]
  48c82b:  33 ff                       xor    edi,edi
  48c82d:  3b c7                       cmp    eax,edi
  48c82f:  75 4d                       jne    0x48c87e
  48c831:  6a 44                       push   0x44
  48c833:  e8 b8 57 fb ff              call   0x441ff0
  48c838:  8b f0                       mov    esi,eax
  48c83a:  83 c4 04                    add    esp,0x4
  48c83d:  3b f7                       cmp    esi,edi
  48c83f:  74 35                       je     0x48c876
  48c841:  8d 4e 08                    lea    ecx,[esi+0x8]
  48c844:  51                          push   ecx
  48c845:  c7 06 8c e5 4d 00           mov    DWORD PTR [esi],0x4de58c
  48c84b:  c7 46 04 ff ff ff ff        mov    DWORD PTR [esi+0x4],0xffffffff
  48c852:  ff 15 dc e0 4d 00           call   DWORD PTR ds:0x4de0dc
  48c858:  89 7e 24                    mov    DWORD PTR [esi+0x24],edi
  48c85b:  89 7e 28                    mov    DWORD PTR [esi+0x28],edi
  48c85e:  89 7e 2c                    mov    DWORD PTR [esi+0x2c],edi
  48c861:  89 7e 30                    mov    DWORD PTR [esi+0x30],edi
  48c864:  c7 06 3c f8 4d 00           mov    DWORD PTR [esi],0x4df83c
  48c86a:  89 7e 40                    mov    DWORD PTR [esi+0x40],edi
  48c86d:  c6 46 34 08                 mov    BYTE PTR [esi+0x34],0x8
  48c871:  89 7e 38                    mov    DWORD PTR [esi+0x38],edi
  48c874:  eb 02                       jmp    0x48c878
  48c876:  33 f6                       xor    esi,esi
  48c878:  89 b3 f4 00 00 00           mov    DWORD PTR [ebx+0xf4],esi
  48c87e:  8b 8b f4 00 00 00           mov    ecx,DWORD PTR [ebx+0xf4]
  48c884:  8b 11                       mov    edx,DWORD PTR [ecx]
  48c886:  ff 52 04                    call   DWORD PTR [edx+0x4]
  48c889:  8b b3 f4 00 00 00           mov    esi,DWORD PTR [ebx+0xf4]
  48c88f:  8b 46 28                    mov    eax,DWORD PTR [esi+0x28]
  48c892:  8b 56 38                    mov    edx,DWORD PTR [esi+0x38]
  48c895:  42                          inc    edx
  48c896:  3b c7                       cmp    eax,edi
  48c898:  89 46 20                    mov    DWORD PTR [esi+0x20],eax
  48c89b:  89 7e 40                    mov    DWORD PTR [esi+0x40],edi
  48c89e:  c6 46 34 08                 mov    BYTE PTR [esi+0x34],0x8
  48c8a2:  89 46 2c                    mov    DWORD PTR [esi+0x2c],eax
  48c8a5:  89 56 38                    mov    DWORD PTR [esi+0x38],edx
  48c8a8:  6a 0c                       push   0xc
  48c8aa:  75 28                       jne    0x48c8d4
  48c8ac:  e8 3f 57 fb ff              call   0x441ff0
  48c8b1:  83 c4 04                    add    esp,0x4
  48c8b4:  3b c7                       cmp    eax,edi
  48c8b6:  74 07                       je     0x48c8bf
  48c8b8:  89 38                       mov    DWORD PTR [eax],edi
  48c8ba:  89 78 04                    mov    DWORD PTR [eax+0x4],edi
  48c8bd:  eb 02                       jmp    0x48c8c1
  48c8bf:  33 c0                       xor    eax,eax
  48c8c1:  89 46 28                    mov    DWORD PTR [esi+0x28],eax
  48c8c4:  89 46 20                    mov    DWORD PTR [esi+0x20],eax
  48c8c7:  89 46 24                    mov    DWORD PTR [esi+0x24],eax
  48c8ca:  89 38                       mov    DWORD PTR [eax],edi
  48c8cc:  8b 46 20                    mov    eax,DWORD PTR [esi+0x20]
  48c8cf:  89 78 04                    mov    DWORD PTR [eax+0x4],edi
  48c8d2:  eb 2b                       jmp    0x48c8ff
  48c8d4:  e8 17 57 fb ff              call   0x441ff0
  48c8d9:  83 c4 04                    add    esp,0x4
  48c8dc:  3b c7                       cmp    eax,edi
  48c8de:  74 07                       je     0x48c8e7
  48c8e0:  89 38                       mov    DWORD PTR [eax],edi
  48c8e2:  89 78 04                    mov    DWORD PTR [eax+0x4],edi
  48c8e5:  eb 02                       jmp    0x48c8e9
  48c8e7:  33 c0                       xor    eax,eax
  48c8e9:  8b 4e 20                    mov    ecx,DWORD PTR [esi+0x20]
  48c8ec:  89 01                       mov    DWORD PTR [ecx],eax
  48c8ee:  8b 56 2c                    mov    edx,DWORD PTR [esi+0x2c]
  48c8f1:  89 46 28                    mov    DWORD PTR [esi+0x28],eax
  48c8f4:  89 46 20                    mov    DWORD PTR [esi+0x20],eax
  48c8f7:  89 50 04                    mov    DWORD PTR [eax+0x4],edx
  48c8fa:  8b 46 20                    mov    eax,DWORD PTR [esi+0x20]
  48c8fd:  89 38                       mov    DWORD PTR [eax],edi
  48c8ff:  8b 4e 20                    mov    ecx,DWORD PTR [esi+0x20]
  48c902:  8b 55 08                    mov    edx,DWORD PTR [ebp+0x8]
  48c905:  89 51 08                    mov    DWORD PTR [ecx+0x8],edx
  48c908:  8b 9b f4 00 00 00           mov    ebx,DWORD PTR [ebx+0xf4]
  48c90e:  8b 03                       mov    eax,DWORD PTR [ebx]
  48c910:  8b cb                       mov    ecx,ebx
  48c912:  ff 50 08                    call   DWORD PTR [eax+0x8]
  48c915:  8b 4d fc                    mov    ecx,DWORD PTR [ebp-0x4]
  48c918:  8b 11                       mov    edx,DWORD PTR [ecx]
  48c91a:  ff 52 08                    call   DWORD PTR [edx+0x8]
  48c91d:  5f                          pop    edi
  48c91e:  5e                          pop    esi
  48c91f:  5b                          pop    ebx
  48c920:  8b e5                       mov    esp,ebp
  48c922:  5d                          pop    ebp
  48c923:  c2 04 00                    ret    0x4

; Unit::RemoveEffect 0x48c930..0x48cac4: suppression effet par identifiant
  48c930:  55                          push   ebp
  48c931:  8b ec                       mov    ebp,esp
  48c933:  51                          push   ecx
  48c934:  53                          push   ebx
  48c935:  56                          push   esi
  48c936:  57                          push   edi
  48c937:  8b f9                       mov    edi,ecx
  48c939:  8b 47 30                    mov    eax,DWORD PTR [edi+0x30]
  48c93c:  8d 77 30                    lea    esi,[edi+0x30]
  48c93f:  8b ce                       mov    ecx,esi
  48c941:  89 75 fc                    mov    DWORD PTR [ebp-0x4],esi
  48c944:  ff 50 04                    call   DWORD PTR [eax+0x4]
  48c947:  8b 8f f4 00 00 00           mov    ecx,DWORD PTR [edi+0xf4]
  48c94d:  33 db                       xor    ebx,ebx
  48c94f:  3b cb                       cmp    ecx,ebx
  48c951:  0f 84 66 01 00 00           je     0x48cabd
  48c957:  8b 11                       mov    edx,DWORD PTR [ecx]
  48c959:  ff 52 04                    call   DWORD PTR [edx+0x4]
  48c95c:  8b 87 f4 00 00 00           mov    eax,DWORD PTR [edi+0xf4]
  48c962:  8b 48 24                    mov    ecx,DWORD PTR [eax+0x24]
  48c965:  89 48 20                    mov    DWORD PTR [eax+0x20],ecx
  48c968:  89 58 40                    mov    DWORD PTR [eax+0x40],ebx
  48c96b:  c6 40 34 08                 mov    BYTE PTR [eax+0x34],0x8
  48c96f:  8b 87 f4 00 00 00           mov    eax,DWORD PTR [edi+0xf4]
  48c975:  39 58 40                    cmp    DWORD PTR [eax+0x40],ebx
  48c978:  74 0a                       je     0x48c984
  48c97a:  8b 50 20                    mov    edx,DWORD PTR [eax+0x20]
  48c97d:  8b 0a                       mov    ecx,DWORD PTR [edx]
  48c97f:  89 48 20                    mov    DWORD PTR [eax+0x20],ecx
  48c982:  eb 07                       jmp    0x48c98b
  48c984:  c7 40 40 01 00 00 00        mov    DWORD PTR [eax+0x40],0x1
  48c98b:  39 58 20                    cmp    DWORD PTR [eax+0x20],ebx
  48c98e:  0f 84 f7 00 00 00           je     0x48ca8b
  48c994:  8b 97 f4 00 00 00           mov    edx,DWORD PTR [edi+0xf4]
  48c99a:  8b 42 20                    mov    eax,DWORD PTR [edx+0x20]
  48c99d:  8b 40 08                    mov    eax,DWORD PTR [eax+0x8]
  48c9a0:  8b 4d 08                    mov    ecx,DWORD PTR [ebp+0x8]
  48c9a3:  39 48 04                    cmp    DWORD PTR [eax+0x4],ecx
  48c9a6:  75 c7                       jne    0x48c96f
  48c9a8:  8b 48 08                    mov    ecx,DWORD PTR [eax+0x8]
  48c9ab:  3b cb                       cmp    ecx,ebx
  48c9ad:  74 13                       je     0x48c9c2
  48c9af:  8b 50 0c                    mov    edx,DWORD PTR [eax+0xc]
  48c9b2:  8b 45 08                    mov    eax,DWORD PTR [ebp+0x8]
  48c9b5:  53                          push   ebx
  48c9b6:  52                          push   edx
  48c9b7:  53                          push   ebx
  48c9b8:  53                          push   ebx
  48c9b9:  57                          push   edi
  48c9ba:  50                          push   eax
  48c9bb:  6a 09                       push   0x9
  48c9bd:  ff d1                       call   ecx
  48c9bf:  83 c4 1c                    add    esp,0x1c
  48c9c2:  8b b7 f4 00 00 00           mov    esi,DWORD PTR [edi+0xf4]
  48c9c8:  8b 46 38                    mov    eax,DWORD PTR [esi+0x38]
  48c9cb:  8b 4e 20                    mov    ecx,DWORD PTR [esi+0x20]
  48c9ce:  48                          dec    eax
  48c9cf:  89 46 38                    mov    DWORD PTR [esi+0x38],eax
  48c9d2:  8b c1                       mov    eax,ecx
  48c9d4:  89 4e 2c                    mov    DWORD PTR [esi+0x2c],ecx
  48c9d7:  8b 4e 28                    mov    ecx,DWORD PTR [esi+0x28]
  48c9da:  3b c1                       cmp    eax,ecx
  48c9dc:  74 3d                       je     0x48ca1b
  48c9de:  3b 46 24                    cmp    eax,DWORD PTR [esi+0x24]
  48c9e1:  74 34                       je     0x48ca17
  48c9e3:  8b 10                       mov    edx,DWORD PTR [eax]
  48c9e5:  8b 40 04                    mov    eax,DWORD PTR [eax+0x4]
  48c9e8:  89 42 04                    mov    DWORD PTR [edx+0x4],eax
  48c9eb:  8b 46 20                    mov    eax,DWORD PTR [esi+0x20]
  48c9ee:  8b 48 04                    mov    ecx,DWORD PTR [eax+0x4]
  48c9f1:  8b 10                       mov    edx,DWORD PTR [eax]
  48c9f3:  89 11                       mov    DWORD PTR [ecx],edx
  48c9f5:  8b 46 40                    mov    eax,DWORD PTR [esi+0x40]
  48c9f8:  83 f8 01                    cmp    eax,0x1
  48c9fb:  75 0b                       jne    0x48ca08
  48c9fd:  8b 46 20                    mov    eax,DWORD PTR [esi+0x20]
  48ca00:  8b 48 04                    mov    ecx,DWORD PTR [eax+0x4]
  48ca03:  89 4e 20                    mov    DWORD PTR [esi+0x20],ecx
  48ca06:  eb 63                       jmp    0x48ca6b
  48ca08:  83 f8 02                    cmp    eax,0x2
  48ca0b:  75 5e                       jne    0x48ca6b
  48ca0d:  8b 56 20                    mov    edx,DWORD PTR [esi+0x20]
  48ca10:  8b 02                       mov    eax,DWORD PTR [edx]
  48ca12:  89 46 20                    mov    DWORD PTR [esi+0x20],eax
  48ca15:  eb 54                       jmp    0x48ca6b
  48ca17:  3b c1                       cmp    eax,ecx
  48ca19:  75 23                       jne    0x48ca3e
  48ca1b:  3b 46 24                    cmp    eax,DWORD PTR [esi+0x24]
  48ca1e:  74 23                       je     0x48ca43
  48ca20:  8b 48 04                    mov    ecx,DWORD PTR [eax+0x4]
  48ca23:  89 19                       mov    DWORD PTR [ecx],ebx
  48ca25:  8b 56 20                    mov    edx,DWORD PTR [esi+0x20]
  48ca28:  8b 42 04                    mov    eax,DWORD PTR [edx+0x4]
  48ca2b:  89 46 28                    mov    DWORD PTR [esi+0x28],eax
  48ca2e:  83 7e 40 02                 cmp    DWORD PTR [esi+0x40],0x2
  48ca32:  8b ca                       mov    ecx,edx
  48ca34:  8b 51 04                    mov    edx,DWORD PTR [ecx+0x4]
  48ca37:  89 56 20                    mov    DWORD PTR [esi+0x20],edx
  48ca3a:  75 2f                       jne    0x48ca6b
  48ca3c:  eb 2a                       jmp    0x48ca68
  48ca3e:  3b 46 24                    cmp    eax,DWORD PTR [esi+0x24]
  48ca41:  75 1c                       jne    0x48ca5f
  48ca43:  3b c1                       cmp    eax,ecx
  48ca45:  74 18                       je     0x48ca5f
  48ca47:  8b 00                       mov    eax,DWORD PTR [eax]
  48ca49:  89 58 04                    mov    DWORD PTR [eax+0x4],ebx
  48ca4c:  8b 4e 20                    mov    ecx,DWORD PTR [esi+0x20]
  48ca4f:  8b 01                       mov    eax,DWORD PTR [ecx]
  48ca51:  89 46 20                    mov    DWORD PTR [esi+0x20],eax
  48ca54:  89 46 24                    mov    DWORD PTR [esi+0x24],eax
  48ca57:  83 7e 40 01                 cmp    DWORD PTR [esi+0x40],0x1
  48ca5b:  75 0e                       jne    0x48ca6b
  48ca5d:  eb 09                       jmp    0x48ca68
  48ca5f:  89 5e 20                    mov    DWORD PTR [esi+0x20],ebx
  48ca62:  89 5e 24                    mov    DWORD PTR [esi+0x24],ebx
  48ca65:  89 5e 28                    mov    DWORD PTR [esi+0x28],ebx
  48ca68:  89 5e 40                    mov    DWORD PTR [esi+0x40],ebx
  48ca6b:  8b 56 2c                    mov    edx,DWORD PTR [esi+0x2c]
  48ca6e:  8b 42 08                    mov    eax,DWORD PTR [edx+0x8]
  48ca71:  50                          push   eax
  48ca72:  e8 e9 55 fb ff              call   0x442060
  48ca77:  8b 4e 2c                    mov    ecx,DWORD PTR [esi+0x2c]
  48ca7a:  51                          push   ecx
  48ca7b:  e8 e0 55 fb ff              call   0x442060
  48ca80:  8b 75 fc                    mov    esi,DWORD PTR [ebp-0x4]
  48ca83:  83 c4 08                    add    esp,0x8
  48ca86:  e9 e4 fe ff ff              jmp    0x48c96f
  48ca8b:  39 58 40                    cmp    DWORD PTR [eax+0x40],ebx
  48ca8e:  74 04                       je     0x48ca94
  48ca90:  c6 40 34 07                 mov    BYTE PTR [eax+0x34],0x7
  48ca94:  89 58 40                    mov    DWORD PTR [eax+0x40],ebx
  48ca97:  8b 8f f4 00 00 00           mov    ecx,DWORD PTR [edi+0xf4]
  48ca9d:  8b 11                       mov    edx,DWORD PTR [ecx]
  48ca9f:  ff 52 08                    call   DWORD PTR [edx+0x8]
  48caa2:  8b 8f f4 00 00 00           mov    ecx,DWORD PTR [edi+0xf4]
  48caa8:  39 59 38                    cmp    DWORD PTR [ecx+0x38],ebx
  48caab:  75 10                       jne    0x48cabd
  48caad:  3b cb                       cmp    ecx,ebx
  48caaf:  74 06                       je     0x48cab7
  48cab1:  8b 01                       mov    eax,DWORD PTR [ecx]
  48cab3:  6a 01                       push   0x1
  48cab5:  ff 10                       call   DWORD PTR [eax]
  48cab7:  89 9f f4 00 00 00           mov    DWORD PTR [edi+0xf4],ebx
  48cabd:  8b 16                       mov    edx,DWORD PTR [esi]
  48cabf:  8b ce                       mov    ecx,esi
  48cac1:  ff 52 08                    call   DWORD PTR [edx+0x8]

; Unit::GetEffect 0x48cce0..0x48cda0: lecture effet
  48cce0:  55                          push   ebp
  48cce1:  8b ec                       mov    ebp,esp
  48cce3:  51                          push   ecx
  48cce4:  53                          push   ebx
  48cce5:  56                          push   esi
  48cce6:  8b f1                       mov    esi,ecx
  48cce8:  8b 46 30                    mov    eax,DWORD PTR [esi+0x30]
  48cceb:  57                          push   edi
  48ccec:  8d 7e 30                    lea    edi,[esi+0x30]
  48ccef:  8b cf                       mov    ecx,edi
  48ccf1:  89 7d fc                    mov    DWORD PTR [ebp-0x4],edi
  48ccf4:  ff 50 04                    call   DWORD PTR [eax+0x4]
  48ccf7:  8b 8e f4 00 00 00           mov    ecx,DWORD PTR [esi+0xf4]
  48ccfd:  33 db                       xor    ebx,ebx
  48ccff:  85 c9                       test   ecx,ecx
  48cd01:  74 7c                       je     0x48cd7f
  48cd03:  8b 11                       mov    edx,DWORD PTR [ecx]
  48cd05:  33 ff                       xor    edi,edi
  48cd07:  ff 52 04                    call   DWORD PTR [edx+0x4]
  48cd0a:  8b 86 f4 00 00 00           mov    eax,DWORD PTR [esi+0xf4]
  48cd10:  8b 48 24                    mov    ecx,DWORD PTR [eax+0x24]
  48cd13:  89 48 20                    mov    DWORD PTR [eax+0x20],ecx
  48cd16:  33 c9                       xor    ecx,ecx
  48cd18:  89 48 40                    mov    DWORD PTR [eax+0x40],ecx
  48cd1b:  c6 40 34 08                 mov    BYTE PTR [eax+0x34],0x8
  48cd1f:  8b 86 f4 00 00 00           mov    eax,DWORD PTR [esi+0xf4]
  48cd25:  39 48 40                    cmp    DWORD PTR [eax+0x40],ecx
  48cd28:  74 0a                       je     0x48cd34
  48cd2a:  8b 50 20                    mov    edx,DWORD PTR [eax+0x20]
  48cd2d:  8b 12                       mov    edx,DWORD PTR [edx]
  48cd2f:  89 50 20                    mov    DWORD PTR [eax+0x20],edx
  48cd32:  eb 07                       jmp    0x48cd3b
  48cd34:  c7 40 40 01 00 00 00        mov    DWORD PTR [eax+0x40],0x1
  48cd3b:  39 48 20                    cmp    DWORD PTR [eax+0x20],ecx
  48cd3e:  74 1f                       je     0x48cd5f
  48cd40:  3b f9                       cmp    edi,ecx
  48cd42:  75 27                       jne    0x48cd6b
  48cd44:  8b 86 f4 00 00 00           mov    eax,DWORD PTR [esi+0xf4]
  48cd4a:  8b 50 20                    mov    edx,DWORD PTR [eax+0x20]
  48cd4d:  8b 5a 08                    mov    ebx,DWORD PTR [edx+0x8]
  48cd50:  8b 43 04                    mov    eax,DWORD PTR [ebx+0x4]
  48cd53:  3b 45 08                    cmp    eax,DWORD PTR [ebp+0x8]
  48cd56:  75 c7                       jne    0x48cd1f
  48cd58:  bf 01 00 00 00              mov    edi,0x1
  48cd5d:  eb c0                       jmp    0x48cd1f
  48cd5f:  39 48 40                    cmp    DWORD PTR [eax+0x40],ecx
  48cd62:  74 04                       je     0x48cd68
  48cd64:  c6 40 34 07                 mov    BYTE PTR [eax+0x34],0x7
  48cd68:  89 48 40                    mov    DWORD PTR [eax+0x40],ecx
  48cd6b:  8b 8e f4 00 00 00           mov    ecx,DWORD PTR [esi+0xf4]
  48cd71:  8b 11                       mov    edx,DWORD PTR [ecx]
  48cd73:  ff 52 08                    call   DWORD PTR [edx+0x8]
  48cd76:  85 ff                       test   edi,edi
  48cd78:  75 02                       jne    0x48cd7c
  48cd7a:  33 db                       xor    ebx,ebx
  48cd7c:  8b 7d fc                    mov    edi,DWORD PTR [ebp-0x4]
  48cd7f:  8b 07                       mov    eax,DWORD PTR [edi]
  48cd81:  8b cf                       mov    ecx,edi
  48cd83:  ff 50 08                    call   DWORD PTR [eax+0x8]
  48cd86:  5f                          pop    edi
  48cd87:  5e                          pop    esi
  48cd88:  8b c3                       mov    eax,ebx
  48cd8a:  5b                          pop    ebx
  48cd8b:  8b e5                       mov    esp,ebp
  48cd8d:  5d                          pop    ebp
  48cd8e:  c2 04 00                    ret    0x4

; Unit::SaveEffects (parcours initial) 0x48e430..0x48e660: parcours des effets et generation requetes SQL
  48e430:  55                          push   ebp
  48e431:  8b ec                       mov    ebp,esp
  48e433:  6a ff                       push   0xffffffff
  48e435:  68 03 a8 4d 00              push   0x4da803
  48e43a:  64 a1 00 00 00 00           mov    eax,fs:0x0
  48e440:  50                          push   eax
  48e441:  64 89 25 00 00 00 00        mov    DWORD PTR fs:0x0,esp
  48e448:  81 ec 1c 01 00 00           sub    esp,0x11c
  48e44e:  53                          push   ebx
  48e44f:  56                          push   esi
  48e450:  8b f1                       mov    esi,ecx
  48e452:  57                          push   edi
  48e453:  8d 4d f0                    lea    ecx,[ebp-0x10]
  48e456:  89 75 e0                    mov    DWORD PTR [ebp-0x20],esi
  48e459:  e8 00 36 04 00              call   0x4d1a5e
  48e45e:  8b 9e f4 00 00 00           mov    ebx,DWORD PTR [esi+0xf4]
  48e464:  8b 46 30                    mov    eax,DWORD PTR [esi+0x30]
  48e467:  83 c6 30                    add    esi,0x30
  48e46a:  33 ff                       xor    edi,edi
  48e46c:  8b ce                       mov    ecx,esi
  48e46e:  89 7d fc                    mov    DWORD PTR [ebp-0x4],edi
  48e471:  89 5d dc                    mov    DWORD PTR [ebp-0x24],ebx
  48e474:  89 75 d8                    mov    DWORD PTR [ebp-0x28],esi
  48e477:  ff 50 04                    call   DWORD PTR [eax+0x4]
  48e47a:  3b df                       cmp    ebx,edi
  48e47c:  0f 84 fa 01 00 00           je     0x48e67c
  48e482:  8b 13                       mov    edx,DWORD PTR [ebx]
  48e484:  8b cb                       mov    ecx,ebx
  48e486:  ff 52 04                    call   DWORD PTR [edx+0x4]
  48e489:  8b 43 24                    mov    eax,DWORD PTR [ebx+0x24]
  48e48c:  89 7b 40                    mov    DWORD PTR [ebx+0x40],edi
  48e48f:  8b 7d 08                    mov    edi,DWORD PTR [ebp+0x8]
  48e492:  89 43 20                    mov    DWORD PTR [ebx+0x20],eax
  48e495:  c6 43 34 08                 mov    BYTE PTR [ebx+0x34],0x8
  48e499:  8b 43 40                    mov    eax,DWORD PTR [ebx+0x40]
  48e49c:  85 c0                       test   eax,eax
  48e49e:  74 0a                       je     0x48e4aa
  48e4a0:  8b 4b 20                    mov    ecx,DWORD PTR [ebx+0x20]
  48e4a3:  8b 11                       mov    edx,DWORD PTR [ecx]
  48e4a5:  89 53 20                    mov    DWORD PTR [ebx+0x20],edx
  48e4a8:  eb 07                       jmp    0x48e4b1
  48e4aa:  c7 43 40 01 00 00 00        mov    DWORD PTR [ebx+0x40],0x1
  48e4b1:  8b 43 20                    mov    eax,DWORD PTR [ebx+0x20]
  48e4b4:  85 c0                       test   eax,eax
  48e4b6:  0f 84 a4 01 00 00           je     0x48e660
  48e4bc:  8b 70 08                    mov    esi,DWORD PTR [eax+0x8]
  48e4bf:  33 c9                       xor    ecx,ecx
  48e4c1:  8b c1                       mov    eax,ecx
  48e4c3:  89 4d ec                    mov    DWORD PTR [ebp-0x14],ecx
  48e4c6:  89 45 e4                    mov    DWORD PTR [ebp-0x1c],eax
  48e4c9:  89 4d e8                    mov    DWORD PTR [ebp-0x18],ecx
  48e4cc:  8b 56 08                    mov    edx,DWORD PTR [esi+0x8]
  48e4cf:  85 d2                       test   edx,edx
  48e4d1:  74 21                       je     0x48e4f4
  48e4d3:  8b 4e 0c                    mov    ecx,DWORD PTR [esi+0xc]
  48e4d6:  8d 45 e4                    lea    eax,[ebp-0x1c]
  48e4d9:  50                          push   eax
  48e4da:  8b 45 e0                    mov    eax,DWORD PTR [ebp-0x20]
  48e4dd:  51                          push   ecx
  48e4de:  8b 4e 04                    mov    ecx,DWORD PTR [esi+0x4]
  48e4e1:  6a 00                       push   0x0
  48e4e3:  6a 00                       push   0x0
  48e4e5:  50                          push   eax
  48e4e6:  51                          push   ecx
  48e4e7:  6a 17                       push   0x17
  48e4e9:  ff d2                       call   edx
  48e4eb:  8b 45 e4                    mov    eax,DWORD PTR [ebp-0x1c]
  48e4ee:  8b 4d ec                    mov    ecx,DWORD PTR [ebp-0x14]
  48e4f1:  83 c4 1c                    add    esp,0x1c
  48e4f4:  80 f9 01                    cmp    cl,0x1
  48e4f7:  74 a0                       je     0x48e499
  48e4f9:  84 c0                       test   al,al
  48e4fb:  76 9c                       jbe    0x48e499
  48e4fd:  3c 80                       cmp    al,0x80
  48e4ff:  73 98                       jae    0x48e499
  48e501:  25 ff 00 00 00              and    eax,0xff
  48e506:  50                          push   eax
  48e507:  8b 45 e8                    mov    eax,DWORD PTR [ebp-0x18]
  48e50a:  8d 95 d8 fe ff ff           lea    edx,[ebp-0x128]
  48e510:  52                          push   edx
  48e511:  50                          push   eax
  48e512:  e8 19 fe ff ff              call   0x48e330
  48e517:  8b 4d e4                    mov    ecx,DWORD PTR [ebp-0x1c]
  48e51a:  8b 55 e8                    mov    edx,DWORD PTR [ebp-0x18]
  48e51d:  81 e1 ff 00 00 00           and    ecx,0xff
  48e523:  52                          push   edx
  48e524:  c6 84 4d d8 fe ff ff        mov    BYTE PTR [ebp+ecx*2-0x128],0x0
  48e52b:  00                          
  48e52c:  e8 2f 3b fb ff              call   0x442060
  48e531:  8b 4e 1c                    mov    ecx,DWORD PTR [esi+0x1c]
  48e534:  8b 45 e0                    mov    eax,DWORD PTR [ebp-0x20]
  48e537:  8b 56 18                    mov    edx,DWORD PTR [esi+0x18]
  48e53a:  8b 58 78                    mov    ebx,DWORD PTR [eax+0x78]
  48e53d:  8b 46 14                    mov    eax,DWORD PTR [esi+0x14]
  48e540:  83 c4 10                    add    esp,0x10
  48e543:  51                          push   ecx
  48e544:  52                          push   edx
  48e545:  50                          push   eax
  48e546:  8d 8d d8 fe ff ff           lea    ecx,[ebp-0x128]
  48e54c:  51                          push   ecx
  48e54d:  e8 3e 3d fe ff              call   0x472290
  48e552:  8b 56 10                    mov    edx,DWORD PTR [esi+0x10]
  48e555:  8b 4e 04                    mov    ecx,DWORD PTR [esi+0x4]
  48e558:  2b d0                       sub    edx,eax
  48e55a:  33 c0                       xor    eax,eax
  48e55c:  8a 06                       mov    al,BYTE PTR [esi]
  48e55e:  52                          push   edx
  48e55f:  8b 55 0c                    mov    edx,DWORD PTR [ebp+0xc]
  48e562:  50                          push   eax
  48e563:  51                          push   ecx
  48e564:  52                          push   edx
  48e565:  53                          push   ebx
  48e566:  8d 45 f0                    lea    eax,[ebp-0x10]
  48e569:  68 7c df 50 00              push   0x50df7c
  48e56e:  50                          push   eax
  48e56f:  e8 20 35 04 00              call   0x4d1a94
  48e574:  8b 4d ec                    mov    ecx,DWORD PTR [ebp-0x14]
  48e577:  8b 55 e8                    mov    edx,DWORD PTR [ebp-0x18]
  48e57a:  8b 45 e4                    mov    eax,DWORD PTR [ebp-0x1c]
  48e57d:  83 c4 2c                    add    esp,0x2c
  48e580:  81 e1 ff 00 00 00           and    ecx,0xff
  48e586:  51                          push   ecx
  48e587:  8b 4e 04                    mov    ecx,DWORD PTR [esi+0x4]
  48e58a:  52                          push   edx
  48e58b:  25 ff 00 00 00              and    eax,0xff
  48e590:  50                          push   eax
  48e591:  51                          push   ecx
  48e592:  68 48 df 50 00              push   0x50df48
  48e597:  68 00 02 00 00              push   0x200
  48e59c:  e8 9f 37 fe ff              call   0x471d40
  48e5a1:  6a 08                       push   0x8
  48e5a3:  e8 48 3a fb ff              call   0x441ff0
  48e5a8:  8b f0                       mov    esi,eax
  48e5aa:  83 c4 1c                    add    esp,0x1c
  48e5ad:  89 75 08                    mov    DWORD PTR [ebp+0x8],esi
  48e5b0:  33 db                       xor    ebx,ebx
  48e5b2:  3b f3                       cmp    esi,ebx
  48e5b4:  c6 45 fc 01                 mov    BYTE PTR [ebp-0x4],0x1
  48e5b8:  74 0a                       je     0x48e5c4
  48e5ba:  8d 4e 04                    lea    ecx,[esi+0x4]
  48e5bd:  e8 9c 34 04 00              call   0x4d1a5e
  48e5c2:  eb 02                       jmp    0x48e5c6
  48e5c4:  33 f6                       xor    esi,esi
  48e5c6:  8d 55 f0                    lea    edx,[ebp-0x10]
  48e5c9:  52                          push   edx
  48e5ca:  8d 4e 04                    lea    ecx,[esi+0x4]
  48e5cd:  c6 45 fc 00                 mov    BYTE PTR [ebp-0x4],0x0
  48e5d1:  e8 70 34 04 00              call   0x4d1a46
  48e5d6:  8b 47 28                    mov    eax,DWORD PTR [edi+0x28]
  48e5d9:  8b 57 38                    mov    edx,DWORD PTR [edi+0x38]
  48e5dc:  42                          inc    edx
  48e5dd:  3b c3                       cmp    eax,ebx
  48e5df:  89 47 20                    mov    DWORD PTR [edi+0x20],eax
  48e5e2:  89 5f 40                    mov    DWORD PTR [edi+0x40],ebx
  48e5e5:  c6 47 34 08                 mov    BYTE PTR [edi+0x34],0x8
  48e5e9:  89 47 2c                    mov    DWORD PTR [edi+0x2c],eax
  48e5ec:  89 57 38                    mov    DWORD PTR [edi+0x38],edx
  48e5ef:  6a 0c                       push   0xc
  48e5f1:  75 34                       jne    0x48e627
  48e5f3:  e8 f8 39 fb ff              call   0x441ff0
  48e5f8:  83 c4 04                    add    esp,0x4
  48e5fb:  3b c3                       cmp    eax,ebx
  48e5fd:  74 07                       je     0x48e606
  48e5ff:  89 18                       mov    DWORD PTR [eax],ebx
  48e601:  89 58 04                    mov    DWORD PTR [eax+0x4],ebx
  48e604:  eb 02                       jmp    0x48e608
  48e606:  33 c0                       xor    eax,eax
  48e608:  89 47 20                    mov    DWORD PTR [edi+0x20],eax
  48e60b:  89 47 28                    mov    DWORD PTR [edi+0x28],eax
  48e60e:  89 47 24                    mov    DWORD PTR [edi+0x24],eax
  48e611:  89 18                       mov    DWORD PTR [eax],ebx
  48e613:  8b 47 20                    mov    eax,DWORD PTR [edi+0x20]
  48e616:  89 58 04                    mov    DWORD PTR [eax+0x4],ebx
  48e619:  8b 4f 20                    mov    ecx,DWORD PTR [edi+0x20]
  48e61c:  8b 5d dc                    mov    ebx,DWORD PTR [ebp-0x24]
  48e61f:  89 71 08                    mov    DWORD PTR [ecx+0x8],esi
  48e622:  e9 72 fe ff ff              jmp    0x48e499
  48e627:  e8 c4 39 fb ff              call   0x441ff0
  48e62c:  83 c4 04                    add    esp,0x4
  48e62f:  3b c3                       cmp    eax,ebx
  48e631:  74 07                       je     0x48e63a
  48e633:  89 18                       mov    DWORD PTR [eax],ebx
  48e635:  89 58 04                    mov    DWORD PTR [eax+0x4],ebx
  48e638:  eb 02                       jmp    0x48e63c
  48e63a:  33 c0                       xor    eax,eax
  48e63c:  8b 4f 20                    mov    ecx,DWORD PTR [edi+0x20]
  48e63f:  89 01                       mov    DWORD PTR [ecx],eax
  48e641:  8b 57 2c                    mov    edx,DWORD PTR [edi+0x2c]
  48e644:  89 47 20                    mov    DWORD PTR [edi+0x20],eax
  48e647:  89 47 28                    mov    DWORD PTR [edi+0x28],eax
  48e64a:  89 50 04                    mov    DWORD PTR [eax+0x4],edx
  48e64d:  8b 47 20                    mov    eax,DWORD PTR [edi+0x20]
  48e650:  89 18                       mov    DWORD PTR [eax],ebx
  48e652:  8b 4f 20                    mov    ecx,DWORD PTR [edi+0x20]
  48e655:  8b 5d dc                    mov    ebx,DWORD PTR [ebp-0x24]
  48e658:  89 71 08                    mov    DWORD PTR [ecx+0x8],esi
  48e65b:  e9 39 fe ff ff              jmp    0x48e499

; Unit::LoadEffects 0x48e8a0..0x48e9e0: chargement ODBC des effets et colonnes
  48e8a0:  55                          push   ebp
  48e8a1:  8b ec                       mov    ebp,esp
  48e8a3:  6a ff                       push   0xffffffff
  48e8a5:  68 20 a8 4d 00              push   0x4da820
  48e8aa:  64 a1 00 00 00 00           mov    eax,fs:0x0
  48e8b0:  50                          push   eax
  48e8b1:  64 89 25 00 00 00 00        mov    DWORD PTR fs:0x0,esp
  48e8b8:  81 ec 20 01 00 00           sub    esp,0x120
  48e8be:  56                          push   esi
  48e8bf:  57                          push   edi
  48e8c0:  8b f9                       mov    edi,ecx
  48e8c2:  8d 4d f0                    lea    ecx,[ebp-0x10]
  48e8c5:  e8 94 31 04 00              call   0x4d1a5e
  48e8ca:  8b 4d 0c                    mov    ecx,DWORD PTR [ebp+0xc]
  48e8cd:  8b 47 78                    mov    eax,DWORD PTR [edi+0x78]
  48e8d0:  51                          push   ecx
  48e8d1:  50                          push   eax
  48e8d2:  8d 55 f0                    lea    edx,[ebp-0x10]
  48e8d5:  68 1c e0 50 00              push   0x50e01c
  48e8da:  52                          push   edx
  48e8db:  c7 45 fc 00 00 00 00        mov    DWORD PTR [ebp-0x4],0x0
  48e8e2:  e8 ad 31 04 00              call   0x4d1a94
  48e8e7:  8b 45 f0                    mov    eax,DWORD PTR [ebp-0x10]
  48e8ea:  8b 75 08                    mov    esi,DWORD PTR [ebp+0x8]
  48e8ed:  83 c4 10                    add    esp,0x10
  48e8f0:  6a 00                       push   0x0
  48e8f2:  50                          push   eax
  48e8f3:  8b ce                       mov    ecx,esi
  48e8f5:  e8 86 04 fc ff              call   0x44ed80
  48e8fa:  85 c0                       test   eax,eax
  48e8fc:  0f 84 bd 00 00 00           je     0x48e9bf
  48e902:  8b ce                       mov    ecx,esi
  48e904:  e8 57 04 fc ff              call   0x44ed60
  48e909:  85 c0                       test   eax,eax
  48e90b:  0f 84 ae 00 00 00           je     0x48e9bf
  48e911:  81 c7 94 00 00 00           add    edi,0x94
  48e917:  8d 4d e8                    lea    ecx,[ebp-0x18]
  48e91a:  e8 3f 31 04 00              call   0x4d1a5e
  48e91f:  8d 4d d4                    lea    ecx,[ebp-0x2c]
  48e922:  51                          push   ecx
  48e923:  6a 01                       push   0x1
  48e925:  8b ce                       mov    ecx,esi
  48e927:  c6 45 fc 01                 mov    BYTE PTR [ebp-0x4],0x1
  48e92b:  e8 e0 05 fc ff              call   0x44ef10
  48e930:  8d 55 d8                    lea    edx,[ebp-0x28]
  48e933:  52                          push   edx
  48e934:  6a 02                       push   0x2
  48e936:  8b ce                       mov    ecx,esi
  48e938:  e8 b3 06 fc ff              call   0x44eff0
  48e93d:  8d 45 dc                    lea    eax,[ebp-0x24]
  48e940:  50                          push   eax
  48e941:  6a 03                       push   0x3
  48e943:  8b ce                       mov    ecx,esi
  48e945:  e8 c6 05 fc ff              call   0x44ef10
  48e94a:  68 00 01 00 00              push   0x100
  48e94f:  8d 8d d4 fe ff ff           lea    ecx,[ebp-0x12c]
  48e955:  51                          push   ecx
  48e956:  6a 04                       push   0x4
  48e958:  8b ce                       mov    ecx,esi
  48e95a:  e8 c1 07 fc ff              call   0x44f120
  48e95f:  8d 55 e0                    lea    edx,[ebp-0x20]
  48e962:  52                          push   edx
  48e963:  6a 05                       push   0x5
  48e965:  8b ce                       mov    ecx,esi
  48e967:  e8 a4 05 fc ff              call   0x44ef10
  48e96c:  8d 45 e4                    lea    eax,[ebp-0x1c]
  48e96f:  50                          push   eax
  48e970:  6a 06                       push   0x6
  48e972:  8b ce                       mov    ecx,esi
  48e974:  e8 97 05 fc ff              call   0x44ef10
  48e979:  8d 4d ec                    lea    ecx,[ebp-0x14]
  48e97c:  51                          push   ecx
  48e97d:  6a 07                       push   0x7
  48e97f:  8b ce                       mov    ecx,esi
  48e981:  e8 8a 05 fc ff              call   0x44ef10
  48e986:  8d 95 d4 fe ff ff           lea    edx,[ebp-0x12c]
  48e98c:  52                          push   edx
  48e98d:  8d 4d e8                    lea    ecx,[ebp-0x18]
  48e990:  e8 c3 30 04 00              call   0x4d1a58
  48e995:  8b 47 04                    mov    eax,DWORD PTR [edi+0x4]
  48e998:  8d 4d d4                    lea    ecx,[ebp-0x2c]
  48e99b:  51                          push   ecx
  48e99c:  50                          push   eax
  48e99d:  8b cf                       mov    ecx,edi
  48e99f:  e8 6c 14 00 00              call   0x48fe10
  48e9a4:  8d 4d e8                    lea    ecx,[ebp-0x18]
  48e9a7:  c6 45 fc 00                 mov    BYTE PTR [ebp-0x4],0x0
  48e9ab:  e8 90 30 04 00              call   0x4d1a40
  48e9b0:  8b ce                       mov    ecx,esi
  48e9b2:  e8 a9 03 fc ff              call   0x44ed60
  48e9b7:  85 c0                       test   eax,eax
  48e9b9:  0f 85 58 ff ff ff           jne    0x48e917
  48e9bf:  8d 4d f0                    lea    ecx,[ebp-0x10]
  48e9c2:  c7 45 fc ff ff ff ff        mov    DWORD PTR [ebp-0x4],0xffffffff
  48e9c9:  e8 72 30 04 00              call   0x4d1a40
  48e9ce:  8b 4d f4                    mov    ecx,DWORD PTR [ebp-0xc]
  48e9d1:  5f                          pop    edi
  48e9d2:  5e                          pop    esi
  48e9d3:  64 89 0d 00 00 00 00        mov    DWORD PTR fs:0x0,ecx
  48e9da:  8b e5                       mov    esp,ebp
  48e9dc:  5d                          pop    ebp
  48e9dd:  c2 08 00                    ret    0x8

; Unit::DeferredLoadEffects (branche initiale) 0x48e9f0..0x48ed40: transformation differée et callbacks
  48e9f0:  55                          push   ebp
  48e9f1:  8b ec                       mov    ebp,esp
  48e9f3:  6a ff                       push   0xffffffff
  48e9f5:  68 46 a8 4d 00              push   0x4da846
  48e9fa:  64 a1 00 00 00 00           mov    eax,fs:0x0
  48ea00:  50                          push   eax
  48ea01:  64 89 25 00 00 00 00        mov    DWORD PTR fs:0x0,esp
  48ea08:  81 ec 1c 02 00 00           sub    esp,0x21c
  48ea0e:  53                          push   ebx
  48ea0f:  56                          push   esi
  48ea10:  57                          push   edi
  48ea11:  8b f9                       mov    edi,ecx
  48ea13:  8b 47 30                    mov    eax,DWORD PTR [edi+0x30]
  48ea16:  8d 4f 30                    lea    ecx,[edi+0x30]
  48ea19:  89 7d ec                    mov    DWORD PTR [ebp-0x14],edi
  48ea1c:  89 4d e4                    mov    DWORD PTR [ebp-0x1c],ecx
  48ea1f:  ff 50 04                    call   DWORD PTR [eax+0x4]
  48ea22:  8b 87 98 00 00 00           mov    eax,DWORD PTR [edi+0x98]
  48ea28:  85 c0                       test   eax,eax
  48ea2a:  75 04                       jne    0x48ea30
  48ea2c:  33 f6                       xor    esi,esi
  48ea2e:  eb 02                       jmp    0x48ea32
  48ea30:  8b 30                       mov    esi,DWORD PTR [eax]
  48ea32:  8b 87 98 00 00 00           mov    eax,DWORD PTR [edi+0x98]
  48ea38:  3b f0                       cmp    esi,eax
  48ea3a:  89 75 f0                    mov    DWORD PTR [ebp-0x10],esi
  48ea3d:  0f 84 b9 01 00 00           je     0x48ebfc
  48ea43:  eb 03                       jmp    0x48ea48
  48ea45:  8b 75 f0                    mov    esi,DWORD PTR [ebp-0x10]
  48ea48:  6a 20                       push   0x20
  48ea4a:  e8 a1 35 fb ff              call   0x441ff0
  48ea4f:  8b d8                       mov    ebx,eax
  48ea51:  e8 3a 38 fe ff              call   0x472290
  48ea56:  03 46 10                    add    eax,DWORD PTR [esi+0x10]
  48ea59:  89 43 10                    mov    DWORD PTR [ebx+0x10],eax
  48ea5c:  8b 4e 08                    mov    ecx,DWORD PTR [esi+0x8]
  48ea5f:  89 4b 04                    mov    DWORD PTR [ebx+0x4],ecx
  48ea62:  8a 56 0c                    mov    dl,BYTE PTR [esi+0xc]
  48ea65:  88 13                       mov    BYTE PTR [ebx],dl
  48ea67:  8b 46 14                    mov    eax,DWORD PTR [esi+0x14]
  48ea6a:  89 43 14                    mov    DWORD PTR [ebx+0x14],eax
  48ea6d:  8b 4e 18                    mov    ecx,DWORD PTR [esi+0x18]
  48ea70:  89 4b 18                    mov    DWORD PTR [ebx+0x18],ecx
  48ea73:  8b 56 20                    mov    edx,DWORD PTR [esi+0x20]
  48ea76:  89 53 1c                    mov    DWORD PTR [ebx+0x1c],edx
  48ea79:  8b 46 1c                    mov    eax,DWORD PTR [esi+0x1c]
  48ea7c:  8b 53 04                    mov    edx,DWORD PTR [ebx+0x4]
  48ea7f:  8b 48 f8                    mov    ecx,DWORD PTR [eax-0x8]
  48ea82:  52                          push   edx
  48ea83:  89 4d e8                    mov    DWORD PTR [ebp-0x18],ecx
  48ea86:  e8 b5 20 00 00              call   0x490b40
  48ea8b:  89 43 08                    mov    DWORD PTR [ebx+0x8],eax
  48ea8e:  8b 45 e8                    mov    eax,DWORD PTR [ebp-0x18]
  48ea91:  83 c4 08                    add    esp,0x8
  48ea94:  85 c0                       test   eax,eax
  48ea96:  0f 86 4f 01 00 00           jbe    0x48ebeb
  48ea9c:  8b 76 1c                    mov    esi,DWORD PTR [esi+0x1c]
  48ea9f:  83 c9 ff                    or     ecx,0xffffffff
  48eaa2:  33 c0                       xor    eax,eax
  48eaa4:  8b fe                       mov    edi,esi
  48eaa6:  f2 ae                       repnz scas al,BYTE PTR es:[edi]
  48eaa8:  f7 d1                       not    ecx
  48eaaa:  2b f9                       sub    edi,ecx
  48eaac:  8b c1                       mov    eax,ecx
  48eaae:  c1 e9 02                    shr    ecx,0x2
  48eab1:  8d 95 d8 fd ff ff           lea    edx,[ebp-0x228]
  48eab7:  8b f7                       mov    esi,edi
  48eab9:  8b fa                       mov    edi,edx
  48eabb:  f3 a5                       rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  48eabd:  8b c8                       mov    ecx,eax
  48eabf:  83 e1 03                    and    ecx,0x3
  48eac2:  f3 a4                       rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  48eac4:  8b 75 e8                    mov    esi,DWORD PTR [ebp-0x18]
  48eac7:  33 c9                       xor    ecx,ecx
  48eac9:  8b c6                       mov    eax,esi
  48eacb:  d1 e8                       shr    eax,1
  48eacd:  89 4d d8                    mov    DWORD PTR [ebp-0x28],ecx
  48ead0:  88 45 d8                    mov    BYTE PTR [ebp-0x28],al
  48ead3:  40                          inc    eax
  48ead4:  89 4d dc                    mov    DWORD PTR [ebp-0x24],ecx
  48ead7:  50                          push   eax
  48ead8:  89 4d e0                    mov    DWORD PTR [ebp-0x20],ecx
  48eadb:  e8 20 fa 03 00              call   0x4ce500
  48eae0:  56                          push   esi
  48eae1:  50                          push   eax
  48eae2:  8d 95 d8 fd ff ff           lea    edx,[ebp-0x228]
  48eae8:  52                          push   edx
  48eae9:  89 45 dc                    mov    DWORD PTR [ebp-0x24],eax
  48eaec:  e8 bf fb ff ff              call   0x48e6b0
  48eaf1:  8b 43 08                    mov    eax,DWORD PTR [ebx+0x8]
  48eaf4:  83 c4 10                    add    esp,0x10
  48eaf7:  85 c0                       test   eax,eax
  48eaf9:  0f 84 c7 00 00 00           je     0x48ebc6
  48eaff:  8b 4b 04                    mov    ecx,DWORD PTR [ebx+0x4]
  48eb02:  8d 85 d8 fd ff ff           lea    eax,[ebp-0x228]
  48eb08:  50                          push   eax
  48eb09:  51                          push   ecx
  48eb0a:  68 d8 e0 50 00              push   0x50e0d8
  48eb0f:  68 00 02 00 00              push   0x200
  48eb14:  e8 27 32 fe ff              call   0x471d40
  48eb19:  8b 7d ec                    mov    edi,DWORD PTR [ebp-0x14]
  48eb1c:  8b 43 04                    mov    eax,DWORD PTR [ebx+0x4]
  48eb1f:  8d 55 d8                    lea    edx,[ebp-0x28]
  48eb22:  52                          push   edx
  48eb23:  53                          push   ebx
  48eb24:  6a 00                       push   0x0
  48eb26:  6a 00                       push   0x0
  48eb28:  57                          push   edi
  48eb29:  50                          push   eax
  48eb2a:  6a 18                       push   0x18
  48eb2c:  ff 53 08                    call   DWORD PTR [ebx+0x8]
  48eb2f:  8b 75 e4                    mov    esi,DWORD PTR [ebp-0x1c]
  48eb32:  8b 16                       mov    edx,DWORD PTR [esi]
  48eb34:  83 c4 2c                    add    esp,0x2c
  48eb37:  8b ce                       mov    ecx,esi
  48eb39:  ff 52 04                    call   DWORD PTR [edx+0x4]
  48eb3c:  8b 87 f4 00 00 00           mov    eax,DWORD PTR [edi+0xf4]
  48eb42:  85 c0                       test   eax,eax
  48eb44:  75 53                       jne    0x48eb99
  48eb46:  6a 44                       push   0x44
  48eb48:  e8 a3 34 fb ff              call   0x441ff0
  48eb4d:  8b f0                       mov    esi,eax
  48eb4f:  83 c4 04                    add    esp,0x4
  48eb52:  89 75 e8                    mov    DWORD PTR [ebp-0x18],esi
  48eb55:  85 f6                       test   esi,esi
  48eb57:  c7 45 fc 00 00 00 00        mov    DWORD PTR [ebp-0x4],0x0
  48eb5e:  74 27                       je     0x48eb87
  48eb60:  8b ce                       mov    ecx,esi
  48eb62:  e8 89 42 f9 ff              call   0x422df0
  48eb67:  33 c0                       xor    eax,eax
  48eb69:  89 46 24                    mov    DWORD PTR [esi+0x24],eax
  48eb6c:  89 46 28                    mov    DWORD PTR [esi+0x28],eax
  48eb6f:  89 46 2c                    mov    DWORD PTR [esi+0x2c],eax
  48eb72:  89 46 30                    mov    DWORD PTR [esi+0x30],eax
  48eb75:  c7 06 3c f8 4d 00           mov    DWORD PTR [esi],0x4df83c
  48eb7b:  89 46 40                    mov    DWORD PTR [esi+0x40],eax
  48eb7e:  c6 46 34 08                 mov    BYTE PTR [esi+0x34],0x8
  48eb82:  89 46 38                    mov    DWORD PTR [esi+0x38],eax
  48eb85:  eb 02                       jmp    0x48eb89
  48eb87:  33 f6                       xor    esi,esi
  48eb89:  89 b7 f4 00 00 00           mov    DWORD PTR [edi+0xf4],esi
  48eb8f:  8b 75 e4                    mov    esi,DWORD PTR [ebp-0x1c]
  48eb92:  c7 45 fc ff ff ff ff        mov    DWORD PTR [ebp-0x4],0xffffffff
  48eb99:  8b 8f f4 00 00 00           mov    ecx,DWORD PTR [edi+0xf4]
  48eb9f:  8b 01                       mov    eax,DWORD PTR [ecx]
  48eba1:  ff 50 04                    call   DWORD PTR [eax+0x4]
  48eba4:  8b 8f f4 00 00 00           mov    ecx,DWORD PTR [edi+0xf4]
  48ebaa:  53                          push   ebx
  48ebab:  e8 70 1e 00 00              call   0x490a20
  48ebb0:  8b bf f4 00 00 00           mov    edi,DWORD PTR [edi+0xf4]
  48ebb6:  8b 17                       mov    edx,DWORD PTR [edi]
  48ebb8:  8b cf                       mov    ecx,edi
  48ebba:  ff 52 08                    call   DWORD PTR [edx+0x8]
  48ebbd:  8b 06                       mov    eax,DWORD PTR [esi]
  48ebbf:  8b ce                       mov    ecx,esi
  48ebc1:  ff 50 08                    call   DWORD PTR [eax+0x8]
  48ebc4:  eb 13                       jmp    0x48ebd9
  48ebc6:  8b 4b 04                    mov    ecx,DWORD PTR [ebx+0x4]
  48ebc9:  51                          push   ecx
  48ebca:  68 a8 e0 50 00              push   0x50e0a8
  48ebcf:  6a 04                       push   0x4
  48ebd1:  e8 6a 31 fe ff              call   0x471d40
  48ebd6:  83 c4 0c                    add    esp,0xc
  48ebd9:  8b 55 dc                    mov    edx,DWORD PTR [ebp-0x24]
  48ebdc:  52                          push   edx
  48ebdd:  e8 7e 34 fb ff              call   0x442060
  48ebe2:  8b 7d ec                    mov    edi,DWORD PTR [ebp-0x14]
  48ebe5:  8b 75 f0                    mov    esi,DWORD PTR [ebp-0x10]
  48ebe8:  83 c4 04                    add    esp,0x4
  48ebeb:  8b 36                       mov    esi,DWORD PTR [esi]
  48ebed:  3b b7 98 00 00 00           cmp    esi,DWORD PTR [edi+0x98]
  48ebf3:  89 75 f0                    mov    DWORD PTR [ebp-0x10],esi
  48ebf6:  0f 85 49 fe ff ff           jne    0x48ea45
  48ebfc:  8b 87 98 00 00 00           mov    eax,DWORD PTR [edi+0x98]
  48ec02:  85 c0                       test   eax,eax
  48ec04:  8d 8f 94 00 00 00           lea    ecx,[edi+0x94]
  48ec0a:  75 04                       jne    0x48ec10
  48ec0c:  33 d2                       xor    edx,edx
  48ec0e:  eb 02                       jmp    0x48ec12
  48ec10:  8b 10                       mov    edx,DWORD PTR [eax]
  48ec12:  50                          push   eax
  48ec13:  52                          push   edx
  48ec14:  8d 45 ec                    lea    eax,[ebp-0x14]
  48ec17:  50                          push   eax
  48ec18:  e8 03 13 00 00              call   0x48ff20
  48ec1d:  8b 8f f8 00 00 00           mov    ecx,DWORD PTR [edi+0xf8]
  48ec23:  85 c9                       test   ecx,ecx
  48ec25:  0f 84 59 01 00 00           je     0x48ed84
  48ec2b:  8b 11                       mov    edx,DWORD PTR [ecx]
  48ec2d:  ff 52 04                    call   DWORD PTR [edx+0x4]
  48ec30:  8b 87 a4 00 00 00           mov    eax,DWORD PTR [edi+0xa4]
  48ec36:  85 c0                       test   eax,eax
  48ec38:  c7 45 f0 00 00 00 00        mov    DWORD PTR [ebp-0x10],0x0
  48ec3f:  74 02                       je     0x48ec43
  48ec41:  8b 00                       mov    eax,DWORD PTR [eax]
  48ec43:  3b 87 a4 00 00 00           cmp    eax,DWORD PTR [edi+0xa4]
  48ec49:  89 45 f0                    mov    DWORD PTR [ebp-0x10],eax
  48ec4c:  0f 84 27 01 00 00           je     0x48ed79
  48ec52:  6a 78                       push   0x78
  48ec54:  e8 97 33 fb ff              call   0x441ff0
  48ec59:  8b d8                       mov    ebx,eax
  48ec5b:  83 c4 04                    add    esp,0x4
  48ec5e:  89 5d ec                    mov    DWORD PTR [ebp-0x14],ebx
  48ec61:  85 db                       test   ebx,ebx
  48ec63:  c7 45 fc 01 00 00 00        mov    DWORD PTR [ebp-0x4],0x1
  48ec6a:  74 0a                       je     0x48ec76
  48ec6c:  8d 4b 08                    lea    ecx,[ebx+0x8]
  48ec6f:  e8 4c aa f7 ff              call   0x4096c0
  48ec74:  eb 02                       jmp    0x48ec78
  48ec76:  33 db                       xor    ebx,ebx
  48ec78:  8b 45 f0                    mov    eax,DWORD PTR [ebp-0x10]
  48ec7b:  8b 48 08                    mov    ecx,DWORD PTR [eax+0x8]
  48ec7e:  89 0b                       mov    DWORD PTR [ebx],ecx
  48ec80:  8b 55 f0                    mov    edx,DWORD PTR [ebp-0x10]
  48ec83:  66 8b 42 0c                 mov    ax,WORD PTR [edx+0xc]
  48ec87:  8d 4d f0                    lea    ecx,[ebp-0x10]
  48ec8a:  c7 45 fc ff ff ff ff        mov    DWORD PTR [ebp-0x4],0xffffffff
  48ec91:  66 89 43 04                 mov    WORD PTR [ebx+0x4],ax
  48ec95:  e8 26 11 00 00              call   0x48fdc0
  48ec9a:  51                          push   ecx
  48ec9b:  83 c0 08                    add    eax,0x8
  48ec9e:  8b cc                       mov    ecx,esp
  48eca0:  89 65 ec                    mov    DWORD PTR [ebp-0x14],esp
  48eca3:  50                          push   eax
  48eca4:  e8 a3 2d 04 00              call   0x4d1a4c
  48eca9:  8d 73 08                    lea    esi,[ebx+0x8]
  48ecac:  8b ce                       mov    ecx,esi
  48ecae:  e8 4d ac f7 ff              call   0x409900
  48ecb3:  85 c0                       test   eax,eax
  48ecb5:  0f 84 96 00 00 00           je     0x48ed51
  48ecbb:  8b b7 f8 00 00 00           mov    esi,DWORD PTR [edi+0xf8]
  48ecc1:  8b 46 28                    mov    eax,DWORD PTR [esi+0x28]
  48ecc4:  8b 56 38                    mov    edx,DWORD PTR [esi+0x38]
  48ecc7:  42                          inc    edx
  48ecc8:  85 c0                       test   eax,eax
  48ecca:  89 46 20                    mov    DWORD PTR [esi+0x20],eax
  48eccd:  c7 46 40 00 00 00 00        mov    DWORD PTR [esi+0x40],0x0
  48ecd4:  c6 46 34 08                 mov    BYTE PTR [esi+0x34],0x8
  48ecd8:  89 46 2c                    mov    DWORD PTR [esi+0x2c],eax
  48ecdb:  89 56 38                    mov    DWORD PTR [esi+0x38],edx
  48ecde:  6a 0c                       push   0xc
  48ece0:  75 30                       jne    0x48ed12
  48ece2:  e8 09 33 fb ff              call   0x441ff0
  48ece7:  33 c9                       xor    ecx,ecx
  48ece9:  83 c4 04                    add    esp,0x4
  48ecec:  3b c1                       cmp    eax,ecx
  48ecee:  74 07                       je     0x48ecf7
  48ecf0:  89 08                       mov    DWORD PTR [eax],ecx
  48ecf2:  89 48 04                    mov    DWORD PTR [eax+0x4],ecx
  48ecf5:  eb 02                       jmp    0x48ecf9
  48ecf7:  33 c0                       xor    eax,eax
  48ecf9:  89 46 20                    mov    DWORD PTR [esi+0x20],eax
  48ecfc:  89 46 28                    mov    DWORD PTR [esi+0x28],eax
  48ecff:  89 46 24                    mov    DWORD PTR [esi+0x24],eax
  48ed02:  89 08                       mov    DWORD PTR [eax],ecx
  48ed04:  8b 56 20                    mov    edx,DWORD PTR [esi+0x20]
  48ed07:  89 4a 04                    mov    DWORD PTR [edx+0x4],ecx
  48ed0a:  8b 4e 20                    mov    ecx,DWORD PTR [esi+0x20]
  48ed0d:  89 59 08                    mov    DWORD PTR [ecx+0x8],ebx
  48ed10:  eb 53                       jmp    0x48ed65
  48ed12:  e8 d9 32 fb ff              call   0x441ff0
  48ed17:  83 c4 04                    add    esp,0x4
  48ed1a:  85 c0                       test   eax,eax
  48ed1c:  74 0f                       je     0x48ed2d
  48ed1e:  c7 00 00 00 00 00           mov    DWORD PTR [eax],0x0
  48ed24:  c7 40 04 00 00 00 00        mov    DWORD PTR [eax+0x4],0x0
  48ed2b:  eb 02                       jmp    0x48ed2f
  48ed2d:  33 c0                       xor    eax,eax
  48ed2f:  8b 4e 20                    mov    ecx,DWORD PTR [esi+0x20]
  48ed32:  89 01                       mov    DWORD PTR [ecx],eax
  48ed34:  8b 56 2c                    mov    edx,DWORD PTR [esi+0x2c]
  48ed37:  89 46 20                    mov    DWORD PTR [esi+0x20],eax
  48ed3a:  89 46 28                    mov    DWORD PTR [esi+0x28],eax
  48ed3d:  89 50 04                    mov    DWORD PTR [eax+0x4],edx

; Unit::QueryEffects (branche initiale) 0x48d110..0x48d300: enumeration des effets et appel de traitement
  48d110:  55                          push   ebp
  48d111:  8b ec                       mov    ebp,esp
  48d113:  6a ff                       push   0xffffffff
  48d115:  68 58 a7 4d 00              push   0x4da758
  48d11a:  64 a1 00 00 00 00           mov    eax,fs:0x0
  48d120:  50                          push   eax
  48d121:  64 89 25 00 00 00 00        mov    DWORD PTR fs:0x0,esp
  48d128:  83 ec 4c                    sub    esp,0x4c
  48d12b:  53                          push   ebx
  48d12c:  56                          push   esi
  48d12d:  57                          push   edi
  48d12e:  8b f1                       mov    esi,ecx
  48d130:  33 ff                       xor    edi,edi
  48d132:  3b f7                       cmp    esi,edi
  48d134:  74 08                       je     0x48d13e
  48d136:  8d 5e 30                    lea    ebx,[esi+0x30]
  48d139:  89 5d f0                    mov    DWORD PTR [ebp-0x10],ebx
  48d13c:  eb 05                       jmp    0x48d143
  48d13e:  89 7d f0                    mov    DWORD PTR [ebp-0x10],edi
  48d141:  8b df                       mov    ebx,edi
  48d143:  8b 03                       mov    eax,DWORD PTR [ebx]
  48d145:  8b cb                       mov    ecx,ebx
  48d147:  89 5d ec                    mov    DWORD PTR [ebp-0x14],ebx
  48d14a:  ff 50 04                    call   DWORD PTR [eax+0x4]
  48d14d:  8b 86 00 01 00 00           mov    eax,DWORD PTR [esi+0x100]
  48d153:  83 f8 01                    cmp    eax,0x1
  48d156:  89 7d fc                    mov    DWORD PTR [ebp-0x4],edi
  48d159:  0f 83 a7 01 00 00           jae    0x48d306
  48d15f:  40                          inc    eax
  48d160:  89 86 00 01 00 00           mov    DWORD PTR [esi+0x100],eax
  48d166:  39 be f4 00 00 00           cmp    DWORD PTR [esi+0xf4],edi
  48d16c:  0f 84 8e 01 00 00           je     0x48d300
  48d172:  8d 4d b0                    lea    ecx,[ebp-0x50]
  48d175:  51                          push   ecx
  48d176:  c7 45 a8 8c e5 4d 00        mov    DWORD PTR [ebp-0x58],0x4de58c
  48d17d:  c7 45 ac ff ff ff ff        mov    DWORD PTR [ebp-0x54],0xffffffff
  48d184:  ff 15 dc e0 4d 00           call   DWORD PTR ds:0x4de0dc
  48d18a:  89 7d cc                    mov    DWORD PTR [ebp-0x34],edi
  48d18d:  89 7d d0                    mov    DWORD PTR [ebp-0x30],edi
  48d190:  89 7d d4                    mov    DWORD PTR [ebp-0x2c],edi
  48d193:  89 7d d8                    mov    DWORD PTR [ebp-0x28],edi
  48d196:  c7 45 a8 3c f8 4d 00        mov    DWORD PTR [ebp-0x58],0x4df83c
  48d19d:  89 7d e8                    mov    DWORD PTR [ebp-0x18],edi
  48d1a0:  c6 45 dc 08                 mov    BYTE PTR [ebp-0x24],0x8
  48d1a4:  89 7d e0                    mov    DWORD PTR [ebp-0x20],edi
  48d1a7:  8b 8e f4 00 00 00           mov    ecx,DWORD PTR [esi+0xf4]
  48d1ad:  8b 11                       mov    edx,DWORD PTR [ecx]
  48d1af:  c6 45 fc 01                 mov    BYTE PTR [ebp-0x4],0x1
  48d1b3:  ff 52 04                    call   DWORD PTR [edx+0x4]
  48d1b6:  8b 86 f4 00 00 00           mov    eax,DWORD PTR [esi+0xf4]
  48d1bc:  8b 48 24                    mov    ecx,DWORD PTR [eax+0x24]
  48d1bf:  89 48 20                    mov    DWORD PTR [eax+0x20],ecx
  48d1c2:  89 78 40                    mov    DWORD PTR [eax+0x40],edi
  48d1c5:  c6 40 34 08                 mov    BYTE PTR [eax+0x34],0x8
  48d1c9:  8b 86 f4 00 00 00           mov    eax,DWORD PTR [esi+0xf4]
  48d1cf:  39 78 40                    cmp    DWORD PTR [eax+0x40],edi
  48d1d2:  74 0a                       je     0x48d1de
  48d1d4:  8b 50 20                    mov    edx,DWORD PTR [eax+0x20]
  48d1d7:  8b 0a                       mov    ecx,DWORD PTR [edx]
  48d1d9:  89 48 20                    mov    DWORD PTR [eax+0x20],ecx
  48d1dc:  eb 07                       jmp    0x48d1e5
  48d1de:  c7 40 40 01 00 00 00        mov    DWORD PTR [eax+0x40],0x1
  48d1e5:  39 78 20                    cmp    DWORD PTR [eax+0x20],edi
  48d1e8:  74 23                       je     0x48d20d
  48d1ea:  8b 96 f4 00 00 00           mov    edx,DWORD PTR [esi+0xf4]
  48d1f0:  8b 42 20                    mov    eax,DWORD PTR [edx+0x20]
  48d1f3:  8b 40 08                    mov    eax,DWORD PTR [eax+0x8]
  48d1f6:  8a 4d 08                    mov    cl,BYTE PTR [ebp+0x8]
  48d1f9:  38 08                       cmp    BYTE PTR [eax],cl
  48d1fb:  75 cc                       jne    0x48d1c9
  48d1fd:  39 78 08                    cmp    DWORD PTR [eax+0x8],edi
  48d200:  74 c7                       je     0x48d1c9
  48d202:  50                          push   eax
  48d203:  8d 4d a8                    lea    ecx,[ebp-0x58]
  48d206:  e8 15 38 00 00              call   0x490a20
  48d20b:  eb bc                       jmp    0x48d1c9
  48d20d:  39 78 40                    cmp    DWORD PTR [eax+0x40],edi
  48d210:  74 04                       je     0x48d216
  48d212:  c6 40 34 07                 mov    BYTE PTR [eax+0x34],0x7
  48d216:  89 78 40                    mov    DWORD PTR [eax+0x40],edi
  48d219:  8b 8e f4 00 00 00           mov    ecx,DWORD PTR [esi+0xf4]
  48d21f:  8b 11                       mov    edx,DWORD PTR [ecx]
  48d221:  ff 52 08                    call   DWORD PTR [edx+0x8]
  48d224:  8b 45 cc                    mov    eax,DWORD PTR [ebp-0x34]
  48d227:  8b 5d 14                    mov    ebx,DWORD PTR [ebp+0x14]
  48d22a:  89 45 c8                    mov    DWORD PTR [ebp-0x38],eax
  48d22d:  89 7d e8                    mov    DWORD PTR [ebp-0x18],edi
  48d230:  c6 45 dc 08                 mov    BYTE PTR [ebp-0x24],0x8
  48d234:  39 7d e8                    cmp    DWORD PTR [ebp-0x18],edi
  48d237:  74 0a                       je     0x48d243
  48d239:  8b 4d c8                    mov    ecx,DWORD PTR [ebp-0x38]
  48d23c:  8b 01                       mov    eax,DWORD PTR [ecx]
  48d23e:  89 45 c8                    mov    DWORD PTR [ebp-0x38],eax
  48d241:  eb 0a                       jmp    0x48d24d
  48d243:  8b 45 c8                    mov    eax,DWORD PTR [ebp-0x38]
  48d246:  c7 45 e8 01 00 00 00        mov    DWORD PTR [ebp-0x18],0x1
  48d24d:  3b c7                       cmp    eax,edi
  48d24f:  74 4f                       je     0x48d2a0
  48d251:  8b 40 08                    mov    eax,DWORD PTR [eax+0x8]
  48d254:  3b c7                       cmp    eax,edi
  48d256:  75 11                       jne    0x48d269
  48d258:  68 b8 dd 50 00              push   0x50ddb8
  48d25d:  6a 01                       push   0x1
  48d25f:  e8 dc 4a fe ff              call   0x471d40
  48d264:  83 c4 08                    add    esp,0x8
  48d267:  eb cb                       jmp    0x48d234
  48d269:  8b 48 08                    mov    ecx,DWORD PTR [eax+0x8]
  48d26c:  3b cf                       cmp    ecx,edi
  48d26e:  75 11                       jne    0x48d281
  48d270:  68 74 dd 50 00              push   0x50dd74
  48d275:  6a 01                       push   0x1
  48d277:  e8 c4 4a fe ff              call   0x471d40
  48d27c:  83 c4 08                    add    esp,0x8
  48d27f:  eb b3                       jmp    0x48d234
  48d281:  8b 55 0c                    mov    edx,DWORD PTR [ebp+0xc]
  48d284:  52                          push   edx
  48d285:  8b 50 0c                    mov    edx,DWORD PTR [eax+0xc]
  48d288:  8b 40 04                    mov    eax,DWORD PTR [eax+0x4]
  48d28b:  52                          push   edx
  48d28c:  8b 55 10                    mov    edx,DWORD PTR [ebp+0x10]
  48d28f:  53                          push   ebx
  48d290:  52                          push   edx
  48d291:  66 0f b6 55 08              movzx  dx,BYTE PTR [ebp+0x8]
  48d296:  56                          push   esi
  48d297:  50                          push   eax
  48d298:  52                          push   edx
  48d299:  ff d1                       call   ecx
  48d29b:  83 c4 1c                    add    esp,0x1c
  48d29e:  eb 94                       jmp    0x48d234
  48d2a0:  c7 45 a8 3c f8 4d 00        mov    DWORD PTR [ebp-0x58],0x4df83c
  48d2a7:  8b 4d cc                    mov    ecx,DWORD PTR [ebp-0x34]
  48d2aa:  33 c0                       xor    eax,eax
  48d2ac:  c6 45 fc 02                 mov    BYTE PTR [ebp-0x4],0x2
  48d2b0:  89 4d c8                    mov    DWORD PTR [ebp-0x38],ecx
  48d2b3:  89 45 e8                    mov    DWORD PTR [ebp-0x18],eax
  48d2b6:  c6 45 dc 08                 mov    BYTE PTR [ebp-0x24],0x8
  48d2ba:  3b c7                       cmp    eax,edi
  48d2bc:  74 07                       je     0x48d2c5
  48d2be:  8b 09                       mov    ecx,DWORD PTR [ecx]
  48d2c0:  89 4d c8                    mov    DWORD PTR [ebp-0x38],ecx
  48d2c3:  eb 08                       jmp    0x48d2cd
  48d2c5:  b8 01 00 00 00              mov    eax,0x1
  48d2ca:  89 45 e8                    mov    DWORD PTR [ebp-0x18],eax
  48d2cd:  3b cf                       cmp    ecx,edi
  48d2cf:  74 10                       je     0x48d2e1
  48d2d1:  8d 4d a8                    lea    ecx,[ebp-0x58]
  48d2d4:  e8 37 32 00 00              call   0x490510
  48d2d9:  8b 4d c8                    mov    ecx,DWORD PTR [ebp-0x38]
  48d2dc:  8b 45 e8                    mov    eax,DWORD PTR [ebp-0x18]
  48d2df:  eb d9                       jmp    0x48d2ba
  48d2e1:  3b c7                       cmp    eax,edi
  48d2e3:  74 04                       je     0x48d2e9
  48d2e5:  c6 45 dc 07                 mov    BYTE PTR [ebp-0x24],0x7
  48d2e9:  8d 45 b0                    lea    eax,[ebp-0x50]
  48d2ec:  50                          push   eax
  48d2ed:  89 7d e8                    mov    DWORD PTR [ebp-0x18],edi
  48d2f0:  c7 45 a8 8c e5 4d 00        mov    DWORD PTR [ebp-0x58],0x4de58c
  48d2f7:  ff 15 e0 e0 4d 00           call   DWORD PTR ds:0x4de0e0
  48d2fd:  8b 5d f0                    mov    ebx,DWORD PTR [ebp-0x10]

