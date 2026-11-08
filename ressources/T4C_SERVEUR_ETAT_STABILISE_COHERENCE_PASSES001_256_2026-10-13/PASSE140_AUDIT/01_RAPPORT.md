# Passe 140 — Fonctions candidates isolées et journalisation de terminaison

Une région non couverte débute à `0x43EF10` par un prologue MSVC et une installation SEH. Ses imports et données attestent une écriture de diagnostic : `fopen("exit.txt","ab")`, `fprintf` d’un message « Game terminated abruptly (unexcepted exception was thrown) », puis `fclose`. L’entrée `0x43EF10` demeure sans appelant direct ni référence d’adresse retrouvée, donc ses instructions restent **hors compteur**. L’entrée `0x4BAA90` reste aussi candidate non attestée.

**Octets ajoutés dans cette passe : 0. Couverture cumulée : 809638 / 905117 (89.451198 %).**
