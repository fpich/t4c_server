# Appels directs au wrapper WDA (extraits objdump, PE x86)

## CALL 0x45cee2
  45ced1:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  45ced4:	8d 45 c4             	lea    eax,[ebp-0x3c]
  45ced7:	50                   	push   eax
  45ced8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  45cedb:	51                   	push   ecx
  45cedc:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  45cedf:	52                   	push   edx
  45cee0:	50                   	push   eax
  45cee1:	51                   	push   ecx
  45cee2:	e8 a9 f9 ff ff       	call   0x45c890

## CALL 0x45cf17
  45cf06:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  45cf09:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  45cf0c:	8d 55 c4             	lea    edx,[ebp-0x3c]
  45cf0f:	52                   	push   edx
  45cf10:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
  45cf13:	57                   	push   edi
  45cf14:	50                   	push   eax
  45cf15:	51                   	push   ecx
  45cf16:	52                   	push   edx
  45cf17:	e8 74 f9 ff ff       	call   0x45c890

## CALL 0x45cfae
  45cf9d:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  45cfa0:	8d 55 c4             	lea    edx,[ebp-0x3c]
  45cfa3:	52                   	push   edx
  45cfa4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  45cfa7:	50                   	push   eax
  45cfa8:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  45cfab:	51                   	push   ecx
  45cfac:	52                   	push   edx
  45cfad:	50                   	push   eax
  45cfae:	e8 dd f8 ff ff       	call   0x45c890

## CALL 0x45d074
  45d063:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  45d066:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  45d069:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d06c:	51                   	push   ecx
  45d06d:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  45d070:	57                   	push   edi
  45d071:	52                   	push   edx
  45d072:	50                   	push   eax
  45d073:	51                   	push   ecx
  45d074:	e8 17 f8 ff ff       	call   0x45c890

## CALL 0x45d108
  45d0f7:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  45d0fa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  45d0fd:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d100:	51                   	push   ecx
  45d101:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  45d104:	57                   	push   edi
  45d105:	52                   	push   edx
  45d106:	50                   	push   eax
  45d107:	51                   	push   ecx
  45d108:	e8 83 f7 ff ff       	call   0x45c890

## CALL 0x45d23c
  45d22b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  45d22e:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d231:	51                   	push   ecx
  45d232:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  45d235:	52                   	push   edx
  45d236:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
  45d239:	50                   	push   eax
  45d23a:	51                   	push   ecx
  45d23b:	52                   	push   edx
  45d23c:	e8 4f f6 ff ff       	call   0x45c890
