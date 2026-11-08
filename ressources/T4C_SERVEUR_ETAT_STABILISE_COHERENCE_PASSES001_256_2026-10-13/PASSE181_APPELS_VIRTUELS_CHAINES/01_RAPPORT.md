# Passe 181 — Desassemblage sur frontiere d'instruction prouvee

- Reference : executable SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Entree du parcours : `0x0049EBCD` (instruction precedemment couverte).
- Provenance : 0x49EBCD : mov edx,[esi] deja couvert. Fallthrough vers 0x49EBCF, instruction partiellement masquee.
- Instructions retenues : **515**, toutes concordantes entre GNU objdump et LLVM objdump sur les octets/longueurs.
- Octets decodes par les instructions du parcours : **1573**.
- Octets absents du masque de la passe 178 : **1568**.
- Plage nouvellement couverte : `0x49ebd0–0x49f1f0` (fin exclue).
- Sortie : Le parcours est arrete a 0x49F1F2 ; la continuation suivante appartient a une zone deja analysee.

Le parcours statique est limite aux branches directes et au fallthrough. Les appels indirects ne sont pas assimiles a leurs cibles. Ce compte n'etablit pas une validation fonctionnelle dynamique.
