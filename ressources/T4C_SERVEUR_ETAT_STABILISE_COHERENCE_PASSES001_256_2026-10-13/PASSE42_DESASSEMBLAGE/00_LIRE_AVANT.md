# Passe 42 — validateurs virtuels des 14 fabriques de sorts

Binaire exclusif : `T4C Server(1).exe`, SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Poursuite cumulative de la passe 41 (323 fichiers). Aucun projet de serveur Python ni script d'analyse dans cette archive.

- `01_RAPPORT_PASSE42_VALIDATEURS.md` : étude et niveaux de preuve.
- `02` à `05` : quatre extraits d'instructions contrôlés contre les octets `.text` du serveur.
- `06_CARTOGRAPHIE_14_VALIDATEURS.tsv` : type WDA → fabrique → vtable réelle → validateur `slot +0`.
- `07_CONTRATS_CONTROLES_PARAMETRES.tsv` : contrôle WDA par étapes.
- `08_LIMITES_REENTRANCE_ET_PARAMS.md` : inconnues et précautions.
- `09_MESURES_COUVERTURE_PASSE42.json` : audit cumulatif de couverture.
- `10_CONTINUITE_PASSE43.md` : suite prioritaire.
- `11_MANIFESTE_PASSE42.tsv` : inventaire des nouveaux fichiers.

`CONFIRMÉ` : les instructions et l'entrée de table en `.rdata` le démontrent directement. `PARTIEL` : mécanisme confirmé mais branches/fonctions non toutes détaillées. `INCONNU` : données ou comportement non accessibles. Un pourcentage d'octets cités et vérifiés n'est **pas** une mesure de compréhension fonctionnelle ni une reconstruction du serveur.
