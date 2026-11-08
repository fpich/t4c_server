# T4C Serveur — Passe 9 : la chaîne complète de soumission SQL asynchrone

**Périmètre.** Désassemblage statique du PE32 x86 `T4C Server(1).exe` (SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`). Les adresses sont des VA du binaire d'origine. Aucun serveur lancé et aucune connexion ODBC testée. Les exports Windows proviennent de la table d'import du PE ; les fonctions ODBC sont importées par *ordinal*, confrontées à l'export `.spec` ODBC32 de Wine.

## Résultat principal

Le traitement de `Character::SaveCharacter` (départ `0x413D50`) **prépare un lot de requêtes SQL, soumet un travail asynchrone, fait exécuter les requêtes par un thread consommateur, puis appelle une routine de fin de traitement**. Le composant Windows utilisé est une *I/O Completion Port* (IOCP). Le code comporte des branches distinctes de validation et d'annulation transactionnelles.

| Étape | Adresses / preuve directe | Observations et statut |
|---|---|---|
| 1. Construire les SQL | `0x4149AC` : formatage `UPDATE PlayingCharacters`, puis structure d'élément `+4` | Formatage de requête et allocation d'un nœud — **confirmé**. Le SQL est dans l'archive passe 7. |
| 2. Choisir le callback | `0x414A79` teste `[ebp+8]`; `0x414ACC` pousse `0x413CA0` (branche active), `0x414B18` pousse `ebx=0` (autre branche) | Chemins **avec** et **sans** callback — **confirmé** ; condition métier inconnue. |
| 3. Soumettre le lot | `0x414B1F` appelle `0x44F1F0` avec les arguments `lot, callback, contexte, 'CharAsyncSave'` | **Confirmé** au niveau des arguments et de l'appel. |
| 4. Initialiser l'IOCP | `0x44F1B0` appelle `CreateIoCompletionPort` (`IAT 0x4DE108`) puis démarre le worker `0x44F260` avec `_beginthread` | **Confirmé** ; initialisation à la demande. |
| 5. Poster le travail | `0x44F1F0` alloue 16 octets, stocke quatre DWORD et appelle `PostQueuedCompletionStatus` (`IAT 0x4DE10C`) | **Confirmé**. Le succès de ce `PostQueued...` n'est pas testé à cette sortie. |
| 6. Recevoir le travail | `0x44F260`, `0x44F30D` : appel `GetQueuedCompletionStatus` (`IAT 0x4DE110`) | **Confirmé** ; le worker possède des branches erreur/arrêt. |
| 7. Exécuter chaque SQL | `0x44F377–0x44F433` récupère des textes de la liste, les transmet à `0x44ED80`; `0x44ED98` appelle l'ordinal 11 ODBC32 | **Confirmé**. Ordinal 11 = `SQLExecDirect(hstmt, sql, SQL_NTS)` ; `0x44ED8F` fournit `SQL_NTS (-3)`. |
| 8. Finaliser la transaction | `0x44F5A9` appelle `0x44ED20` puis callback `(0, contexte)` ; `0x44F58F` appelle `0x44ED40` puis callback `(1, contexte)` | **Confirmé**. Voir `SQLTransact` ci-dessous pour COMMIT et ROLLBACK. |
| 9. Callback personnage | `0x413CA0–0x413D41` récupère le nom, journalise deux messages et appelle `SetEvent` sur `[personnage+0x120]` | **Confirmé** pour la signalisation ; ne prouve pas que la transaction a réussi. |

### Transactions ODBC : distinction enfin établie

Les imports de `ODBC32.dll` n'ont pas de noms dans ce PE, mais l'import **ordinal 23** (`IAT 0x4DE3C0`) est référencé par l'instruction de saut à `0x4CE478`. L'ordinal 23 est `SQLTransact`, comme dans les définitions de l'interface ODBC32. Sa signature est `SQLTransact(henv, hdbc, completionType)` ; `SQL_COMMIT = 0` et `SQL_ROLLBACK = 1`.

- `0x44ED20` empile `0`, le handle `+0x8` et le handle `+0x4`, puis appelle l'ordinal 23 : **tentative de COMMIT**.
- `0x44ED40` empile `1` avec les mêmes handles : **tentative de ROLLBACK**.
- Le worker emprunte la branche d'annulation à `0x44F58F` lorsqu'un indicateur d'échec (`ebx != 0`) a été fixé. La branche de validation commence à `0x44F5A9` (`ebx == 0`).
- Le wrapper convertit le retour ODBC en booléen (`neg ax`, `sbb eax,eax`, `inc eax`), mais dans ces portions de worker **le retour de `0x44ED20`/`0x44ED40` n'est pas contrôlé avant l'appel au callback**. On ne peut donc pas garantir une transaction réellement validée/annulée sur cette seule preuve.

L'exécution des instructions SQL passe quant à elle par l'import **ODBC32 ordinal 11 = `SQLExecDirect`**, à l'adresse de saut `0x4CE472`. Les appels sont observés à l'intérieur du worker, ce qui rapproche la table SQL de la passe 7 d'un chemin d'exécution réel sans prouver la réussite de chaque requête.

### Précision sur `Character::DataSaveCallback`

`0x413CA0` est utilisé comme pointeur de callback par `SaveCharacter` à `0x414ACC`. À l'intérieur de la fonction, le code accède au personnage via son deuxième paramètre (`[ebp+0xC]`), tandis que le premier argument de statut (`[ebp+0x8]`) **n'est pas examiné** dans la fonction observée. Deux messages littéraux sont formatés (`'Stopped saving character %s.'` et `'Finished async saving character %s.'`), puis un événement est signalé avec `SetEvent([personnage+0x120])`.

Cela prouve une **notification de fin de tentative de sauvegarde**, pas une confirmation de COMMIT. La documentation des passes antérieures laissait la fonction `0x41DA50` sans rôle ; son corps montre maintenant une copie de chaîne depuis `[this+0x15C]` vers un objet de retour et **aucun commit/rollback**. C'est un **accesseur de nom/chaîne**, pas une fonction de transaction.

## Vue d'ensemble

```text
Character::SaveCharacter [0x413D50]
  prépare UPDATE + sous-ensembles de SQL
       |
       v
  sélection avec/sans callback -> 0x44F1F0
       |
       v
  PostQueuedCompletionStatus (IOCP)
       |
       v
  worker 0x44F260 -> GetQueuedCompletionStatus
       |
       +-- SQLExecDirect (ordinal ODBC32 11) pour des éléments du lot
       |
       +-- succès chemin   -> SQLTransact(SQL_COMMIT = 0)
       |                   -> callback(0, contexte) s'il existe
       |
       +-- échec chemin    -> SQLTransact(SQL_ROLLBACK = 1)
                           -> callback(1, contexte) s'il existe
       |
       v
  DataSaveCallback [0x413CA0] -> journalisation, SetEvent(+0x120)
```

## Risques et chantiers encore ouverts

1. Les conditions exactes d'échec de chaque SQL, la politique de nouvelles tentatives et les résultats de chaque appel ODBC ne sont pas exhaustivement reconstitués.
2. Les indicateurs de statut du callback et le retour de `SQLTransact` ne suffisent pas à garantir l'atomicité ou la durabilité en situation réelle.
3. Le code d'envoi en file ne vérifie pas immédiatement la réussite de `PostQueuedCompletionStatus` dans l'extrait étudié.
4. Les correspondances exhaustives colonne SQL → offset de `Character` ne sont pas encore prouvées.
5. Aucun test d'exécution ni base de données réelle : la reconstruction fonctionnelle globale reste estimée **2–5 %**.

## Sources techniques indépendantes

- Désassemblage embarqué : `30_EXTRAITS_ASSEMBLEUR_PASSE9.asm`, produit avec `objdump -D -Mintel`.
- Cartographie des pointeurs/imports : `32_CHEMIN_SQL_ASYNCHRONE_PASSE9.tsv`.
- ODBC32 : https://fossies.org/linux/misc/wine-10.10.tar.xz/wine-10.10/dlls/odbc32/odbc32.spec (ordinals 11 et 23).
- Interface SQLTransact : https://www.ibm.com/docs/en/db2-for-zos/13.0.0?topic=functions-sqltransact-transaction-management
- Microsoft ODBC : https://learn.microsoft.com/en-us/sql/odbc/reference/appendixes/sqltransact-mapping

**Certitude :** appels, arguments, chaînes et chemins de branchement **confirmés statiquement** ; identité de l'ordinal **corroborée** par la table publique ODBC32 ; comportement et succès réel **non testés**.
