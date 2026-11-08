# Suite proposée — passes 131–136

1. Retrouver une provenance forte pour les gros trous `0x43EF09–0x4404E7`, `0x44B177–0x44BD80`, `0x4BAA8B–0x4BB550`, `0x4B9CD6–0x4BA9E0`.
2. Reconstituer les tables d'adresses de fonctions et les appels virtuels en croisant tables virtuelles, RTTI et instruction de chargement de ces tables. Les pointeurs sans preuve d'utilisation restent en attente.
3. Produire un second compteur plus exigeant « instructions avec source prouvée » distinct du masque cumulatif historique, afin de déceler les éventuels faux positifs des passes par relocations.
4. Continuer l'analyse fonctionnelle de `Character`, du cycle de vie WDA et des sessions.

N'ajouter aucun octet de simple alignement ou aucun prologue détecté uniquement par sa signature sans preuve d'une vraie entrée.
