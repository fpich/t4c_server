# Décision `if` dans BoostFormula::GetOperandValue — PASSE55

## Découverte [CONFIRMÉ — assembleur]

`0x409F5F` lit `OPERAND+0x11`, puis `0x409F7B` aiguille le sous-type **2** vers `0x409F82` via la table de 12 destinations `0x40C144` (données, non instructions).

- `0x409FAE` : évaluation récursive de la **première** expression de comparaison, depuis `[esi+0x18]`, résultat dans `[ebp-0x14]`.
- `0x409FDD` : évaluation récursive de la **seconde** expression depuis `[esi+0x1C]`. Ces deux appels précèdent l'aiguillage de comparaison.
- `0x409FE2–0x409FF4` : lecture d'un identifiant de comparaison (1 à 6), table de six branches à `0x40C174`.
- Les six branches de comparaison aboutissent au chemin `0x40A061` (condition satisfaite) ou `0x40A0A5` (autre chemin); elles n'appellent encore aucune branche de résultat.
- `0x40A080–0x40A08B` : branche choisie sous `[esi+0x14]+0x20`, **un** appel à `0x409C10`.
- `0x40A0C4–0x40A0CC` : branche opposée sous `[esi+0x14]+0x00`, **un** appel à `0x409C10`.

## Conséquence fonctionnelle [CONFIRMÉE pour ce chemin]

Le code suit une **évaluation conditionnelle sélective** des deux résultats. Les sous-expressions de **comparaison** sont toutes deux évaluées, mais **une seule** des deux expressions de résultat est passée à l'évaluateur. Les écritures d'une branche de résultat non sélectionnée sont donc évitées sur ce chemin. Cela n'affirme ni absence d'effets secondaires dans la comparaison, ni évaluation paresseuse des opérateurs arithmétiques ordinaires : `0x409C48–0x409CB7` évalue les deux enfants d'un opérateur binaire avant son calcul.

Aucune exécution sur WDA authentique n'a été disponible. Le modèle suppose des nœuds créés par le parseur décrit à la passe 54.
