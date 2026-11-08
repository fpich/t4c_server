# Prolongement prioritaire après passe 41

1. Vérifier au niveau de la construction runtime la relation précise entre les **14 clés de superstructures**, le dispatcher `0x460C00` et les validateurs virtuels `0x473A2D`; résoudre au moins une vtable supplémentaire.
2. Vérifier si une entrée invalide du second WDA laisse intact un enregistrement valide de la première source (logique statique établie : oui si la première a atteint le registre et si la seconde n'appelle pas RegisterSpell). Chercher également les chemins alternatifs d'enregistrement.
3. Documenter les helpers de déplacement/copie `0x4ACB60`, `0x4ACCD0` et `0x4AC420` pour valider précisément les invariants de conteneur et les conditions de réallocation.
4. Reconstituer les sérialisations WDA : taille des champs sur disque, cardinalités imbriquées, comportement sur EOF; toujours sans prétendre décrire un WDA réel avant d'en posséder un.
5. Confirmer l'ordre d'utilisation du RNG à l'initialisation pour rendre non conditionnel le modèle de masque XOR.
