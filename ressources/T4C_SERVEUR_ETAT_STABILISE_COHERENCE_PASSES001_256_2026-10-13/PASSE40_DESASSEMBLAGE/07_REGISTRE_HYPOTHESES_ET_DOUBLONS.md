# Hypothèses ouvertes après la passe 40

- **CONFIRMÉ** : une collection commune reçoit des lectures successives de deux flux (second facultatif).
- **CONFIRMÉ** : `0x4A9FA0` réalise une insertion dans un vecteur d'objets mémoire de 0xE4 octets; le chemin direct ne cherche pas de clé.
- **INCONNU** : si deux objets portent le même identifiant, lequel est retenu après `0x473610` puis `SpellMessageHandler::RegisterSpell`.
- **INCONNU** : si les deux fichiers sont systématiquement compatibles en versions / schémas.
- **CONFIRMÉ** : `0x459100` réinitialise l'état du générateur sur 64 bits, sans instruction explicite de remise à zéro de `0x514CE0`.
- **MODÈLE STATIQUE** : une suite calculée avec dernier résultat initial nul. Sa SHA256 ne doit pas être présentée comme une vérification sur un WDA réel.
- **INCONNU** : comportement du chargeur face à des longueurs falsifiées ou à une allocation échouée; ne pas annoncer une vulnérabilité démontrée.
- **INCONNU** : nomenclature des champs d'objets WDA, leurs offsets physiques fixes (structure à taille variable).
