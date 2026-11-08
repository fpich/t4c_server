# État stabilisé et cohérence — T4C Server

## Référence
- Source originale SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- `.text` : 905,117 octets.
- Code masqué : 828,849 octets (91.573686 %).
- Données : 3,943 octets.
- Remplissage **probable** : 17,946 octets.
- Total classifié : 850,738 octets (93.992047 %).
- Indéterminés : 54,379 octets.

## Cohérence
Les trois masques sont disjoints et leur union contient exactement 850,738 octets. L'archive des passes 1–256 a été conservée. Les 18 cibles hors masque de la passe 252 ont été contrôlées à partir des octets du binaire : toutes les destinations calculées correspondent au registre, mais aucune n'est reclassée sans désassemblage et preuve de flot suffisants.

## Portée et réserves
« Code masqué » désigne la couverture statique historiquement acceptée, **pas** une preuve d'atteignabilité complète ni une couverture de tests. Les 17 946 octets de remplissage sont structurellement présumés, non démontrés inaccessibles. Les 54 379 octets inconnus ne doivent être classés ni comme code ni comme données par défaut. Les recherches précédentes de motifs d'instructions ne prouvent pas l'absence de références indirectes.

## Conclusion
**Gel des compteurs.** Aucun nouvel octet ajouté ni retiré lors de la stabilisation. Les résultats sont reproductibles à partir des masques et de l'exécutable de référence. Pour reprendre, examiner les 18 cibles et les chemins indirects sans modifier ces valeurs avant validation.
