# Passe 192 — sauvegarde

Réparation d’une ancienne frontière tronquée dans `Character::SaveCharacter` autour de `0x41444F`; le flux suit les successeurs reconnus jusqu’au saut direct final.

Gain unique : **+27 octets**. Aucun octet de remplissage n’est ajouté après un `ret`.
