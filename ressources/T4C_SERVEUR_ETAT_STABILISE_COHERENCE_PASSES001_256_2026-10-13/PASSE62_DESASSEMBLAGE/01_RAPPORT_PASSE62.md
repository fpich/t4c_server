# Passe 62 — Recherche des appelants du wrapper WDA

## Contrôle du binaire

- Fichier : T4C Server(2).exe (non inclus dans le ZIP)
- SHA-256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
- PE x86 ; .text : 0x401000–0x4DDF9D (905117 octets, borne haute exclusive).
- Méthode : objdump -d -M intel sur l'exécutable, recherche des CALL directs ciblant 0x45C890 et vérification locale des cinq PUSH.

## Résultat établi

Six CALL directs vers 0x45C890 : 0x45CEE2, 0x45CF17, 0x45CFAE, 0x45D074, 0x45D108, 0x45D23C. Dans chacun, le premier PUSH de la série de cinq transmet l'adresse locale [EBP-0x3C] de l'appelant (via LEA vers EAX/EDX/ECX). Étant donné l'ordre inversé des arguments sur x86, il s'agit du cinquième argument [EBP+0x18] du wrapper. La passe 61 a montré que ce paramètre est ensuite transmis comme sixième argument [EBP+0x1C] au dispatcher 0x45A7A0.

On obtient donc la chaîne de provenance **adresse d'une structure locale [EBP-0x3C] dans l'appelant -> [EBP+0x18] dans le wrapper -> [EBP+0x1C] dans le dispatcher -> recherche/insertion pour catégories 5 et 20**.

Cela démontre la provenance *immédiate* du pointeur, pas encore la sémantique du conteneur, ni sa durée de vie complète. Le destructeur de cette structure et le lien avec l'arbre du lecteur `var` à 0x40A5C4 restent inconnus. Les six appels directs n'excluent pas d'éventuels appels indirects.

## Couverture

La zone autour des appelants peut chevaucher les plages comptabilisées historiquement. Nouveaux octets uniques comptabilisés : **0**. Référence de couverture inchangée : 126431 / 905117 = 13,968 % (arrondi). Le différentiel historique de 233 octets reste à résoudre.

## Suite

Désassembler la fonction englobante à partir de 0x45C950, rechercher les écritures vers [EBP-0x3C] et les appels de destruction en fin de traitement ; comparer la structure résultante aux pointeurs passés au lecteur `var`.
