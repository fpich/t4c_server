# Passe 191 — Audit des lacunes au masque 190

Binaire original et empreinte SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
Masque historique : 826 773 / 905 117 = 91.344323 % (provisoire).
4 422 segments hors masque identifiés. La plupart des grands segments commencent après des retours `ret`, des sauts ou des appels sans retour, et ne peuvent pas être reliés par une simple lecture linéaire.

Méthode de récupération : démarrer à une instruction **déjà atteinte et comptée**, vérifier la concordance des deux décodages, et suivre les successeurs du contrôle de flot (branches et continuation ; `ret` / `jmp` sans suite / `_CxxThrowException` arrêtent le parcours). Les octets d'alignement qui suivent un retour ne sont pas comptabilisés.

Avertissement : la provenance de certaines régions historiques fondées sur des relocations reste heuristique, et n'est pas certifiée rétroactivement.
