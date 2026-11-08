# Passe 177 — Routines internes : continuation B

- Point de départ : `0x004A8DA8` ; octets nouveaux : **275** ; instructions : **85**.
- Provenance : l'instruction déjà comptée `0x004A8DA2` (`call   DWORD PTR ds:0x4de514`) se termine exactement à l'entrée du bloc.
- Preuve historique : `PASSE40_DESASSEMBLAGE/04_PREUVES_INSERTION_COLLECTION_WDA.asm`.
- Instructions nouvelles décodées depuis l'entrée par GNU objdump et LLVM objdump, avec octets identiques au PE original.
- Intervalle nouveau : `0x004A8DA8–0x004A8EBB` (borne supérieure exclue).
- Aucun chevauchement avec le masque de la passe 172 ni avec les autres passes de ce lot.
- Contrôle du flot : poursuite des instructions séquentielles, traitement des transferts directs, arrêt aux instructions terminales ; aucun saut indirect non justifié promu dans ce lot.
- Limite : la couverture statique historique n'a pas été auditée intégralement.
