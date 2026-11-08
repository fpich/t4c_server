# Nouvel approfondissement : `Unit::VerifyTimers` (0x0048D330)

**Source** : désassemblage statique du PE32 fourni, segment `.text`, adresse `0x0048D330` à `0x0048D651` inclus. Fonction identifiée dans les exports C++ : `?VerifyTimers@Unit@@QAEXXZ`. La preuve intégrale est `06_PREUVE_NOUVELLE_UNIT_VERIFYTIMERS.asm` ; les octets ont été contrôlés contre le fichier original.

## Chemin effectivement établi

1. Le code parcourt une liste attachée à `Unit+0xF4` en utilisant ses helpers de conteneur.
2. Pour une entrée non nulle, compare `DWORD [entrée+0x10]` à `TFCMAIN::GetRound` (`0x472290`) : voir `0x48D3F7` à `0x48D404`.
3. Un champ d'échéance nul est ignoré par cette branche. Lorsque `GetRound` est inférieur au champ, la boucle poursuit sans le traiter. Lorsque l'échéance est atteinte et qu'un pointeur de callback est présent, l'entrée est retirée du conteneur.
4. Le chemin des callbacks à `0x48D5B2–0x48D5D0` invoque **le même pointeur fonction** (`[entrée+0x08]`) avec deux codes numériques successifs **5**, puis **9**, et des arguments lus notamment depuis `entrée+0x04` et `entrée+0x0C`.
5. La routine poursuit ensuite le parcours et ferme ses helpers de liste.

Cela prouve l'existence d'une **vérification temporelle liée au numéro de round** pour des effets de l'unité et de callbacks associés. Ce résultat complète les passes 31–32, qui documentaient les callbacks de sauvegarde, chargement et destruction sans avoir identifié la comparaison d'échéance ici.

## Limites obligatoires

- La durée d'un round, la fréquence des appels à `Unit::VerifyTimers` et le chemin exact qui l'appelle ne sont pas encore démontrés.
- Le fait qu'une entrée soit vérifiée par cette routine ne prouve pas que **tous** les effets magiques y passent.
- Les codes 5 et 9 sont vérifiés comme valeurs d'appel, mais leurs noms métier restent **inconnus**.
- L'absence d'un pointeur callback emprunte un autre traitement. Il ne faut donc pas affirmer que tous les cas d'expiration déclenchent nécessairement les deux notifications.
- Aucun test dynamique de durée ou de compatibilité réseau n'a été effectué.

**Résultat** : compréhension enrichie du système d'expiration / vérification des effets, niveau *confirmé pour les comparaisons et les appels*, *partiel pour la sémantique du cycle de vie*.
