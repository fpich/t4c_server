; REPRISE STRICTE DES LIGNES DE PASSE57, PAS DE NOUVEAUX OCTETS
; Provenance: PASSE57_DESASSEMBLAGE/02_PREUVES_APPELANTS_VIRTUELS.asm
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
