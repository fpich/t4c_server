; PASSE 40, recherche statique du serveur ; SHA256=13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Toute instruction presente ci-dessous a ete confrontee a .text du binaire fourni.
; Les stops sont exclusifs; la selection est liee au travail de lecture des fonctions.

; Etat 64 bits et generateur avec multiplication 0x2B3DD441, ajout 1 et rejet anti-repetition
; 0x00458FF0..0x0045909F exclusif
  458ff0:	55                   	push   ebp
  458ff1:	8b ec                	mov    ebp,esp
  458ff3:	53                   	push   ebx
  458ff4:	56                   	push   esi
  458ff5:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  458ff8:	57                   	push   edi
  458ff9:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  458ffc:	a1 dc 4c 51 00       	mov    eax,ds:0x514cdc
  459001:	8b 0d d8 4c 51 00    	mov    ecx,DWORD PTR ds:0x514cd8
  459007:	6a 00                	push   0x0
  459009:	68 41 d4 3d 2b       	push   0x2b3dd441
  45900e:	50                   	push   eax
  45900f:	51                   	push   ecx
  459010:	e8 4b 8f 07 00       	call   0x4d1f60
  459015:	83 c0 01             	add    eax,0x1
  459018:	83 d2 00             	adc    edx,0x0
  45901b:	3b f7                	cmp    esi,edi
  45901d:	8b d8                	mov    ebx,eax
  45901f:	89 1d d8 4c 51 00    	mov    DWORD PTR ds:0x514cd8,ebx
  459025:	89 15 dc 4c 51 00    	mov    DWORD PTR ds:0x514cdc,edx
  45902b:	7e 0b                	jle    0x459038
  45902d:	8b c7                	mov    eax,edi
  45902f:	8b fe                	mov    edi,esi
  459031:	8b f0                	mov    esi,eax
  459033:	89 7d 0c             	mov    DWORD PTR [ebp+0xc],edi
  459036:	3b f7                	cmp    esi,edi
  459038:	74 57                	je     0x459091
  45903a:	8b c7                	mov    eax,edi
  45903c:	2b c6                	sub    eax,esi
  45903e:	99                   	cdq
  45903f:	8b f8                	mov    edi,eax
  459041:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
  459044:	8b fa                	mov    edi,edx
  459046:	8b 15 dc 4c 51 00    	mov    edx,DWORD PTR ds:0x514cdc
  45904c:	b9 10 00 00 00       	mov    ecx,0x10
  459051:	8b c3                	mov    eax,ebx
  459053:	e8 f8 8f 07 00       	call   0x4d2050
  459058:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  45905b:	57                   	push   edi
  45905c:	51                   	push   ecx
  45905d:	52                   	push   edx
  45905e:	50                   	push   eax
  45905f:	e8 6c 8f 07 00       	call   0x4d1fd0
  459064:	8b 0d e0 4c 51 00    	mov    ecx,DWORD PTR ds:0x514ce0
  45906a:	03 c6                	add    eax,esi
  45906c:	3b c8                	cmp    ecx,eax
  45906e:	75 16                	jne    0x459086
  459070:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  459073:	85 c9                	test   ecx,ecx
  459075:	75 0f                	jne    0x459086
  459077:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  45907a:	c7 45 10 01 00 00 00 	mov    DWORD PTR [ebp+0x10],0x1
  459081:	e9 76 ff ff ff       	jmp    0x458ffc
  459086:	5f                   	pop    edi
  459087:	5e                   	pop    esi
  459088:	a3 e0 4c 51 00       	mov    ds:0x514ce0,eax
  45908d:	99                   	cdq
  45908e:	5b                   	pop    ebx
  45908f:	5d                   	pop    ebp
  459090:	c3                   	ret
  459091:	5f                   	pop    edi
  459092:	8b c6                	mov    eax,esi
  459094:	89 35 e0 4c 51 00    	mov    DWORD PTR ds:0x514ce0,esi
  45909a:	5e                   	pop    esi
  45909b:	99                   	cdq
  45909c:	5b                   	pop    ebx
  45909d:	5d                   	pop    ebp
  45909e:	c3                   	ret

; Wrapper borne min..max inclus au moyen d un max exclusif
; 0x004590A0..0x004590BA exclusif
  4590a0:	55                   	push   ebp
  4590a1:	8b ec                	mov    ebp,esp
  4590a3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4590a6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4590a9:	6a 00                	push   0x0
  4590ab:	40                   	inc    eax
  4590ac:	50                   	push   eax
  4590ad:	51                   	push   ecx
  4590ae:	e8 3d ff ff ff       	call   0x458ff0
  4590b3:	83 c4 0c             	add    esp,0xc
  4590b6:	5d                   	pop    ebp
  4590b7:	c2 08 00             	ret    0x8

