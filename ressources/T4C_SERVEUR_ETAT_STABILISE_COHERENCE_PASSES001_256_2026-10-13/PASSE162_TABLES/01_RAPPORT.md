# Passe 162 — Cartographie des tables indexees

59 bases de tables de sauts possedent au moins deux entrees consecuitives pointant vers `.text`. Leur union represente **3 052 octets de donnees** deja exclus du masque, soit zero octet a soustraire ici.

Pour `0x40C18C`, la condition `cmp eax,0x70` / `ja` limite l'index a 0..112, et les **113 pointeurs** atteignent du code deja comptabilise. Cette preuve structurelle justifie le saut indexe `0x40A630` sans requalifier la table comme code.

Les longueurs generiques du tableau TSV sont des *suffixes de pointeurs consecutifs*, pas des bornes prouvees pour toutes les tables.
