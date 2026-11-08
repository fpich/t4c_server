; PASSE52 — preuve assembleur du binaire original 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Intervalles semi-ouverts, extraits relus semantiquement ; aucune zone de table en octets assimilee a du code

; [0x40a637,0x40a79c) — Constantes, getters statistiques INT STR END WIS AGI et cas nuls
  40a637:	dd 46 08             	fld    QWORD PTR [esi+0x8]
  40a63a:	5f                   	pop    edi
  40a63b:	5e                   	pop    esi
  40a63c:	5b                   	pop    ebx
  40a63d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a640:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a647:	8b e5                	mov    esp,ebp
  40a649:	5d                   	pop    ebp
  40a64a:	c2 28 00             	ret    0x28
  40a64d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a650:	3b cb                	cmp    ecx,ebx
  40a652:	74 23                	je     0x40a677
  40a654:	e8 17 3b 08 00       	call   0x48e170
  40a659:	5f                   	pop    edi
  40a65a:	5e                   	pop    esi
  40a65b:	5b                   	pop    ebx
  40a65c:	25 ff ff 00 00       	and    eax,0xffff
  40a661:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a664:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a667:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a66a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a671:	8b e5                	mov    esp,ebp
  40a673:	5d                   	pop    ebp
  40a674:	c2 28 00             	ret    0x28
  40a677:	5f                   	pop    edi
  40a678:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a67b:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a67e:	5e                   	pop    esi
  40a67f:	5b                   	pop    ebx
  40a680:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a683:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a68a:	8b e5                	mov    esp,ebp
  40a68c:	5d                   	pop    ebp
  40a68d:	c2 28 00             	ret    0x28
  40a690:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a693:	3b cb                	cmp    ecx,ebx
  40a695:	74 23                	je     0x40a6ba
  40a697:	e8 b4 3a 08 00       	call   0x48e150
  40a69c:	5f                   	pop    edi
  40a69d:	5e                   	pop    esi
  40a69e:	5b                   	pop    ebx
  40a69f:	25 ff ff 00 00       	and    eax,0xffff
  40a6a4:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a6a7:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a6aa:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a6ad:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a6b4:	8b e5                	mov    esp,ebp
  40a6b6:	5d                   	pop    ebp
  40a6b7:	c2 28 00             	ret    0x28
  40a6ba:	5f                   	pop    edi
  40a6bb:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a6be:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a6c1:	5e                   	pop    esi
  40a6c2:	5b                   	pop    ebx
  40a6c3:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a6c6:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a6cd:	8b e5                	mov    esp,ebp
  40a6cf:	5d                   	pop    ebp
  40a6d0:	c2 28 00             	ret    0x28
  40a6d3:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a6d6:	3b cb                	cmp    ecx,ebx
  40a6d8:	74 23                	je     0x40a6fd
  40a6da:	e8 b1 3a 08 00       	call   0x48e190
  40a6df:	5f                   	pop    edi
  40a6e0:	5e                   	pop    esi
  40a6e1:	5b                   	pop    ebx
  40a6e2:	25 ff ff 00 00       	and    eax,0xffff
  40a6e7:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a6ea:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a6ed:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a6f0:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a6f7:	8b e5                	mov    esp,ebp
  40a6f9:	5d                   	pop    ebp
  40a6fa:	c2 28 00             	ret    0x28
  40a6fd:	5f                   	pop    edi
  40a6fe:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a701:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a704:	5e                   	pop    esi
  40a705:	5b                   	pop    ebx
  40a706:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a709:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a710:	8b e5                	mov    esp,ebp
  40a712:	5d                   	pop    ebp
  40a713:	c2 28 00             	ret    0x28
  40a716:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a719:	3b cb                	cmp    ecx,ebx
  40a71b:	74 23                	je     0x40a740
  40a71d:	e8 ae 3a 08 00       	call   0x48e1d0
  40a722:	5f                   	pop    edi
  40a723:	5e                   	pop    esi
  40a724:	5b                   	pop    ebx
  40a725:	25 ff ff 00 00       	and    eax,0xffff
  40a72a:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a72d:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a730:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a733:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a73a:	8b e5                	mov    esp,ebp
  40a73c:	5d                   	pop    ebp
  40a73d:	c2 28 00             	ret    0x28
  40a740:	5f                   	pop    edi
  40a741:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a744:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a747:	5e                   	pop    esi
  40a748:	5b                   	pop    ebx
  40a749:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a74c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a753:	8b e5                	mov    esp,ebp
  40a755:	5d                   	pop    ebp
  40a756:	c2 28 00             	ret    0x28
  40a759:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a75c:	3b cb                	cmp    ecx,ebx
  40a75e:	74 23                	je     0x40a783
  40a760:	e8 4b 3a 08 00       	call   0x48e1b0
  40a765:	5f                   	pop    edi
  40a766:	5e                   	pop    esi
  40a767:	5b                   	pop    ebx
  40a768:	25 ff ff 00 00       	and    eax,0xffff
  40a76d:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a770:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a773:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a776:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a77d:	8b e5                	mov    esp,ebp
  40a77f:	5d                   	pop    ebp
  40a780:	c2 28 00             	ret    0x28
  40a783:	5f                   	pop    edi
  40a784:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a787:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a78a:	5e                   	pop    esi
  40a78b:	5b                   	pop    ebx
  40a78c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a78f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a796:	8b e5                	mov    esp,ebp
  40a798:	5d                   	pop    ebp
  40a799:	c2 28 00             	ret    0x28

