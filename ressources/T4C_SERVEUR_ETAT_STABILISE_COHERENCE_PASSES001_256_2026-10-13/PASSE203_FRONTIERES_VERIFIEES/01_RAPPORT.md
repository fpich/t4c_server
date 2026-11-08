# Passe 203 — Réparation ciblée de frontières x86

Complément de décodage de l’évaluation/traitement des personnages. Plusieurs anciennes preuves étaient coupées dans les opérandes de `mov` ou avant un appel importé.

Gain : **21 octets uniques** en 5 lacunes. Chaque instruction retenue concorde avec GNU et LLVM sur le binaire original. Les octets déjà comptabilisés restent inchangés.

La présence des instructions dans un parcours statique ne constitue pas une validation de leur exécution réelle.
