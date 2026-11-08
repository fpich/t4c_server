# T4C — Passe 41 : validation WDA → définitions de sorts → table active

Source exclusive : `T4C Server(1).exe`, SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Suite cumulative de la passe 40 (310 fichiers historiques). Aucun code de serveur Python, aucun fichier `.py`, aucun cache de Python. Les scripts employés localement pour auditer la couverture ne sont pas inclus dans l'archive.

- `01_RAPPORT_PASSE41_WDA_DOUBLONS_ET_VALIDATIONS.md` : mécanisme documenté et niveaux de preuve.
- `02_...asm`, `03_...asm`, `04_...asm` : adresses, octets et instructions vérifiés.
- `05_CONTRATS_CHARGEMENT_REGISTRE_SORTS.tsv` : graphe des appels et conditions.
- `06_CORRESPONDANCES_OFFSETS_STRUCTURES.tsv` : offsets WDA et runtime à ne pas confondre.
- `07_REPERTOIRE_DIAGNOSTICS_SORTS.tsv` : chaînes de diagnostics *présentes dans le binaire*.
- `08_LIMITES_ET_COLLISIONS.md` : points non tranchés.
- `09_MESURES_COUVERTURE_PASSE41.json` : comptage exact dédupliqué de toutes les preuves cumulées.
- `10_METHODE_ET_REPRODUCTION.md` : mode d'audit et limites de l'indicateur.
- `11_CONTINUITE_PASSE42.md` : prochaines vérifications.
- `12_MANIFESTE_PASSE41.tsv` : nouveaux fichiers.

`CONFIRMÉ` = instructions et chaînes explicitement retrouvées dans le PE ; `INFÉRÉ` = implication logique sous conditions explicitement décrites ; `INCONNU` = absence de preuve suffisante. La couverture concerne les octets de la section `.text` cités et concordants, **pas** la proportion de serveur reconstituée.
