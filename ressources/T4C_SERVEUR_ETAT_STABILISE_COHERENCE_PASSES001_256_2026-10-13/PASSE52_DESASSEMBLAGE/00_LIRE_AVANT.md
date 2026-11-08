# Serveur T4C — Passe 52 du désassemblage

**Objet :** opérandes WDA, compétences, flags, statistiques vraies et boosts, calcul spatial.

Binaire original : `T4C Server(1).exe` SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Analyse statique, aucune exécution du serveur ni des WDA.

- 1610 instructions vérifiées dans 4 fichiers de preuves (aucun rejet).
- +4001 octets de code nouveaux uniques sur les preuves archivées.
- 108955/905117 octets selon recensement indépendant brut (**12.038 %**).
- 108864/905117 selon la continuité prudente de la mesure publiée à la passe 51 (**12.028 %**).
- Divergence de 91 octets dans le **passé**, déjà apparue pendant les audits de stabilisation. Elle reste visible et ne doit pas être camouflée.
- 257/1125 exports dans la continuité de l'indicateur publié, ou 258/1125 dans le recensement indépendant brut. Écart préexistant de 1 entrée exportée à auditer ; **aucun gain d'export vérifié attribué à cette passe**.

Les 446 fichiers de l'archive précédente sont reproduits à l'identique. Aucun artefact de développement Python du serveur. Les outils de métrique utilisés localement n'ont pas été ajoutés au ZIP.

Voir `01_RAPPORT_PASSE52.md` et `10_MESURES_COUVERTURE_PASSE52.json`.
