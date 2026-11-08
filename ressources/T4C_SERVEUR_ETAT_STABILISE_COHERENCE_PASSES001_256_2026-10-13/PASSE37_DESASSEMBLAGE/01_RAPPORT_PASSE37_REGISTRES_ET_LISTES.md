# Passe 37 — Registres des effets, collisions et propriété des listes temporaires

## Méthode et périmètre

Analyse **statique** de `T4C Server(1).exe`, SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`, section `.text` **905 117 octets**. Preuves à adresses absolues x86 et comparaison octet par octet avec le binaire PE. Les noms des API Windows proviennent de la table des imports PE ; les signatures de fonctions T4C proviennent de l'index des symboles exportés. **Aucune exécution, aucune conclusion de sûreté en concurrence**, aucun développement Python de serveur.

## A — `UnitEffectManager` : insertion sans remplacement et premier correspondant [CONFIRMÉ]

`UnitEffectManager::RegisterEffect` `0x490B10` alloue **8 octets**, stocke une clé DWORD à `+0` et un pointeur de callback à `+4`, puis appelle l'insertion `0x490F40` dans la liste globale de tête `0x556400`. Ce chemin ne recherche pas d'ancienne clé et ne contient pas de retrait de doublon. **Des clés en doublon sont donc structurellement autorisées** par la routine d'enregistrement (les conditions réelles d'utilisation dépendent des appelants).

L'insertion `0x490F40` opère sur la **fin de la liste** : si elle est vide, tête et fin pointent vers le maillon nouveau ; sinon l'ancienne fin reçoit le lien suivant et la nouvelle entrée devient la fin. La taille `[liste+0x38]` est incrémentée. Le comportement est **append**, pas replace.

`UnitEffectManager::GetEffectProc` `0x490B40` entre dans une section critique via `EnterCriticalSection(0x556408)` à `0x490B6F`, parcourt à partir de la tête `0x556424` et compare `[paire+0]` à la clé DWORD. Après le **premier match**, le drapeau `esi=1` interdit de remplacer la paire retenue par un match ultérieur. Retourne `[paire+4]` ou **0** ; libère la section critique via `LeaveCriticalSection` (`0x490C02`). Les appels auxiliaires `0x434200` / virtuels dans le préambule ne sont pas entièrement qualifiés, mais ces imports et ce parcours sont explicites.

**Conséquence [DÉDUITE du code] :** si deux enregistrements de même clé arrivent dans un même registre sans destruction intermédiaire, la procédure sélectionnée est **celle enregistrée la première**, et non la dernière. Cela n'affirme pas qu'une collision se produit effectivement dans une base de sorts donnée.

## B — `SpellEffectManager` : autres clés, autre résolution [CONFIRMÉ]

`SpellEffectManager::RegisterSuperstructure` `0x460BD0` enregistre la **fabrique DWORD à +0**, et une **clé WORD à +4** dans une paire de 8 octets ; insertion via `0x460E50` dans la liste globale `0x514D60`. Le code `0x460E50` insère une nouvelle entrée en **tête de liste** (contrairement à `UnitEffectManager`).

`SpellEffectManager::GetEffectObject` `0x460C00` compare le WORD de la clé et **continue le parcours** après avoir appelé la fabrique associée à une correspondance (`0x460C57`). Il ne sort pas au premier match et peut invoquer plusieurs fabriques pour une même clé. Le retour de la fabrique n'est pas conservé dans un résultat direct de cette routine : il ne faut pas inventer une politique de remplacement d'instance. La nature métier complète des fabriques est étudiée dans les passes antérieures.

**Conséquence [CONFIRMÉ pour le flux] :** les deux registres ne partagent ni la taille de clé ni la politique de parcours : le premier choisit une callback DWORD **première correspondance**, l'autre appelle **chaque fabrique portant la clé WORD**.

## C — `Unit::SendGlobalEffectMessage` : snapshot de pointeurs [CONFIRMÉ]

La routine `0x48CF40` prend le verrou de l'unité via `[unit+0x30]`, parcourt la liste `[unit+0xF4]` et pousse la référence de chaque effet dans une **liste temporaire sur la pile** avec l'aide de `0x490A20` (`0x48CFF9`). Une fois le parcours effectué, elle **libère le verrou** à `0x48D088`, puis itère la liste temporaire et appelle les callbacks au moyen de `[effet+0x08]`, en passant le code événementiel en premier argument. La liste temporaire contient **des pointeurs originaux**, pas une copie des enregistrements `UNIT_EFFECT`.

La liste temporaire est ensuite nettoyée avec `0x490510` (`0x48D0C5`), qui enlève et libère **le maillon de liste**, sans libérer sa valeur `[maillon+8]`. L'appel externe à `GetEffectProc` n'est pas nécessaire ici : le pointeur de callback est déjà conservé dans l'effet.

**Portée :** cela évite d'itérer directement sur la structure principale pendant l'exécution des callbacks ; la durée de vie des objets pointés **après libération du verrou** et les cas de réentrance restent non démontrés.

## D — `Unit::VerifyTimers` : retrait puis transfert temporaire de propriété [CONFIRMÉ]

La routine `0x48D330` verrouille aussi l'unité, vérifie `[effet+0x10]` contre `TFCMAIN::GetRound` (`0x48D3FC`), et pour un effet expiré :

1. Ajoute le pointeur d'effet à une liste temporaire via `0x490A20` (`0x48D413`).
2. Retire le maillon de la liste permanente `Unit+0xF4` et libère le **maillon**, avant d'exécuter les callbacks.
3. Déverrouille l'unité (`0x48D5F2`), puis appelle successivement les callbacks de codes **5** et **9** (`0x48D5C0` et `0x48D5D0`).
4. Supprime l'entrée temporaire via `0x490600` (`0x48D5D9`) : cette aide libère **la valeur d'effet** `[maillon+8]` **et** le maillon.

Ainsi, les deux helpers de liste ne sont **pas interchangeables** : `0x490510` libère le maillon, `0x490600` libère la valeur ET le maillon. Cette différence rend intelligible le retrait définitif des effets expirés après dispatch, sans conclure sur l'ensemble des cas de concurrence.

## E — Collisions et limites [CONFIRMÉ/PARTIEL/INCONNU]

La passe 36 établit l'initialisation de `[definition+0x3AC]` avec `DWORD source[+0x24] * 1000` modulo 32 bits, puis son incrémentation lors de la création de six familles d'effets. La passe 37 prouve **comment le registre de callbacks DWORD réagit à une clé dupliquée**, mais ne prouve ni absence de collision entre définitions, ni débordement pratiquement atteint, ni identité des champs dans les tables SQL. Aucune vérification limite **1000 valeurs** n'a été trouvée dans les six sites déjà examinés ; cela ne prouve pas son absence globale.

La présence de `EnterCriticalSection`/`LeaveCriticalSection` pour la recherche du registre confirme une synchronisation locale, **mais l'appel direct d'insertion `RegisterEffect -> 0x490F40` n'acquiert pas explicitement ce même verrou**. Il serait infondé de décréter une course effective ou une absence globale de sécurité sans analyser l'ordonnancement des créations et tous les appelants.

## F — Mesure documentaire et traçabilité

- Archive source : **66,536 / 905,117 octets** = **7.351 %** ; **160** entrées exportées.
- Après passe 37 : **67,909 / 905,117 octets** = **7.503 %**.
- Gain **non redondant** : **1,373 octets**, 1,169 lignes d'instructions contrôlées, zéro rejet.
- Entrées d'exports dont l'adresse de début est citée : **160 / 1125**.
- Les **264 fichiers historiques sont conservés octet pour octet**.

Cette métrique représente uniquement des **octets assembleur explicitement cités et vérifiés**, et ne mesure pas la complétude fonctionnelle ou les cas d'exécution.
