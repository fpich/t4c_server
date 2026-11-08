# Passe 180 — Desassemblage sur frontiere d'instruction prouvee

- Reference : executable SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Entree du parcours : `0x0044F5C7` (instruction precedemment couverte).
- Provenance : 0x44F5C7 : mov eax,[esi+0x24] deja couvert. Fallthrough vers 0x44F5CA, instruction partiellement masquee.
- Instructions retenues : **107**, toutes concordantes entre GNU objdump et LLVM objdump sur les octets/longueurs.
- Octets decodes par les instructions du parcours : **294**.
- Octets absents du masque de la passe 178 : **289**.
- Plage nouvellement couverte : `0x44f5cc–0x44f6ed` (fin exclue).
- Sortie : La reprise a 0x44F6ED et le saut vers 0x44F726 sont deja dans le masque historique.

Le parcours statique est limite aux branches directes et au fallthrough. Les appels indirects ne sont pas assimiles a leurs cibles. Ce compte n'etablit pas une validation fonctionnelle dynamique.
