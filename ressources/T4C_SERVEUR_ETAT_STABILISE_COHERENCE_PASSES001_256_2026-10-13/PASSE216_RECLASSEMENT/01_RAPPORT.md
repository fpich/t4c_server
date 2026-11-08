# Passe 216 — 862 octets hérités mal classés

90 séquences uniformes d'octets `90` situées **entre** une instruction terminale masquée (`ret`/`jmp`) et un prologue également masqué (`push ebp; mov ebp,esp` ou équivalent). Les 862 octets étaient traités comme code ; 42 autres étaient indéterminés dans ces mêmes séquences dans le masque de la passe 214. Ils sont reclassés en **remplissage fortement présumé**, sous réserve de chemins indirects non exhaustivement résolus.

- La couche de provenance assembleur historique ne suffit pas à établir leur exécution.
- Les références textuelles disponibles et la table de relocations PE n'apportent aucun pointeur vers ces régions.
- L'ancien masque demeure intact dans l'archive ; le masque corrigé figure sous la passe 220.