; [0x40b4f9,0x40b6ce) — GetTrueINT/STR/END/WIS/AGI/ATTACK/DODGE sur premier contexte
  40b4f9:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b4fc:	3b cb                	cmp    ecx,ebx
  40b4fe:	74 23                	je     0x40b523
  40b500:	e8 2b 2d 08 00       	call   0x48e230
  40b505:	5f                   	pop    edi
  40b506:	5e                   	pop    esi
  40b507:	5b                   	pop    ebx
  40b508:	25 ff ff 00 00       	and    eax,0xffff
  40b50d:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b510:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b513:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b516:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b51d:	8b e5                	mov    esp,ebp
  40b51f:	5d                   	pop    ebp
  40b520:	c2 28 00             	ret    0x28
  40b523:	5f                   	pop    edi
  40b524:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b527:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b52a:	5e                   	pop    esi
  40b52b:	5b                   	pop    ebx
  40b52c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b52f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b536:	8b e5                	mov    esp,ebp
  40b538:	5d                   	pop    ebp
  40b539:	c2 28 00             	ret    0x28
  40b53c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b53f:	3b cb                	cmp    ecx,ebx
  40b541:	74 23                	je     0x40b566
  40b543:	e8 08 2d 08 00       	call   0x48e250
  40b548:	5f                   	pop    edi
  40b549:	5e                   	pop    esi
  40b54a:	5b                   	pop    ebx
  40b54b:	25 ff ff 00 00       	and    eax,0xffff
  40b550:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b553:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b556:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b559:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b560:	8b e5                	mov    esp,ebp
  40b562:	5d                   	pop    ebp
  40b563:	c2 28 00             	ret    0x28
  40b566:	5f                   	pop    edi
  40b567:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b56a:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b56d:	5e                   	pop    esi
  40b56e:	5b                   	pop    ebx
  40b56f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b572:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b579:	8b e5                	mov    esp,ebp
  40b57b:	5d                   	pop    ebp
  40b57c:	c2 28 00             	ret    0x28
  40b57f:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b582:	3b cb                	cmp    ecx,ebx
  40b584:	74 23                	je     0x40b5a9
  40b586:	e8 b5 2c 08 00       	call   0x48e240
  40b58b:	5f                   	pop    edi
  40b58c:	5e                   	pop    esi
  40b58d:	5b                   	pop    ebx
  40b58e:	25 ff ff 00 00       	and    eax,0xffff
  40b593:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b596:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b599:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b59c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b5a3:	8b e5                	mov    esp,ebp
  40b5a5:	5d                   	pop    ebp
  40b5a6:	c2 28 00             	ret    0x28
  40b5a9:	5f                   	pop    edi
  40b5aa:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b5ad:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b5b0:	5e                   	pop    esi
  40b5b1:	5b                   	pop    ebx
  40b5b2:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b5b5:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b5bc:	8b e5                	mov    esp,ebp
  40b5be:	5d                   	pop    ebp
  40b5bf:	c2 28 00             	ret    0x28
  40b5c2:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b5c5:	3b cb                	cmp    ecx,ebx
  40b5c7:	74 23                	je     0x40b5ec
  40b5c9:	e8 a2 2c 08 00       	call   0x48e270
  40b5ce:	5f                   	pop    edi
  40b5cf:	5e                   	pop    esi
  40b5d0:	5b                   	pop    ebx
  40b5d1:	25 ff ff 00 00       	and    eax,0xffff
  40b5d6:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b5d9:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b5dc:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b5df:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b5e6:	8b e5                	mov    esp,ebp
  40b5e8:	5d                   	pop    ebp
  40b5e9:	c2 28 00             	ret    0x28
  40b5ec:	5f                   	pop    edi
  40b5ed:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b5f0:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b5f3:	5e                   	pop    esi
  40b5f4:	5b                   	pop    ebx
  40b5f5:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b5f8:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b5ff:	8b e5                	mov    esp,ebp
  40b601:	5d                   	pop    ebp
  40b602:	c2 28 00             	ret    0x28
  40b605:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b608:	3b cb                	cmp    ecx,ebx
  40b60a:	74 23                	je     0x40b62f
  40b60c:	e8 4f 2c 08 00       	call   0x48e260
  40b611:	5f                   	pop    edi
  40b612:	5e                   	pop    esi
  40b613:	5b                   	pop    ebx
  40b614:	25 ff ff 00 00       	and    eax,0xffff
  40b619:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b61c:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b61f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b622:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b629:	8b e5                	mov    esp,ebp
  40b62b:	5d                   	pop    ebp
  40b62c:	c2 28 00             	ret    0x28
  40b62f:	5f                   	pop    edi
  40b630:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b633:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b636:	5e                   	pop    esi
  40b637:	5b                   	pop    ebx
  40b638:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b63b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b642:	8b e5                	mov    esp,ebp
  40b644:	5d                   	pop    ebp
  40b645:	c2 28 00             	ret    0x28
  40b648:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b64b:	3b cb                	cmp    ecx,ebx
  40b64d:	74 23                	je     0x40b672
  40b64f:	e8 2c 2c 08 00       	call   0x48e280
  40b654:	5f                   	pop    edi
  40b655:	5e                   	pop    esi
  40b656:	5b                   	pop    ebx
  40b657:	25 ff ff 00 00       	and    eax,0xffff
  40b65c:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b65f:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b662:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b665:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b66c:	8b e5                	mov    esp,ebp
  40b66e:	5d                   	pop    ebp
  40b66f:	c2 28 00             	ret    0x28
  40b672:	5f                   	pop    edi
  40b673:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b676:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b679:	5e                   	pop    esi
  40b67a:	5b                   	pop    ebx
  40b67b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b67e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b685:	8b e5                	mov    esp,ebp
  40b687:	5d                   	pop    ebp
  40b688:	c2 28 00             	ret    0x28
  40b68b:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40b68e:	3b cb                	cmp    ecx,ebx
  40b690:	74 23                	je     0x40b6b5
  40b692:	e8 f9 2b 08 00       	call   0x48e290
  40b697:	5f                   	pop    edi
  40b698:	5e                   	pop    esi
  40b699:	5b                   	pop    ebx
  40b69a:	25 ff ff 00 00       	and    eax,0xffff
  40b69f:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40b6a2:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b6a5:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b6a8:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b6af:	8b e5                	mov    esp,ebp
  40b6b1:	5d                   	pop    ebp
  40b6b2:	c2 28 00             	ret    0x28
  40b6b5:	5f                   	pop    edi
  40b6b6:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40b6b9:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40b6bc:	5e                   	pop    esi
  40b6bd:	5b                   	pop    ebx
  40b6be:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40b6c1:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40b6c8:	8b e5                	mov    esp,ebp
  40b6ca:	5d                   	pop    ebp
  40b6cb:	c2 28 00             	ret    0x28

