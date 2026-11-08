# Passe 208 — Réconciliation cumulée

Cumul antérieur : **829 645 / 905 117 (91,662 %)**.

Réparations vérifiées de cette série : **+66 octets uniques**, provenant de 21 lacunes, avec séquences d'instructions comparées entre GNU et LLVM. Les tableaux de pointeurs et remplissages sont exclus.

**Cumul après passe 208 : 829711 / 905117 = 91.668922 %.**

**Restant : 75406 octets hors masque**, sans prétendre qu'ils sont tous du code exécutable.

Audits : SHA-256 exact de l'EXE, égalité des opcodes avec le binaire, aucun octet commun entre ancien masque et incrément, union binaire reproduite et archive ZIP réouverte puis vérifiée. Les 1657 fichiers précédents demeurent octet pour octet inchangés.

Réserve : le masque historique contient du code découvert via heuristiques de relocation. Ce réaudit n'en certifie pas globalement les anciens points d'entrée.
