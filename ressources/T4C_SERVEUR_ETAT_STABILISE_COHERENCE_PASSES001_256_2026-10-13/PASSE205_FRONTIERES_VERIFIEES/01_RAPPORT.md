# Passe 205 — Réparation ciblée de frontières x86

Rattachement d’appels et initialisations à des instructions précédemment documentées. L’appel indirect à `0x4DE4F8` est identifié dans les imports comme constructeur de `std::basic_string` : il n’est pas traité comme sans retour.

Gain : **19 octets uniques** en 4 lacunes. Chaque instruction retenue concorde avec GNU et LLVM sur le binaire original. Les octets déjà comptabilisés restent inchangés.

La présence des instructions dans un parcours statique ne constitue pas une validation de leur exécution réelle.
