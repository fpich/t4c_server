# Traçabilité et risques

1. Graines issues de branches directes et de CALL imm enregistrés avec source et cible dans les preuves antérieures.
2. Vérification de la provenance : l'instruction source possède le bon opcode et son opérande vise l'adresse annoncée.
3. Parcours des successeurs directs au moyen de GNU objdump, limité par des fenêtres ; les indirects sont laissés ouverts.
4. Comparaison de chaque octet de preuve avec le PE SHA-256 archivé.
5. Bitset cumulé, union exacte et intervalles nouveaux sans redondance.
6. Audit distinct des bornes d'instructions, du comptage et des écarts.

Réserves : la robustesse d'un saut direct dépend aussi de la justesse de l'instruction source historiquement décodée. Le fait qu'un octet corresponde au binaire n'établit pas qu'il appartient à une instruction réellement exécutable. Les pointeurs de l'ancienne passe 106 ne sont pas tous qualifiés comme entrées de fonction C++. Des mécanismes exceptionnels et tables de sauts indirects restent incomplets.
