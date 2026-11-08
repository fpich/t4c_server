# Passe 27 — Désassemblage des conteneurs d'objets

**Portée :** charger les groupes de conteneurs et leurs entrées depuis les chaînes SQL présentes dans `T4C Server.exe` et observer leur placement dans des structures mémoire.

- Aucun serveur Python ni test de gameplay développé ; les scripts d'audit assemblage sont seulement des outils documentaires.
- Binaire original non exécuté. Analyse statique des appels, offsets, octets x86, et chaînes `.data` du PE fourni.
- Les 152 membres de l'archive précédente sont préservés octet pour octet.
- Le rapport conserve explicitement les zones inconnues et les hypothèses.
