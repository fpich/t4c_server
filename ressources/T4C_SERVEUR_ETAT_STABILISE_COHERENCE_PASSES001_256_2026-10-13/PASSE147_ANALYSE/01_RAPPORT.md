# Passe 147 — Audit des références restantes

La revue des preuves historiques relève 237 152 débuts d’instructions, avec concordance des octets du binaire. Aucun appel/saut direct documenté ne vise une adresse encore hors masque. Les 77 relocations HIGHLOW vers des destinations non couvertes pointent dans des zones de tables et de données intégrées à .text ; elles ne sont pas transformées automatiquement en entrées de code.

Instructions décodées dans cette passe : **0**. Octets uniques ajoutés : **0**. Couverture cumulée : **815752 / 905117 (90.126691 %)**.

Statut : preuves de désassemblage statique, pas de validation dynamique des chemins.
