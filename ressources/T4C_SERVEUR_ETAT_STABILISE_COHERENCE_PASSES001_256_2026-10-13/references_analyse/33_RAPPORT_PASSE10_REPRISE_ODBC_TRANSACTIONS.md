# T4C Serveur — Passe 10 : reprise SQL, autocommit et terminaison des lots

**Date :** 8 octobre 2026. **Périmètre :** analyse **statique** de `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Il ne s'agit **ni du source original, ni d'un serveur compilable**. Toutes les VA et extraits sont dans `34_EXTRAITS_ASSEMBLEUR_PASSE10.asm`. Cette passe ajoute des preuves ; elle ne modifie pas les dossiers des passes 1–9.

## Résultat 1 — Deux connexions configurées en transactions explicites

À `0x412FB0–0x413047`, la routine d'initialisation appelle trois fois `0x44EA30` pour établir des contextes globaux distincts, puis :

- `0x413032–0x41303A` : empile `(0, 0x66)` et appelle `0x44ED00` sur le contexte `0x511878`.
- `0x41303F–0x413047` : même appel sur `0x511478`.
- `0x44ED00–0x44ED0F` transmet la valeur, l'option et le handle de connexion à l'import ODBC32 **ordinal 50**, `SQLSetConnectOption`.

**Correspondances corroborées par les constantes ODBC :** option `0x66 = 102 = SQL_AUTOCOMMIT`; valeur `0 = SQL_AUTOCOMMIT_OFF`. Deux contextes sont donc configurés pour une transaction explicite. La routine d'envoi de `SaveCharacter` à `0x414B1A` utilise justement **`0x511478`** pour appeler `0x44F1F0` : ce lien relie la sauvegarde asynchrone à l'un des contextes configurés. Le troisième contexte `0x511678` est initialisé mais ne reçoit pas ici cet appel de désactivation ; **ne pas en déduire** son mode effectif dans tous les chemins.

**Limite :** le succès de chaque `SQLSetConnectOption` n'est pas contrôlé au point d'appel étudié. Une reconnexion ultérieure pourrait également modifier l'état de la connexion ; le code n'en garantit pas explicitement la conservation.

## Résultat 2 — Politique de reprise de `SQLExecDirect`

À `0x44ED80–0x44EEFE` :

1. `0x44ED98` appelle l'import ODBC32 **ordinal 11 (`SQLExecDirect`)** avec `SQL_NTS = -3`.
2. `0x44ED9D–0x44EDB0` : si **`AX == 0`** (SQL_SUCCESS), la fonction retourne immédiatement `1`.
3. Si `AX != 0`, `0x44EDB3` appelle `0x44E360` (diagnostics). Pour le chemin appelé par le worker (`flag=0`, mis en pile à `0x44F431`), le code libère puis réalloue des handles ODBC (`0x44EDD1–0x44EDFB`).
4. `0x44EE16` appelle `0x44EA30`. Ce helper configure `SQL_ODBC_CURSORS` (`110`) à `1` via l'ordinal 50, puis appelle l'ordinal **7 (`SQLConnect`)** à `0x44EAFB` avec des chaînes de connexion.
5. `0x44EE25` exécute **une seconde fois la même instruction SQL**. Si `AX == 0`, retour `1` (`0x44EE41–0x44EE4C`) ; sinon extraction des diagnostics et retour `0` (`0x44EEF6–0x44EEFE`).

**Fait nouveau :** le chemin normal du worker comporte **une tentative initiale puis une seule seconde tentative en cas de code non nul**. Il ne s'agit pas d'une boucle de tentatives illimitée. La réallocation de handles et le nouvel appel `SQLConnect` sont directement visibles ; la réussite effective de la reconnexion ne l'est pas.

**Point de compatibilité à vérifier :** le test `AX != 0` ne distingue pas `SQL_SUCCESS_WITH_INFO = 1` d'une erreur ODBC (`SQL_ERROR = -1`). Une réponse *avec avertissement* déclenche donc aussi la reprise dans ce code, même si l'instruction a pu aboutir côté base. La conséquence réelle (par exemple une opération répétée) dépend du pilote et n'a pas été testée.

## Résultat 3 — Arrêt du lot et notification de transaction

- `0x44F431–0x44F43F` : le worker appelle `0x44ED80` puis pose `EBX = 1` si le helper retourne `0`.
- `0x44F377–0x44F37B` : dès que `EBX != 0`, le worker sort du parcours des requêtes et rejoint `0x44F460`. Les instructions suivantes du lot **ne sont plus envoyées dans ce parcours**.
- `0x44F4A1–0x44F5A9` : chemin d'échec avec journalisation conditionnelle, puis appel à `0x44ED40` (`SQLTransact(..., SQL_ROLLBACK)`), ou chemin sans erreur avec `0x44ED20` (`SQLTransact(..., SQL_COMMIT)`).
- `0x44F59A–0x44F5C4` : si un callback existe, appel `callback(1, contexte)` après tentative de rollback, ou `callback(0, contexte)` après tentative de commit.

**Limite majeure conservée :** les résultats des wrappers `SQLTransact` ne sont pas testés avant les callbacks. `callback(0)` décrit le **chemin choisi** par le worker, et non une preuve que le COMMIT a réussi en base. Le callback personnage `0x413CA0` ignore lui-même cet argument et signale un événement Windows (passe 9).

## Risques techniques et travaux suivants

- Le traitement de `SQL_SUCCESS_WITH_INFO` comme une réponse non nulle mérite un essai contrôlé avec un pilote ODBC historique, mais **aucun test de ce type n'a été exécuté**.
- Vérifier l'autocommit **après** libération/réallocation des handles : la passe 10 prouve son réglage au démarrage, pas sa conservation après reprise.
- Analyser les codes de retour de `SQLSetConnectOption`, `SQLConnect`, `PostQueuedCompletionStatus` et `SQLTransact`, puis les interactions avec arrêt/fermeture serveur.
- Relier les callbacks et signaux d'événement aux états métier (sauvegarde terminée, connexion/déconnexion, suppression de personnage).
- Poursuivre les correspondances SQL ↔ champs mémoire du personnage. **Reconstruction fonctionnelle globale indicative : 2–5 %**, inchangée ; pas de validation d'équivalence en exécution.

## Références de nomenclature ODBC (sources externes, distinctes du binaire)

- Win32, table d'exports ODBC32 (ordinals 7, 11, 23, 50) : https://fossies.org/linux/misc/wine-10.10.tar.xz/wine-10.10/dlls/odbc32/odbc32.spec
- Constantes SQL_AUTOCOMMIT, SQL_ODBC_CURSORS et SQL_CUR_USE_ODBC : https://github.com/microsoft/ODBC-Specification/blob/master/Windows/inc/sqlext.h
- Description de SQLConnect : https://learn.microsoft.com/fr-fr/sql/odbc/reference/syntax/sqlconnect-function

**Légende :** [CONFIRMÉ] = instructions et flux du PE ; [CORROBORÉ] = identité des ordinals/constantes par références ODBC ; [À TESTER] = sémantique réelle et succès opérationnel.
