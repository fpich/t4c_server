# Passe 139 — Inventaire des métadonnées C++ d’exception

Inspection structurelle des séquences de signature `0x19930520` dans `.rdata`. 788 candidats FuncInfo présentent un nombre d’états plausible, une table UnwindMap valide et un trampoline du motif `mov eax,<FuncInfo>; jmp`. Parmi leurs actions de nettoyage, une seule entrée était absente du masque de la passe 136 : `0x4DDF8B`, déjà ajoutée à la passe 138. Ce recensement porte sur les métadonnées détectées, sans promettre une couverture exhaustive des gestionnaires d’exception du serveur.

**Octets ajoutés dans cette passe : 0. Couverture cumulée : 809638 / 905117 (89.451198 %).**
