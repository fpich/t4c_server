# Passe 70 — Gestionnaire de pool : allocation, verrouillage, libération

## Binaire et méthode

Serveur original PE x86, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`, section `.text` VA `0x401000` / offset fichier `0x1000`, longueur **905 117 octets**. Les instructions extraites par `objdump` sont comparées à la position exacte de leurs octets dans le PE. Comptage de l’union d’adresses par le masque cumulatif P69.

## 1. Chemin d’allocation en mode pool : échecs non traités

- `0x441FF0` lit le drapeau `pool+0x20`. Si inactif : `malloc` (`0x442009`) puis renvoi direct. Si actif : capture de pile (`0x462BD0`), verrou et délégation `0x4422E0`.
- `0x4422E0` ne fait pas de test du retour de `malloc(taille)` à `0x442303` avant `0x442308` et `0x44230E`. Le pointeur renvoyé est utilisé comme valeur de clé pour un bucket, y compris s'il vaut `NULL`. La fonction `0x4422C0` calcule `(adresse >> 6) & 0x3ff`. Le retour `NULL` n’empêche donc pas, à lui seul, l’enregistrement de métadonnées.
- Si aucun tableau `[EBX+0x34]` n’est présent, `0x4422E7–0x4422F4` retourne `NULL` avant de tenter la première allocation.
- Aux adresses `0x44233B` et `0x442362`, une deuxième allocation de **0x34 octets** permet de créer un nœud de suivi. Aucune vérification de son retour `NULL` n’est visible avant l’écriture du pointeur dans les structures et son initialisation via `rep stosd` à `0x442353` ou `0x44237A`. Risque conditionnel de violation d’accès.
- La table initiale de buckets est elle aussi obtenue par `malloc(0x1000)` à `0x44216E` et initialisée immédiatement par `rep stosd` à `0x442180`, sans test de nullité local. Le mode pool démarre désactivé (`+0x20 = 0`), mais l’initialisation du gestionnaire existe indépendamment du mode d’allocation choisi.
- **Aucun échec de malloc n’a été déclenché ou observé en exécution.** Il ne s’agit pas d’une preuve que tout processus T4C plante systématiquement faute de mémoire.

## 2. Synchronisation Win32 : résolution exacte des deux imports

- `0x409680–0x409697` stocke l’adresse du verrou et appelle l'import `EnterCriticalSection` via l’IAT `0x4DE0F8`.
- `0x4096A0–0x4096AA` appelle `LeaveCriticalSection` via l’IAT `0x4DE0FC`.
- `0x44202C` prend le verrou et `0x442045` le relâche autour de `0x4422E0`; `0x44208C` et `0x44209F` encadrent symétriquement `0x4423D0`.
- Le verrouillage est visible sur le chemin normal; la libération lors d’une faute matérielle ou de toute exception avant le retour n’est pas démontrée (prologues et propagations d’exception non audités intégralement).

## 3. Libération : enregistrement facultatif, `free` systématique

- Le wrapper `0x442060` appelle directement `MSVCRT.free` quand le suivi n’est pas activé. Lorsqu’il est actif, il passe par `0x4423D0` sous verrou.
- `0x4423D0` utilise le même hash que l’enregistrement, recherche un nœud dont le pointeur stocké correspond au pointeur reçu, et, en cas de correspondance, retire le nœud, diminue les compteurs et libère les métadonnées.
- Aux adresses `0x442457–0x44245E`, le pointeur demandé est transmis à `free` même en l’absence d’un enregistrement trouvé. Ce mécanisme est un **suivi**, pas un validateur de pointeurs garantissant que toute adresse transmise à `free` est légitime.
- `0x442470` lit le total comptabilisé à `pool+0x04`; `0x442480` délègue au rapport de suivi `0x4421E0`. L’usage exact de ces deux entrées (appel direct/virtuel/indirect) reste inconnu.

## 4. Couverture non redondante

Base P69 **129 770** octets. Nouvelles instructions vérifiées contre le PE : **277**, dont **42** octets inédits (4 plages). Cumul P70 **129812 / 905 117**, soit **14.342013 %**. Aucun octet de `nop`/`int3`, aucun doublon intra-passe, aucune instruction divergente.

Les preuves des chemins déjà couverts sont présentes volontairement et comptées à zéro. Les octets ajoutés portent uniquement sur les wrappers du verrou (`0x409680`, `0x4096A0`), l’accesseur (`0x442470`) et le trampoline (`0x442480`).

## Travaux suivants

Étudier les appelants indirects de l’activation de suivi et l’initialisation globale du gestionnaire ; vérifier si les erreurs de `malloc` sont traitées à un niveau supérieur ; étendre la couverture à de nouvelles fonctions pertinentes sans attribuer du code de remplissage à des instructions métier.
