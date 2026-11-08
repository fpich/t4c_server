# Désassemblage du serveur T4C — passes 119 à 124

## Mesures

- Référence : **774 024 / 905 117 = 85,516 %** (passe 118).
- Nouveaux octets d'instructions du PE (union sans recouvrement) : **+35 598**.
- Résultat : **809 622 / 905 117 = 89,449 %**.
- Hors masque : **95 495 octets**.
- Instructions dans les six documents assembleur : **15 239** ; correspondances avec un deuxième désassembleur : **15 239**.

| Passe | Type de découverte | Nouveaux octets | Total | Couverture |
|---|---|---:|---:|---:|
| 119 | APPELS_DIRECTS_PREUVES | +5,592 | 779,616 | 86.134 % |
| 120 | APPELS_DIRECTS_MASQUE | +13,903 | 793,519 | 87.670 % |
| 121 | BRANCHES_DIRECTES_PREUVES | +0 | 793,519 | 87.670 % |
| 122 | BRANCHES_DIRECTES_MASQUE | +4,621 | 798,140 | 88.181 % |
| 123 | DEUXIEME_GENERATION_DIRECTE | +6,796 | 804,936 | 88.932 % |
| 124 | TROISIEME_GENERATION_DIRECTE | +4,686 | 809,622 | 89.449 % |

## Origine des points d'entrée

Une nouvelle recherche des instructions de flot dans `.text`, limitée aux instructions dont **tous les octets** sont présents dans le masque de la passe 118, a retrouvé **210 références directes** vers **146 destinations** non couvertes. Parmi ces destinations, 29 ont au moins une instruction source recoupée par une ligne assembleur d'une archive historique ; les autres proviennent d'instructions décodées dont les octets sont dans le masque mais sans cette ligne de preuve supplémentaire. Leur provenance est explicitement distinguée dans `01_REFERENCES_DIRECTES.tsv`.

- `0x4038F0` : cible de 10 appels directs documentés ; petite fonction d'accès mémoire vérifiée.
- `0x4AA020` : cible de 7 appels directs ; routine courte de copie du premier champ, à confirmer sémantiquement.
- `0x45DC70` : cible d'appels dans le traitement WDA, redésassemblée sur le binaire.

Les passes 123 et 124 prolongent les références directes nouvellement trouvées. Les octets couverts ne doivent pas être interprétés comme un pourcentage de fonctionnalités comprises ou de chemins réellement exécutés.

## Contrôles indépendants

1. SHA-256 de l'exécutable vérifié contre la référence historique.
2. Vérification de chaque instruction des six passes contre les octets de `.text` et un deuxième désassembleur (LLVM).
3. Union exacte des masques binaires pour chacune des six passes : aucun chevauchement comptabilisé.
4. Absence de chevauchement avec les frontières d'instructions déjà enregistrées dans les anciens fichiers `.asm`.
5. Exclusion des 47 séries de pointeurs relocalisés à l'intérieur de `.text`.

**Réserve importante :** une partie de la référence cumulative des anciennes passes a été construite depuis des candidats de relocations. La nature exécutable de toutes ces graines n'est pas démontrée dynamiquement ; 89,449 % est donc une **couverture statique auditable**, non un taux d'exécution certifié.
