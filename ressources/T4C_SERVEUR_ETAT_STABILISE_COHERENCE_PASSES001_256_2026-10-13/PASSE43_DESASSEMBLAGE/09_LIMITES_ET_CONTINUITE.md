# Limites et suite proposée

1. **CONFIRMÉ** : deux tables de saut de quatre entrées, six libellés d'événements On*, comparaison `_stricmp`, et vocabulaire de caractéristiques (mémoire .data).
2. **CONFIRMÉ** : la validation utilise `0x409900`, distinct de l'évaluation des expressions par `0x40C350`/`0x409C10`.
3. **INFÉRÉ (avec précaution)** : certains champs de paramètres configurent des événements ou des valeurs modifiant l'état d'une unité. L'utilisation concrète de chaque code reste à suivre.
4. **NON ÉTABLI** : compatibilité avec un WDA authentique, bornes min/max des résultats numériques, comportement sur expression pathologique, réentrance des parseurs, gestion des erreurs de division par zéro.
5. **PASSE 44** : lier le type 2 aux écritures réelles sur les stats des unités, les codes On* du type 9 aux callbacks `0x4C7990`, et les quatre expressions du type 14 aux quantités calculées.
