# Passe 143 — Point d’entrée du PE

Le champ AddressOfEntryPoint du PE désigne 0x004D208E (RVA 0xD108E). Les instructions du démarrage sont accessibles directement par la sémantique de chargement du format PE, même si aucun appel C++ ne référence cette entrée. Le démarrage appelle 0x0043EFA0 à 0x004D216C.

Instructions décodées dans cette passe : **74**. Octets uniques ajoutés : **240**. Couverture cumulée : **809878 / 905117 (89.477714 %)**.

Statut : preuves de désassemblage statique, pas de validation dynamique des chemins.
