# Registre de limites — Passe 51

| Sujet | Statut | Verification restante |
|---|---|---|
| GetBoost -> GetOperandValue | CONFIRME | Faire correspondre les neuf parametres aux variables WDA |
| Operations + - * / | CONFIRME | Erreurs x87, overflow, division zero sur fichiers WDA reels |
| 0x4D1D80 | INCONNU | Nom et fonction de thunk sans DLL authentifiee |
| Skill id + 10000 | CONFIRME | Champ exact de USER_SKILL et tous les callers |
| Modification de USER_SKILL+4 | CONFIRME sur les branches 0x40A14B et 0x40A1F4 | Etiqueter toutes les conditions de mutation et la validite concurrence |
| __CheckItem | CONFIRME | Resolver la nature des collections vtable +0x60 selon chaque classe |
| Comparateurs x87 | CONFIRME structurel | Tableau exact des 6 operateurs et cas NaN |
| Degat elemental vs resistance | INCONNU | Trouver appels indirects pertinents et cas par famille de sort |
| Fichiers WDA reels | ABSENTS | Valider avec fichier original, jamais inventer de valeurs |
| Cout de couverture | STRICT | Pas de duplication, octets compares a la section .text et non au client |
