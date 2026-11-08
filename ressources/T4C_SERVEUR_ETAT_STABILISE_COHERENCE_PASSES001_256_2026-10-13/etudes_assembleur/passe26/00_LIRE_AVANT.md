# Passe 26 — Désassemblage du serveur T4C

**Désassemblage uniquement.** Aucun nouveau module de serveur Python, aucun test de réimplémentation.

Étude du même exécutable PE32 x86 que la passe 25. Les documents sont issus du binaire et complètent, sans modifier, les références historiques.

La nouvelle découverte centrale est que les appels `0x4D1Bxx` correspondent à des thunks de `MFC42.DLL`, et non à des implémentations SQL contenues dans l’exécutable. Les autres travaux documentent les pas d’enregistrements des chargements de créatures et d’objets.

Pour les taux de couverture, ouvrir `suivi_assembleur/PASSE26_MESURES.json` et `etudes_assembleur/passe26/06_AVANCEMENT_PASSE26.md` ; les vieux fichiers de mesure sont conservés comme historique.
