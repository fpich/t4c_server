# Passe 206 — Réparation ciblée de frontières x86

Récupération des octets tronqués de `ret` et d’instructions à opérandes, sans ajout de NOP d’alignement.

Gain : **8 octets uniques** en 7 lacunes. Chaque instruction retenue concorde avec GNU et LLVM sur le binaire original. Les octets déjà comptabilisés restent inchangés.

La présence des instructions dans un parcours statique ne constitue pas une validation de leur exécution réelle.