; [0x40ba22,0x40baeb) — GetTrueINT/STR/END sur second contexte
  40ba22:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40ba25:	3b cb                	cmp    ecx,ebx
  40ba27:	74 23                	je     0x40ba4c
  40ba29:	e8 02 28 08 00       	call   0x48e230
  40ba2e:	5f                   	pop    edi
  40ba2f:	5e                   	pop    esi
  40ba30:	5b                   	pop    ebx
  40ba31:	25 ff ff 00 00       	and    eax,0xffff
  40ba36:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ba39:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ba3c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ba3f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ba46:	8b e5                	mov    esp,ebp
  40ba48:	5d                   	pop    ebp
  40ba49:	c2 28 00             	ret    0x28
  40ba4c:	5f                   	pop    edi
  40ba4d:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ba50:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ba53:	5e                   	pop    esi
  40ba54:	5b                   	pop    ebx
  40ba55:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ba58:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ba5f:	8b e5                	mov    esp,ebp
  40ba61:	5d                   	pop    ebp
  40ba62:	c2 28 00             	ret    0x28
  40ba65:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40ba68:	3b cb                	cmp    ecx,ebx
  40ba6a:	74 23                	je     0x40ba8f
  40ba6c:	e8 df 27 08 00       	call   0x48e250
  40ba71:	5f                   	pop    edi
  40ba72:	5e                   	pop    esi
  40ba73:	5b                   	pop    ebx
  40ba74:	25 ff ff 00 00       	and    eax,0xffff
  40ba79:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40ba7c:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ba7f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ba82:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40ba89:	8b e5                	mov    esp,ebp
  40ba8b:	5d                   	pop    ebp
  40ba8c:	c2 28 00             	ret    0x28
  40ba8f:	5f                   	pop    edi
  40ba90:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40ba93:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40ba96:	5e                   	pop    esi
  40ba97:	5b                   	pop    ebx
  40ba98:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40ba9b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40baa2:	8b e5                	mov    esp,ebp
  40baa4:	5d                   	pop    ebp
  40baa5:	c2 28 00             	ret    0x28
  40baa8:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40baab:	3b cb                	cmp    ecx,ebx
  40baad:	74 23                	je     0x40bad2
  40baaf:	e8 8c 27 08 00       	call   0x48e240
  40bab4:	5f                   	pop    edi
  40bab5:	5e                   	pop    esi
  40bab6:	5b                   	pop    ebx
  40bab7:	25 ff ff 00 00       	and    eax,0xffff
  40babc:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40babf:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bac2:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bac5:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bacc:	8b e5                	mov    esp,ebp
  40bace:	5d                   	pop    ebp
  40bacf:	c2 28 00             	ret    0x28
  40bad2:	5f                   	pop    edi
  40bad3:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40bad6:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40bad9:	5e                   	pop    esi
  40bada:	5b                   	pop    ebx
  40badb:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40bade:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40bae5:	8b e5                	mov    esp,ebp
  40bae7:	5d                   	pop    ebp
  40bae8:	c2 28 00             	ret    0x28

