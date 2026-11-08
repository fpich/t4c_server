# T4C Server — Passe 34 (désassemblage pur)

Couverture vérifiée : **6.296 %** — 56,987 / 905,117 octets de `.text`.

Base passe 33 52,789 octets ; nouveaux non redondants 4,198.

Découvertes : `TFCTimers` constitue un troisième planificateur distinct de `Unit::VerifyTimers` et `ObjectTimer`. Appels successifs dans `BeforeNPCThread`, formats des entrées, contrat des callbacks 5/9 et exemple d'un timer d'ID 4 réinscrit à +1200 rounds.

Les 233 documents historiques restent inchangés ; aucune implémentation Python du serveur n'est incluse. Voir 01_RAPPORT_PASSE34_TIMERS_CALLBACKS.md.
