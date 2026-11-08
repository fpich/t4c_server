# Passe 179 — Desassemblage sur frontiere d'instruction prouvee

- Reference : executable SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Entree du parcours : `0x0041305C` (instruction precedemment couverte).
- Provenance : 0x41305C : mov cl,[ebp-0x0D] deja couvert. Fallthrough vers 0x41305F, dont seul le premier octet etait masque.
- Instructions retenues : **228**, toutes concordantes entre GNU objdump et LLVM objdump sur les octets/longueurs.
- Octets decodes par les instructions du parcours : **667**.
- Octets absents du masque de la passe 178 : **663**.
- Plage nouvellement couverte : `0x413060–0x4132f7` (fin exclue).
- Sortie : Le graphe se termine par un ret a 0x4132F6; les NOP ulterieurs sont exclus.

Le parcours statique est limite aux branches directes et au fallthrough. Les appels indirects ne sont pas assimiles a leurs cibles. Ce compte n'etablit pas une validation fonctionnelle dynamique.
