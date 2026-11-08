# T4C — Désassemblage passe 57 (cumulative, sans développement Python)

Poursuite de la documentation du binaire original `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.

**Nouveau résultat central :** `0x45C890` est le seul appelant direct non récursif visible de `0x45A7A0` dans le désassemblage linéaire et est appelé à plusieurs reprises dans la routine `0x45C950`, elle-même référencée dans la table virtuelle exportée de `SimpleMonster` à `0x4DF490` (slot `+0x74`).

**Seconde découverte :** `0x45C950` crée puis nettoie un arbre temporaire via `0x45E8A0` et `0x45E3D0`. Sa destruction est démontrée, **mais ce n'est pas une preuve que cet arbre est l'arbre des variables `var`**, dont le conteneur doit être identifié par comparaison effective des arguments.

**Mesures:** 126,431 / 905 117 octets (13.968 %) en recalcul indépendant; gain 1818 octets. Série historique prolongée: 126,547 octets. L'ancien indicateur indépendant était 124 846 octets : le présent réaudit reproductible en retrouve 124613, soit un écart de 233 octets. L'indicateur historique était 124 729 : l'écart correspondant est 116 octets. Aucun des écarts n'est compté comme découverte. Instructions nouvelles vérifiées 846, rejets 0.

Les rapports antérieurs sont conservés intacts; lire `01_RAPPORT_PASSE57.md`, les trois preuves `.asm`, `05_CONTRATS_CONTEXTE.tsv`, `08_LIMITES_ET_SUITE.md` et `10_MESURES_PASSE57.json`.
