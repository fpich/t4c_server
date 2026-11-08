# Passe 178 — Routine d’application du mana et audit

- Point de départ : `0x0048D920` ; octets nouveaux : **67** ; instructions : **20**.
- Provenance : l'instruction déjà comptée `0x0048D91B` (`call   0x43da60`) se termine exactement à l'entrée du bloc.
- Preuve historique : `PASSE44_DESASSEMBLAGE/02_PREUVES_TYPE2_APPLICATION_MANA.asm`.
- Instructions nouvelles décodées depuis l'entrée par GNU objdump et LLVM objdump, avec octets identiques au PE original.
- Intervalle nouveau : `0x0048D920–0x0048D963` (borne supérieure exclue).
- Aucun chevauchement avec le masque de la passe 172 ni avec les autres passes de ce lot.
- Contrôle du flot : poursuite des instructions séquentielles, traitement des transferts directs, arrêt aux instructions terminales ; aucun saut indirect non justifié promu dans ce lot.
- Limite : la couverture statique historique n'a pas été auditée intégralement.
