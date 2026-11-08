# Passe 138 — Routine de nettoyage issue de la table unwind

Les métadonnées C++ à `0x4F0C30` (signature `0x19930520`, 2 états, UnwindMap `0x4F0C50`) contiennent une entrée état 1 pointant vers `0x4DDF8B`, une routine de 8 octets : `lea ecx,[ebp-0x10]` puis `jmp 0x4CF8C0`. Le pointeur est justifié par la table reliée au trampoline attesté à la passe 137. Ce parcours indique un nettoyage configuré ; il ne garantit pas son exécution dans toutes les conditions.

**Octets ajoutés dans cette passe : 8. Couverture cumulée : 809638 / 905117 (89.451198 %).**
