# Passe 176 — Routines internes : continuation A

- Point de départ : `0x004A8A6E` ; octets nouveaux : **516** ; instructions : **168**.
- Provenance : l'instruction déjà comptée `0x004A8A69` (`call   0x499bc0`) se termine exactement à l'entrée du bloc.
- Preuve historique : `PASSE39_DESASSEMBLAGE/04_PREUVES_ENREGISTREMENTS_SORTS_WDA.asm`.
- Instructions nouvelles décodées depuis l'entrée par GNU objdump et LLVM objdump, avec octets identiques au PE original.
- Intervalle nouveau : `0x004A8A6E–0x004A8C72` (borne supérieure exclue).
- Aucun chevauchement avec le masque de la passe 172 ni avec les autres passes de ce lot.
- Contrôle du flot : poursuite des instructions séquentielles, traitement des transferts directs, arrêt aux instructions terminales ; aucun saut indirect non justifié promu dans ce lot.
- Limite : la couverture statique historique n'a pas été auditée intégralement.
