# Limites techniques et poursuite

- Les références de niveau `SOURCE_ASM_HISTORIQUE` reposent sur une ligne assembleur antérieure. `SOURCE_MASQUE_DECODE` repose sur le masque et les octets du binaire, avec moins de contexte de provenance.
- Ne pas déduire la nature des fonctions à partir de l'existence d'une instruction `call` seule.
- Les appels virtuels, les jump tables non résolues, les pointeurs de callback et le code sans xref ne sont pas fermés par cette recherche.
- Le binaire n'a pas été exécuté : aucun test en charge, aucune comparaison comportementale, aucune validation de sécurité mémoire dynamique.
- Les points d'entrée antérieurs issus de la table des relocations doivent être réaudités pour séparer code authentique et données plausible en x86.

## Priorités 125–130

1. Vérifier les trous `0x43EF10` et `0x4B9CE0` avec les références de callbacks et les éventuelles initialisations de pointeurs.
2. Compléter l'index des importations et des appels virtuels non résolus.
3. Cartographier les 95 495 octets hors masque en code, données intégrées, remplissage et alignement, avant de compter de nouvelles plages.
4. Approfondir la sémantique des routines de sauvegarde, du cycle de vie WDA et des sessions.
