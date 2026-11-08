# Passe 142 — Audit cumulatif des nouvelles instructions

Recalcul depuis le masque corrigé de la passe 136 : +10 octets de trampoline SEH, +8 octets de nettoyage UnwindMap, sans aucun doublon. Les quatre instructions nouvellement comptées concordent avec le PE original et avec `objdump` et `llvm-objdump`. Deux régions plausibles ont été examinées sans être ajoutées. Le dénominateur de la section `.text` inclut potentiellement du code mort, des alignements et des données ; la couverture reste donc une mesure statique sous réserve des hypothèses historiques.

**Octets ajoutés dans cette passe : 0. Couverture cumulée : 809638 / 905117 (89.451198 %).**
