# Analyse de la provenance des définitions

- `0x475630` consomme des fiches à pas de 0x108 octets et enregistre leur référence dans le registre global. Ce **n’est pas encore** le point d’entrée du parseur de ressources.
- `0x47421E` est une autre inscription sous catégorie 3, en relation avec la construction d’unités ; sa source initiale est indéterminée.
- `0x44B0B0` traduit quelques noms constants `GOLD`, `DECOR001`, `DECOR002` en identifiants via `0x48A2D0`, sans charger de nouvelles définitions à cet endroit.
- `0x48A470` parcourt des références déjà chargées : son parcours ne prouve pas l'origine des fiches.

**A poursuivre :** identifier qui construit le conteneur lu avant `0x475630`, où les fiches sont chargées, et vérifier leur source externe.
