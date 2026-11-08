# Passe 137 — Trampoline SEH référencé dans le code

La routine couverte `0x4D1900` contient à `0x4D1905` l’instruction `push 0x4DDF93`. Ce pointeur est un argument de l’enregistrement SEH (`FS:[0]`). La cible `0x4DDF93` est un trampoline de 10 octets (chargement de `0x4F0C30`, saut vers `0x4D1B8A`), dont l’entrée est donc attestée par une instruction source déjà vérifiée. Les deux désassembleurs retrouvent ces deux instructions sans conflit. La plage `0x4DDF93–0x4DDF9C` est ajoutée, sans interpréter l’enregistrement SEH comme une exécution systématique du handler.

**Octets ajoutés dans cette passe : 10. Couverture cumulée : 809630 / 905117 (89.450314 %).**