; Graine explicite de l etat bas et haut du generateur
; 0x00459100..0x00459116 exclusif
  459100:	55                   	push   ebp
  459101:	8b ec                	mov    ebp,esp
  459103:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  459106:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  459109:	a3 d8 4c 51 00       	mov    ds:0x514cd8,eax
  45910e:	89 0d dc 4c 51 00    	mov    DWORD PTR ds:0x514cdc,ecx
  459114:	5d                   	pop    ebp
  459115:	c3                   	ret

; Multiplication de deux entiers 64 bits - helper compilateur
; 0x004D1F60..0x004D1F94 exclusif
  4d1f60:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  4d1f64:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  4d1f68:	0b c8                	or     ecx,eax
  4d1f6a:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  4d1f6e:	75 09                	jne    0x4d1f79
  4d1f70:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  4d1f74:	f7 e1                	mul    ecx
  4d1f76:	c2 10 00             	ret    0x10
  4d1f79:	53                   	push   ebx
  4d1f7a:	f7 e1                	mul    ecx
  4d1f7c:	8b d8                	mov    ebx,eax
  4d1f7e:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  4d1f82:	f7 64 24 14          	mul    DWORD PTR [esp+0x14]
  4d1f86:	03 d8                	add    ebx,eax
  4d1f88:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  4d1f8c:	f7 e1                	mul    ecx
  4d1f8e:	03 d3                	add    edx,ebx
  4d1f90:	5b                   	pop    ebx
  4d1f91:	c2 10 00             	ret    0x10

; Reste de la division 64 bits - helper compilateur
; 0x004D1FD0..0x004D2045 exclusif
  4d1fd0:	53                   	push   ebx
  4d1fd1:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  4d1fd5:	0b c0                	or     eax,eax
  4d1fd7:	75 18                	jne    0x4d1ff1
  4d1fd9:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  4d1fdd:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  4d1fe1:	33 d2                	xor    edx,edx
  4d1fe3:	f7 f1                	div    ecx
  4d1fe5:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  4d1fe9:	f7 f1                	div    ecx
  4d1feb:	8b c2                	mov    eax,edx
  4d1fed:	33 d2                	xor    edx,edx
  4d1fef:	eb 50                	jmp    0x4d2041
  4d1ff1:	8b c8                	mov    ecx,eax
  4d1ff3:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  4d1ff7:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  4d1ffb:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  4d1fff:	d1 e9                	shr    ecx,1
  4d2001:	d1 db                	rcr    ebx,1
  4d2003:	d1 ea                	shr    edx,1
  4d2005:	d1 d8                	rcr    eax,1
  4d2007:	0b c9                	or     ecx,ecx
  4d2009:	75 f4                	jne    0x4d1fff
  4d200b:	f7 f3                	div    ebx
  4d200d:	8b c8                	mov    ecx,eax
  4d200f:	f7 64 24 14          	mul    DWORD PTR [esp+0x14]
  4d2013:	91                   	xchg   ecx,eax
  4d2014:	f7 64 24 10          	mul    DWORD PTR [esp+0x10]
  4d2018:	03 d1                	add    edx,ecx
  4d201a:	72 0e                	jb     0x4d202a
  4d201c:	3b 54 24 0c          	cmp    edx,DWORD PTR [esp+0xc]
  4d2020:	77 08                	ja     0x4d202a
  4d2022:	72 0e                	jb     0x4d2032
  4d2024:	3b 44 24 08          	cmp    eax,DWORD PTR [esp+0x8]
  4d2028:	76 08                	jbe    0x4d2032
  4d202a:	2b 44 24 10          	sub    eax,DWORD PTR [esp+0x10]
  4d202e:	1b 54 24 14          	sbb    edx,DWORD PTR [esp+0x14]
  4d2032:	2b 44 24 08          	sub    eax,DWORD PTR [esp+0x8]
  4d2036:	1b 54 24 0c          	sbb    edx,DWORD PTR [esp+0xc]
  4d203a:	f7 da                	neg    edx
  4d203c:	f7 d8                	neg    eax
  4d203e:	83 da 00             	sbb    edx,0x0
  4d2041:	5b                   	pop    ebx
  4d2042:	c2 10 00             	ret    0x10

; Decalage logique droit de valeur 64 bits
; 0x004D2050..0x004D206F exclusif
  4d2050:	80 f9 40             	cmp    cl,0x40
  4d2053:	73 15                	jae    0x4d206a
  4d2055:	80 f9 20             	cmp    cl,0x20
  4d2058:	73 06                	jae    0x4d2060
  4d205a:	0f ad d0             	shrd   eax,edx,cl
  4d205d:	d3 ea                	shr    edx,cl
  4d205f:	c3                   	ret
  4d2060:	8b c2                	mov    eax,edx
  4d2062:	33 d2                	xor    edx,edx
  4d2064:	80 e1 1f             	and    cl,0x1f
  4d2067:	d3 e8                	shr    eax,cl
  4d2069:	c3                   	ret
  4d206a:	33 c0                	xor    eax,eax
  4d206c:	33 d2                	xor    edx,edx
  4d206e:	c3                   	ret

