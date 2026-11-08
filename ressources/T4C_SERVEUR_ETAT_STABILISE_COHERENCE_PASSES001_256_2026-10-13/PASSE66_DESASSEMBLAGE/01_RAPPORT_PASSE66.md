# Passe 66 — Réaudit contrôlé de la couverture assembleur

## Méthode

Source : archive cumulative passe 65 et exécutable original, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Pour chaque ligne de désassemblage `.asm`, extraction de l'adresse et des octets machine, restriction à `.text` (VA `0x401000`, longueur 905117), puis comparaison octet à octet avec le PE original. Union des adresses avec dictionnaire d'appartenance (pas d'addition de doublons).

## Résultat

- Ancien chiffre officiel conservé : **126 431 / 905117 = 13.96847 %**.
- Union des preuves `.asm` jusqu'à la passe 57 : **122233 octets**.
- Écart non expliqué au compteur officiel : **4198 octets**.
- Instructions/entrées assembleur concordantes (comptage par lignes, y compris doublons) : **58463**.
- Lignes historiques rejetées car les octets divergent de l'original : **536**. Elles ne participent pas à l'union.
- Octets uniques des passes 58 à 65 absents de l'union `.asm` pré-58 : **1501**.
- Union de toutes les preuves `.asm` concordantes : **123734 octets**.

**ATTENTION** : 1501 octets sont nouveaux par rapport aux seules preuves `.asm` reconstituées, et NON CERTIFIÉS nouveaux par rapport au compteur officiel 126431. Les 4198 octets de provenance historique non reconstituée pourraient recouvrir ces plages. Par conséquent, la couverture officielle n'est pas augmentée à la passe 66. Le calcul conditionnel 127932 / 905117 = 14.13431 % constitue une borne hypothétique, et non un nouveau résultat validé.

## Attribution chronologique des 1501 octets candidats

- Passe 58: 0 octets uniques ajoutés aux preuves `.asm`.
- Passe 59: 0 octets uniques ajoutés aux preuves `.asm`.
- Passe 60: 0 octets uniques ajoutés aux preuves `.asm`.
- Passe 61: 14 octets uniques ajoutés aux preuves `.asm`.
- Passe 62: 0 octets uniques ajoutés aux preuves `.asm`.
- Passe 63: 1487 octets uniques ajoutés aux preuves `.asm`.
- Passe 64: 0 octets uniques ajoutés aux preuves `.asm`.
- Passe 65: 0 octets uniques ajoutés aux preuves `.asm`.

## Travaux encore requis

1. Retrouver le masque d'adresses du vérificateur historique à l'origine du résultat 126431 (il ne suffit pas de posséder son total).
2. Comparer ce masque avec les intervalles candidats (fichier `02_INTERVALLES_CANDIDATS.tsv`).
3. Seulement alors publier les nouveaux octets non redondants officiels.
4. Poursuivre le handler SEH de `0x45C950` et prouver le nettoyage en sortie exceptionnelle. Aucune preuve nouvelle de ce chemin n'a été ajoutée dans cette passe, consacrée à la couverture.
