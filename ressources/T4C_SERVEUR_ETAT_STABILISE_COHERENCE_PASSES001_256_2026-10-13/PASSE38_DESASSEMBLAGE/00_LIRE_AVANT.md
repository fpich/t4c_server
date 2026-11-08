# Passe 38 — T4C Server.exe, recherche assembleur exclusivement

**Point de départ** : archive intégrale pure passe 37 (276 membres inchangés). Cette mise à jour documente le chargement des sorts depuis une séquence WDA, les 14 inscriptions directes de fabriques, `Unit::DeferredLoadEffects` et les divers contextes de verrouillage des callbacks.

**Métrique** : 69,281/905,117 octets de `.text` prouvés (7.654 %), +1,372 nouveaux octets; 160/1125 entrées exportées. Aucun serveur Python ou fichier `.py` dans le ZIP.

Les fichiers de preuve sont des extraits `objdump -M intel` vérifiés octet par octet, jamais du code destiné à être exécuté. Les données WDA externes sont absentes. Lire le rapport `01_...md` et les tables `07_...tsv`, `08_...tsv` pour les résultats qualifiés.
