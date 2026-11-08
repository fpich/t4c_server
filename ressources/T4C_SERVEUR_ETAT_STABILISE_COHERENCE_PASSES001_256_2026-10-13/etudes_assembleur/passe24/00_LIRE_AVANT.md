# Passe 24 — désassemblage prioritaire (pas de développement Python)

Cette passe remonte la chaîne `butin → Objects::Create → registre global → producteurs de références`.

À lire : `01_RAPPORT_PASSE24_REGISTRE_GLOBAL.md`, `02_PREUVES_ASSEMBLEUR_PASSE24.asm`, `03_REGISTRE_FONCTIONS_NIVEAUX.tsv`, `05_CORRECTIONS_ET_LIMITES.md`.

Le registre contient jusqu'à 65 536 références indexées ; il n'est pas réservé exclusivement aux modèles d'objets. La source externe du chargement demeure inconnue.

**Le pourcentage officiel est calculé sur les preuves vérifiées après archivage**, pas sur les parties désassemblées automatiquement. Le serveur Python est inchangé.
