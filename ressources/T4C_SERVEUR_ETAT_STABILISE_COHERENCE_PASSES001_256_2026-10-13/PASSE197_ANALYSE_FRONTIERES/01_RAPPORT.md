# Passe 197 — Rattrapage des instructions découpées

Exécutable SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Référence : 828 027 octets couverts.

L'ancrage déjà couvert à `0x493A61`, atteint en continuation de `0x493A5B`, correspond à une **instruction complète de 10 octets**. Les anciens fichiers `.asm` n'en conservaient que 7 et contenaient des lignes intérieures au flux (notamment `0x493A7C`–`0x493A7F`).

Réexploration du flot avec GNU/LLVM : 476 instructions concordantes, dont **1573 octets uniques** auparavant hors masque. Le chemin observé termine sur `ret 0x8` à `0x4940A8`. La présence de branches et d'appels doit être distinguée d'une exécution réelle de tous les chemins.

Ce résultat étend une région de code précédemment documentée : la qualification de ses ancrages historiques reste celle de la base statique antérieure.
