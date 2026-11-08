# Passe 174 — Dispatcher WDA catégorie 5

- Point de départ : `0x0045AC11` ; octets nouveaux : **136** ; instructions : **47**.
- Provenance : l'instruction déjà comptée `0x0045AC0C` (`call   0x409760`) se termine exactement à l'entrée du bloc.
- Preuve historique : `PASSE56_DESASSEMBLAGE/02_PREUVES_DISPATCH_ECRITURES_VAR.asm`.
- Instructions nouvelles décodées depuis l'entrée par GNU objdump et LLVM objdump, avec octets identiques au PE original.
- Intervalle nouveau : `0x0045AC11–0x0045AC99` (borne supérieure exclue).
- Aucun chevauchement avec le masque de la passe 172 ni avec les autres passes de ce lot.
- Contrôle du flot : poursuite des instructions séquentielles, traitement des transferts directs, arrêt aux instructions terminales ; aucun saut indirect non justifié promu dans ce lot.
- Limite : la couverture statique historique n'a pas été auditée intégralement.
