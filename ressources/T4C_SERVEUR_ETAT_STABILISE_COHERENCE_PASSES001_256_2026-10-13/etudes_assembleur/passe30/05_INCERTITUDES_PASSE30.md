# Limites et contrôles — passe 30

- **Confirmé** : adresses et cibles d’appels exportés, intervalle d’ID 0x2710–0x2B0F, table de 1024 emplacements, constante double 0.001, deux boucles sur positions, appels InPVP, ViewTopUnit, GetCollisionPos, BCSpellEffect et routine interne 0x461FD0.
- **Non démontré** : nom exact des catégories 5/15/18, sémantique des champs +0x23A/+0x23B/+0x23C/+0x23E/+0x32C, seuil exact de succès, résultats de sorts sur les personnages, intégralité des méthodes virtuelles, lien avec les récompenses de conteneurs.
- **Exclusion de preuve** : tables de saut embarquées à 0x461F2C et 0x461F78. Leur représentation binaire est de la donnée d’aiguillage, pas des instructions supplémentaires.
- **Méthode** : les « octets vérifiés » mesurent ce qui est documenté et correspond à la section .text. Le taux ne représente pas le pourcentage de compréhension fonctionnelle.
- **Prochaine passe** : reconstruire les superstructures d'effets dispatchées par 0x461FD0, relier `SpellEffectManager` aux données enregistrées et suivre les chemins d'utilisation d'objets qui n'activent pas de sort.
