# Passe 204 — Réparation ciblée de frontières x86

Réparation de fins de fonction et d’initialisation : instruction longue, retour `ret` absent et appels déjà situés sur un flot documenté.

Gain : **18 octets uniques** en 5 lacunes. Chaque instruction retenue concorde avec GNU et LLVM sur le binaire original. Les octets déjà comptabilisés restent inchangés.

La présence des instructions dans un parcours statique ne constitue pas une validation de leur exécution réelle.
