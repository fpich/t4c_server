# T4C Server — Stabilisation des 32 passes (8 octobre 2026)

Cette archive **conserve les 211 documents historiques de la passe 32 sans les modifier**, et ajoute une **revue croisée**. Aucun module de développement du serveur Python, aucun test codec ni fichier `.py` n'y figure.

**Couverture recalculée des seules preuves historiques :** 47,519 / 905,117 octets, soit 5.250 %. La valeur publiée à la passe 32 (47 610 octets) dépassait de 91 octets le recensement reproductible (47 519 octets).

**Après une analyse nouvelle et vérifiée de `Unit::VerifyTimers` :** 48,321 / 905,117 octets, soit 5.339 % ; **802 nouveaux octets** réellement non redondants. Les fonctions documentées par une preuve à leur entrée passent de 127 à 128 / 1125 (taux d'entrées, pas de compréhension complète).

**Preuves croisées :** les 536 lignes ne correspondant pas au serveur, présentes dans des fichiers historiques de passes 13–16, sont toutes identiques aux octets du **client**, et doivent être étiquetées « preuve client ». Elles ne comptent jamais dans la couverture serveur.

Commencer par `01_RAPPORT_DE_STABILISATION.md`, puis `05_CORRECTIONS_ET_ALERTES.tsv`, `08_CHAINES_FONCTIONNELLES.tsv` et `07_ETUDE_NOUVELLE_VERIFYTIMERS.md`.
