; Preuves assembleur PASSE55 du serveur original SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Les plages VA sont semi-ouvertes; tables de saut et donnees exclues.

; [0x0040a82e, 0x0040ad01) : GetOperandValue: cas WDA 10-34, ressources et attributs self/target
  40a82e:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a831:	3b cb                	cmp    ecx,ebx
  40a833:	74 26                	je     0x40a85b
  40a835:	8b 11                	mov    edx,DWORD PTR [ecx]
  40a837:	ff 92 ec 00 00 00    	call   DWORD PTR [edx+0xec]
  40a83d:	5f                   	pop    edi
  40a83e:	5e                   	pop    esi
  40a83f:	5b                   	pop    ebx
  40a840:	25 ff ff 00 00       	and    eax,0xffff
  40a845:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a848:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a84b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a84e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a855:	8b e5                	mov    esp,ebp
  40a857:	5d                   	pop    ebp
  40a858:	c2 28 00             	ret    0x28
  40a85b:	5f                   	pop    edi
  40a85c:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a85f:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a862:	5e                   	pop    esi
  40a863:	5b                   	pop    ebx
  40a864:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a867:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a86e:	8b e5                	mov    esp,ebp
  40a870:	5d                   	pop    ebp
  40a871:	c2 28 00             	ret    0x28
  40a874:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a877:	3b cb                	cmp    ecx,ebx
  40a879:	74 26                	je     0x40a8a1
  40a87b:	8b 01                	mov    eax,DWORD PTR [ecx]
  40a87d:	ff 90 e0 00 00 00    	call   DWORD PTR [eax+0xe0]
  40a883:	5f                   	pop    edi
  40a884:	5e                   	pop    esi
  40a885:	5b                   	pop    ebx
  40a886:	25 ff ff 00 00       	and    eax,0xffff
  40a88b:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a88e:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a891:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a894:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a89b:	8b e5                	mov    esp,ebp
  40a89d:	5d                   	pop    ebp
  40a89e:	c2 28 00             	ret    0x28
  40a8a1:	5f                   	pop    edi
  40a8a2:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a8a5:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a8a8:	5e                   	pop    esi
  40a8a9:	5b                   	pop    ebx
  40a8aa:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a8ad:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a8b4:	8b e5                	mov    esp,ebp
  40a8b6:	5d                   	pop    ebp
  40a8b7:	c2 28 00             	ret    0x28
  40a8ba:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a8bd:	3b cb                	cmp    ecx,ebx
  40a8bf:	74 23                	je     0x40a8e4
  40a8c1:	e8 2a 39 08 00       	call   0x48e1f0
  40a8c6:	5f                   	pop    edi
  40a8c7:	5e                   	pop    esi
  40a8c8:	5b                   	pop    ebx
  40a8c9:	25 ff ff 00 00       	and    eax,0xffff
  40a8ce:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a8d1:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a8d4:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a8d7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a8de:	8b e5                	mov    esp,ebp
  40a8e0:	5d                   	pop    ebp
  40a8e1:	c2 28 00             	ret    0x28
  40a8e4:	5f                   	pop    edi
  40a8e5:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a8e8:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a8eb:	5e                   	pop    esi
  40a8ec:	5b                   	pop    ebx
  40a8ed:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a8f0:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a8f7:	8b e5                	mov    esp,ebp
  40a8f9:	5d                   	pop    ebp
  40a8fa:	c2 28 00             	ret    0x28
  40a8fd:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a900:	3b cb                	cmp    ecx,ebx
  40a902:	74 23                	je     0x40a927
  40a904:	e8 07 39 08 00       	call   0x48e210
  40a909:	5f                   	pop    edi
  40a90a:	5e                   	pop    esi
  40a90b:	5b                   	pop    ebx
  40a90c:	25 ff ff 00 00       	and    eax,0xffff
  40a911:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a914:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a917:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a91a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a921:	8b e5                	mov    esp,ebp
  40a923:	5d                   	pop    ebp
  40a924:	c2 28 00             	ret    0x28
  40a927:	5f                   	pop    edi
  40a928:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a92b:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a92e:	5e                   	pop    esi
  40a92f:	5b                   	pop    ebx
  40a930:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a933:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a93a:	8b e5                	mov    esp,ebp
  40a93c:	5d                   	pop    ebp
  40a93d:	c2 28 00             	ret    0x28
  40a940:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a943:	3b cb                	cmp    ecx,ebx
  40a945:	74 26                	je     0x40a96d
  40a947:	8b 11                	mov    edx,DWORD PTR [ecx]
  40a949:	ff 92 3c 01 00 00    	call   DWORD PTR [edx+0x13c]
  40a94f:	5f                   	pop    edi
  40a950:	5e                   	pop    esi
  40a951:	5b                   	pop    ebx
  40a952:	25 ff ff 00 00       	and    eax,0xffff
  40a957:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a95a:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a95d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a960:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a967:	8b e5                	mov    esp,ebp
  40a969:	5d                   	pop    ebp
  40a96a:	c2 28 00             	ret    0x28
  40a96d:	5f                   	pop    edi
  40a96e:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a971:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a974:	5e                   	pop    esi
  40a975:	5b                   	pop    ebx
  40a976:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a979:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a980:	8b e5                	mov    esp,ebp
  40a982:	5d                   	pop    ebp
  40a983:	c2 28 00             	ret    0x28
  40a986:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40a989:	3b cb                	cmp    ecx,ebx
  40a98b:	74 23                	je     0x40a9b0
  40a98d:	e8 de 37 08 00       	call   0x48e170
  40a992:	5f                   	pop    edi
  40a993:	5e                   	pop    esi
  40a994:	5b                   	pop    ebx
  40a995:	25 ff ff 00 00       	and    eax,0xffff
  40a99a:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a99d:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a9a0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a9a3:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a9aa:	8b e5                	mov    esp,ebp
  40a9ac:	5d                   	pop    ebp
  40a9ad:	c2 28 00             	ret    0x28
  40a9b0:	5f                   	pop    edi
  40a9b1:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a9b4:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a9b7:	5e                   	pop    esi
  40a9b8:	5b                   	pop    ebx
  40a9b9:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a9bc:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a9c3:	8b e5                	mov    esp,ebp
  40a9c5:	5d                   	pop    ebp
  40a9c6:	c2 28 00             	ret    0x28
  40a9c9:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40a9cc:	3b cb                	cmp    ecx,ebx
  40a9ce:	74 23                	je     0x40a9f3
  40a9d0:	e8 7b 37 08 00       	call   0x48e150
  40a9d5:	5f                   	pop    edi
  40a9d6:	5e                   	pop    esi
  40a9d7:	5b                   	pop    ebx
  40a9d8:	25 ff ff 00 00       	and    eax,0xffff
  40a9dd:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a9e0:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a9e3:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a9e6:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a9ed:	8b e5                	mov    esp,ebp
  40a9ef:	5d                   	pop    ebp
  40a9f0:	c2 28 00             	ret    0x28
  40a9f3:	5f                   	pop    edi
  40a9f4:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a9f7:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a9fa:	5e                   	pop    esi
  40a9fb:	5b                   	pop    ebx
  40a9fc:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a9ff:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aa06:	8b e5                	mov    esp,ebp
  40aa08:	5d                   	pop    ebp
  40aa09:	c2 28 00             	ret    0x28
  40aa0c:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40aa0f:	3b cb                	cmp    ecx,ebx
  40aa11:	74 23                	je     0x40aa36
  40aa13:	e8 78 37 08 00       	call   0x48e190
  40aa18:	5f                   	pop    edi
  40aa19:	5e                   	pop    esi
  40aa1a:	5b                   	pop    ebx
  40aa1b:	25 ff ff 00 00       	and    eax,0xffff
  40aa20:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40aa23:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40aa26:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40aa29:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aa30:	8b e5                	mov    esp,ebp
  40aa32:	5d                   	pop    ebp
  40aa33:	c2 28 00             	ret    0x28
  40aa36:	5f                   	pop    edi
  40aa37:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40aa3a:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40aa3d:	5e                   	pop    esi
  40aa3e:	5b                   	pop    ebx
  40aa3f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40aa42:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aa49:	8b e5                	mov    esp,ebp
  40aa4b:	5d                   	pop    ebp
  40aa4c:	c2 28 00             	ret    0x28
  40aa4f:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40aa52:	3b cb                	cmp    ecx,ebx
  40aa54:	74 23                	je     0x40aa79
  40aa56:	e8 75 37 08 00       	call   0x48e1d0
  40aa5b:	5f                   	pop    edi
  40aa5c:	5e                   	pop    esi
  40aa5d:	5b                   	pop    ebx
  40aa5e:	25 ff ff 00 00       	and    eax,0xffff
  40aa63:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40aa66:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40aa69:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40aa6c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aa73:	8b e5                	mov    esp,ebp
  40aa75:	5d                   	pop    ebp
  40aa76:	c2 28 00             	ret    0x28
  40aa79:	5f                   	pop    edi
  40aa7a:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40aa7d:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40aa80:	5e                   	pop    esi
  40aa81:	5b                   	pop    ebx
  40aa82:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40aa85:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aa8c:	8b e5                	mov    esp,ebp
  40aa8e:	5d                   	pop    ebp
  40aa8f:	c2 28 00             	ret    0x28
  40aa92:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40aa95:	3b cb                	cmp    ecx,ebx
  40aa97:	74 23                	je     0x40aabc
  40aa99:	e8 12 37 08 00       	call   0x48e1b0
  40aa9e:	5f                   	pop    edi
  40aa9f:	5e                   	pop    esi
  40aaa0:	5b                   	pop    ebx
  40aaa1:	25 ff ff 00 00       	and    eax,0xffff
  40aaa6:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40aaa9:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40aaac:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40aaaf:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aab6:	8b e5                	mov    esp,ebp
  40aab8:	5d                   	pop    ebp
  40aab9:	c2 28 00             	ret    0x28
  40aabc:	5f                   	pop    edi
  40aabd:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40aac0:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40aac3:	5e                   	pop    esi
  40aac4:	5b                   	pop    ebx
  40aac5:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40aac8:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aacf:	8b e5                	mov    esp,ebp
  40aad1:	5d                   	pop    ebp
  40aad2:	c2 28 00             	ret    0x28
  40aad5:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40aad8:	3b cb                	cmp    ecx,ebx
  40aada:	74 24                	je     0x40ab00
  40aadc:	8b 01                	mov    eax,DWORD PTR [ecx]
  40aade:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  40aae4:	5f                   	pop    edi
  40aae5:	89 5d 18             	mov    DWORD PTR [ebp+0x18],ebx
  40aae8:	5e                   	pop    esi
  40aae9:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
  40aaec:	df 6d 14             	fild   QWORD PTR [ebp+0x14]
  40aaef:	5b                   	pop    ebx
  40aaf0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40aaf3:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aafa:	8b e5                	mov    esp,ebp
  40aafc:	5d                   	pop    ebp
  40aafd:	c2 28 00             	ret    0x28
  40ab00:	5f                   	pop    edi
  40ab01:	33 c0                	xor    eax,eax
  40ab03:	89 5d 18             	mov    DWORD PTR [ebp+0x18],ebx
  40ab06:	5e                   	pop    esi
  40ab07:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
  40ab0a:	df 6d 14             	fild   QWORD PTR [ebp+0x14]
  40ab0d:	5b                   	pop    ebx
  40ab0e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ab11:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ab18:	8b e5                	mov    esp,ebp
  40ab1a:	5d                   	pop    ebp
  40ab1b:	c2 28 00             	ret    0x28
  40ab1e:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40ab21:	3b cb                	cmp    ecx,ebx
  40ab23:	74 24                	je     0x40ab49
  40ab25:	8b 11                	mov    edx,DWORD PTR [ecx]
  40ab27:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  40ab2d:	5f                   	pop    edi
  40ab2e:	89 5d 18             	mov    DWORD PTR [ebp+0x18],ebx
  40ab31:	5e                   	pop    esi
  40ab32:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
  40ab35:	df 6d 14             	fild   QWORD PTR [ebp+0x14]
  40ab38:	5b                   	pop    ebx
  40ab39:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ab3c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ab43:	8b e5                	mov    esp,ebp
  40ab45:	5d                   	pop    ebp
  40ab46:	c2 28 00             	ret    0x28
  40ab49:	5f                   	pop    edi
  40ab4a:	33 c0                	xor    eax,eax
  40ab4c:	89 5d 18             	mov    DWORD PTR [ebp+0x18],ebx
  40ab4f:	5e                   	pop    esi
  40ab50:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
  40ab53:	df 6d 14             	fild   QWORD PTR [ebp+0x14]
  40ab56:	5b                   	pop    ebx
  40ab57:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ab5a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ab61:	8b e5                	mov    esp,ebp
  40ab63:	5d                   	pop    ebp
  40ab64:	c2 28 00             	ret    0x28
  40ab67:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40ab6a:	3b cb                	cmp    ecx,ebx
  40ab6c:	74 26                	je     0x40ab94
  40ab6e:	8b 01                	mov    eax,DWORD PTR [ecx]
  40ab70:	ff 90 ec 00 00 00    	call   DWORD PTR [eax+0xec]
  40ab76:	5f                   	pop    edi
  40ab77:	5e                   	pop    esi
  40ab78:	5b                   	pop    ebx
  40ab79:	25 ff ff 00 00       	and    eax,0xffff
  40ab7e:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ab81:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ab84:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ab87:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ab8e:	8b e5                	mov    esp,ebp
  40ab90:	5d                   	pop    ebp
  40ab91:	c2 28 00             	ret    0x28
  40ab94:	5f                   	pop    edi
  40ab95:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ab98:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ab9b:	5e                   	pop    esi
  40ab9c:	5b                   	pop    ebx
  40ab9d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40aba0:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aba7:	8b e5                	mov    esp,ebp
  40aba9:	5d                   	pop    ebp
  40abaa:	c2 28 00             	ret    0x28
  40abad:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40abb0:	3b cb                	cmp    ecx,ebx
  40abb2:	74 26                	je     0x40abda
  40abb4:	8b 11                	mov    edx,DWORD PTR [ecx]
  40abb6:	ff 92 e0 00 00 00    	call   DWORD PTR [edx+0xe0]
  40abbc:	5f                   	pop    edi
  40abbd:	5e                   	pop    esi
  40abbe:	5b                   	pop    ebx
  40abbf:	25 ff ff 00 00       	and    eax,0xffff
  40abc4:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40abc7:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40abca:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40abcd:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40abd4:	8b e5                	mov    esp,ebp
  40abd6:	5d                   	pop    ebp
  40abd7:	c2 28 00             	ret    0x28
  40abda:	5f                   	pop    edi
  40abdb:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40abde:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40abe1:	5e                   	pop    esi
  40abe2:	5b                   	pop    ebx
  40abe3:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40abe6:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40abed:	8b e5                	mov    esp,ebp
  40abef:	5d                   	pop    ebp
  40abf0:	c2 28 00             	ret    0x28
  40abf3:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40abf6:	3b cb                	cmp    ecx,ebx
  40abf8:	74 23                	je     0x40ac1d
  40abfa:	e8 f1 35 08 00       	call   0x48e1f0
  40abff:	5f                   	pop    edi
  40ac00:	5e                   	pop    esi
  40ac01:	5b                   	pop    ebx
  40ac02:	25 ff ff 00 00       	and    eax,0xffff
  40ac07:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ac0a:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ac0d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ac10:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ac17:	8b e5                	mov    esp,ebp
  40ac19:	5d                   	pop    ebp
  40ac1a:	c2 28 00             	ret    0x28
  40ac1d:	5f                   	pop    edi
  40ac1e:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ac21:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ac24:	5e                   	pop    esi
  40ac25:	5b                   	pop    ebx
  40ac26:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ac29:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ac30:	8b e5                	mov    esp,ebp
  40ac32:	5d                   	pop    ebp
  40ac33:	c2 28 00             	ret    0x28
  40ac36:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40ac39:	3b cb                	cmp    ecx,ebx
  40ac3b:	74 23                	je     0x40ac60
  40ac3d:	e8 ce 35 08 00       	call   0x48e210
  40ac42:	5f                   	pop    edi
  40ac43:	5e                   	pop    esi
  40ac44:	5b                   	pop    ebx
  40ac45:	25 ff ff 00 00       	and    eax,0xffff
  40ac4a:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ac4d:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ac50:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ac53:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ac5a:	8b e5                	mov    esp,ebp
  40ac5c:	5d                   	pop    ebp
  40ac5d:	c2 28 00             	ret    0x28
  40ac60:	5f                   	pop    edi
  40ac61:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ac64:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ac67:	5e                   	pop    esi
  40ac68:	5b                   	pop    ebx
  40ac69:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ac6c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ac73:	8b e5                	mov    esp,ebp
  40ac75:	5d                   	pop    ebp
  40ac76:	c2 28 00             	ret    0x28
  40ac79:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40ac7c:	3b cb                	cmp    ecx,ebx
  40ac7e:	74 26                	je     0x40aca6
  40ac80:	8b 01                	mov    eax,DWORD PTR [ecx]
  40ac82:	ff 90 3c 01 00 00    	call   DWORD PTR [eax+0x13c]
  40ac88:	5f                   	pop    edi
  40ac89:	5e                   	pop    esi
  40ac8a:	5b                   	pop    ebx
  40ac8b:	25 ff ff 00 00       	and    eax,0xffff
  40ac90:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ac93:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ac96:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ac99:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40aca0:	8b e5                	mov    esp,ebp
  40aca2:	5d                   	pop    ebp
  40aca3:	c2 28 00             	ret    0x28
  40aca6:	5f                   	pop    edi
  40aca7:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40acaa:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40acad:	5e                   	pop    esi
  40acae:	5b                   	pop    ebx
  40acaf:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40acb2:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40acb9:	8b e5                	mov    esp,ebp
  40acbb:	5d                   	pop    ebp
  40acbc:	c2 28 00             	ret    0x28
  40acbf:	dd 45 14             	fld    QWORD PTR [ebp+0x14]
  40acc2:	5f                   	pop    edi
  40acc3:	5e                   	pop    esi
  40acc4:	5b                   	pop    ebx
  40acc5:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40acc8:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40accf:	8b e5                	mov    esp,ebp
  40acd1:	5d                   	pop    ebp
  40acd2:	c2 28 00             	ret    0x28
  40acd5:	dd 45 1c             	fld    QWORD PTR [ebp+0x1c]
  40acd8:	5f                   	pop    edi
  40acd9:	5e                   	pop    esi
  40acda:	5b                   	pop    ebx
  40acdb:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40acde:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ace5:	8b e5                	mov    esp,ebp
  40ace7:	5d                   	pop    ebp
  40ace8:	c2 28 00             	ret    0x28
  40aceb:	dd 45 24             	fld    QWORD PTR [ebp+0x24]
  40acee:	5f                   	pop    edi
  40acef:	5e                   	pop    esi
  40acf0:	5b                   	pop    ebx
  40acf1:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40acf4:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40acfb:	8b e5                	mov    esp,ebp
  40acfd:	5d                   	pop    ebp
  40acfe:	c2 28 00             	ret    0x28

