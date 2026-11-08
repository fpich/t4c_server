# Mesures assembleur — Passe 32

| Mesure | Valeur |
|---|---:|
| Section `.text` | 905,117 octets |
| Passe 31 publiée | 45,764 octets — 5.056 % |
| Passe 31 recalculée sur tous les fichiers d'archive disponibles | 45,855 octets — 5.066 % |
| Nouveau dossier — instructions contrôlées | 659 |
| Nouveau dossier — lignes invalides | 0 |
| Octets du nouveau dossier (sans doublons internes) | 1,932 |
| Octets ajoutés à la couverture précédente recalculée | 1,755 |
| **Couverture vérifiée cumulée** | **47,610 / 905,117 = 5.26 %** |
| Entrées exportées documentées, nouveau décompte | **128 / 1125** |

**Note de méthode.** Relecture statique des 34 sources historiques de preuve désassemblée, suppression des doublons d'intervalles et comparaison des octets à la section `.text` du même binaire. Les 536 lignes historiques non concordantes n'ont pas été ajoutées à la couverture. La mesure historique de 45 764 octets est conservée à titre de référence : le rescannage des sources présentes donne 45 855 (+91), écart antérieur à cette passe et qui justifie de préférer le total recalculé pour la suite.

Le pourcentage ne mesure **ni** la compréhension complète des fonctions **ni** l'aptitude à réimplémenter déjà le serveur. Aucune exécution dynamique du binaire n'a été effectuée.
