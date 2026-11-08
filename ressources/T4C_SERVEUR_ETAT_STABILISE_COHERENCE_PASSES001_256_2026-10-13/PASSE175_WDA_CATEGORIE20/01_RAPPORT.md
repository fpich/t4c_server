# Passe 175 — Dispatcher WDA catégorie 20

- Point de départ : `0x0045B9B2` ; octets nouveaux : **118** ; instructions : **40**.
- Provenance : l'instruction déjà comptée `0x0045B9AD` (`call   0x409760`) se termine exactement à l'entrée du bloc.
- Preuve historique : `PASSE56_DESASSEMBLAGE/02_PREUVES_DISPATCH_ECRITURES_VAR.asm`.
- Instructions nouvelles décodées depuis l'entrée par GNU objdump et LLVM objdump, avec octets identiques au PE original.
- Intervalle nouveau : `0x0045B9B2–0x0045BA28` (borne supérieure exclue).
- Aucun chevauchement avec le masque de la passe 172 ni avec les autres passes de ce lot.
- Contrôle du flot : poursuite des instructions séquentielles, traitement des transferts directs, arrêt aux instructions terminales ; aucun saut indirect non justifié promu dans ce lot.
- Limite : la couverture statique historique n'a pas été auditée intégralement.
