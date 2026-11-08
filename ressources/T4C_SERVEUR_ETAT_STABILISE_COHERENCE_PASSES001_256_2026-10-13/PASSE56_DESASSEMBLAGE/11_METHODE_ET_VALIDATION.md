# Méthode de validation — passe 56

- PE `.text` : VA `0x401000`, offset fichier `0x1000`, taille `905117` octets (via `objdump -h`).
- Fichier source SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Lignes de preuve des `.asm` : adresse + octets + mnémotechnique; comparaison des octets contre les offsets de `.text`.
- Union des positions octet parmi toutes les preuves historiques et les nouvelles, sans doubles comptes.
- Table de saut `0x45C198` : `24 × 4` octets de données décodées en little-endian, exclus du décompte instructionnel.
- Les fonctions MFC/CRT importées restent non identifiées quand l'identité ne peut être prouvée depuis ce binaire.
- Audit indépendant des fichiers de la passe 55 : 123365 octets contre 123248 publiés (+117), non encore réconciliés. De plus, 536 lignes historiques client n'ont pas les octets du serveur et sont écartées. Ces lignes ne sont pas des rejets de la passe 56.
- Le comptage indépendant d'exports retrouve 258/1125 et non les 259 précédemment publiés; cet écart est signalé, non imputé aux preuves nouvelles.
- Conserver également l'écart historique de 91 octets sans le transformer en preuve supplémentaire.
- Les scripts de génération de l'étude ne sont pas intégrés à l'archive.
