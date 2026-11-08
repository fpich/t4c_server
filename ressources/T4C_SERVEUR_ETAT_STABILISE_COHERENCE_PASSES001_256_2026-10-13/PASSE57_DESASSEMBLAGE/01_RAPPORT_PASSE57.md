# Passe 57 — Appelant de l'exécuteur WDA et cycle de vie d'une collection temporaire

## 1. Provenance de `0x45A7A0` [CONFIRMÉ]

Dans le désassemblage linéaire de `.text`, les appels `call 0x45A7A0` situés à `0x45A8A0`, `0x45A9C5`, `0x45AA10`, `0x45AAC1`, `0x45AD63` et `0x45AE70` sont **récursifs**, c'est-à-dire internes à `0x45A7A0`. L'appel non récursif identifié se trouve à `0x45C8D3`, dans le wrapper **`0x45C890`**.

`0x45C890` construit une chaîne locale, pousse six paramètres à l'exécuteur, puis vérifie le contenu de la chaîne produite. S'il y a du contenu, il effectue des appels virtuels sur des pointeurs d'unité (`+0x1A4`, `+0x1A8` ou `+0x158` suivant les branches). **Le nom exact de ces méthodes virtuelles n'est pas résolu ici.** L'appelant immédiat n'est donc pas un constructeur d'arbre `var`, mais un wrapper de traitement d'actions/messages.

Six appels directs à `0x45C890` sont présents dans le contrôle principal `0x45C950`: `0x45CEE2`, `0x45CF17`, `0x45CFAE`, `0x45D074`, `0x45D108` et `0x45D23C`. Le traitement sélectionne des chemins différents selon les conditions et gère des collections locales et temporaires. **Cette liste est exhaustive seulement pour les appels directs repérables par le désassemblage utilisé**, et non pour les appels via pointeurs.

## 2. Vtable de `SimpleMonster` [CONFIRMÉ]

La table virtuelle `??_7SimpleMonster@@6B@` est exportée à **`0x4DF41C`**. L'adresse en mémoire `0x4DF490` vaut **`0x0045C950`**, soit le slot **`+0x74`**. Il s'agit donc d'une méthode virtuelle fournie par `SimpleMonster`. Les noms exacts de la méthode et de tous les contrats des slots indirects de `0x45C950` restent inconnus : **ne pas la renommer `OnTalk`, `OnPopup` ou autre sans recoupement**.

## 3. Durée de vie de l'arbre temporaire de `0x45C950` [CONFIRMÉ pour ce conteneur]

- `0x45CB07` prépare la variable locale `[ebp-0x3C]`; `0x45CB0D` appelle le constructeur **`0x45E8A0`**.
- `0x45E8B0` alloue `0x30` (48) octets pour un nœud sentinelle; `[esi+0x4]` stocke son pointeur et `[esi+0x8]` le compteur initial à zéro.
- `0x45CF90` et `0x45D0ED` appellent **`0x45E3D0`** en sortie de branches de la méthode. **Ce sont deux sites observés, pas une preuve d'exécution des deux lors d'un même parcours.**
- `0x45E3FC..0x45E41C` traverse des nœuds, appelle `0x45F4C0` sur leur sous-objet `+0x10`, puis `0x442060` sur le nœud. Le code remet ensuite le compteur à zéro et réinitialise les pointeurs de la sentinelle (`0x45E425..0x45E43A`).
- `0x45F4C0` appelle `0x40F1F0` pour le sous-objet (gestion de chaîne), puis éventuellement libère sa propre allocation selon le flag d'argument. `0x45F4F0` comporte un compteur situé dans l'octet avant le pointeur de contenu.

**Attention :** le conteneur `[ebp-0x3C]` ainsi construit est celui de `0x45C950`; la recherche des variables WDA utilise pour sa part `0x40F230` et le conteneur `std::map<string,double>` passé à l'évaluateur. La similitude de structure d'arbre et d'allocateur **n'établit pas l'identité** des deux objets. La destruction de tous les nœuds `var` reste **non démontrée**.

## 4. Passage de paramètres et propriétaires possibles [PARTIEL]

`0x45C8B4..0x45C8D3` transmet les arguments provenant de son propre appelant à `0x45A7A0` avec une chaîne locale. `0x45C950` reçoit à son tour des pointeurs à des unités et à des données de contexte. Les appels à `0x40C350` provenant de l'exécuteur transmettent les contextes WDA, y compris le pointeur de collection associative. Démontrer la **portée** de la collection `var` exige encore le suivi de ses arguments à travers `0x45C890`, les appels récursifs et les entrées dans `BoostFormula::GetOperandValue`.

## 5. Ce que cela change dans la compréhension du serveur [INFÉRÉ / LIMITÉ]

Le moteur WDA utilisé pour les actions ne se résume pas à l'évaluation d'une formule : il s'intègre à un **mécanisme de dispatch d'actions**, peut exécuter des sous-actions récursivement, produit des chaînes/messages et modifie potentiellement les variables du contexte. L'existence de conditions sur les unités est confirmée; leur portée gameplay exacte nécessite l'identification des méthodes virtuelles associées.

## 6. Couverture vérifiée et contrôles

- Baseline recalculée avec le vérificateur historique `INS_RE` : **124613** octets (contre 124 846 octets publiés précédemment comme 'recalcul indépendant' : **233** d'écart; et 124 729 pour la série historique : **116** d'écart). Après : nouveau résultat **126431** octets (13.968 %), gain **1818**.
- **846** instructions présentes dans les trois nouveaux fichiers, toutes correspondantes au serveur, aucun rejet.
- **258/1125** débuts de fonctions exportées documentés selon le vérificateur indépendant; suivre le décalage historique d'une unité sans inventer un nouveau gain.
- Les 513 fichiers de l'archive précédente sont conservés à l'identique.

L'étude repose uniquement sur le binaire, le désassemblage et les symboles exportés. Aucun test d'exécution ni fichier WDA authentique ne complète la preuve.
