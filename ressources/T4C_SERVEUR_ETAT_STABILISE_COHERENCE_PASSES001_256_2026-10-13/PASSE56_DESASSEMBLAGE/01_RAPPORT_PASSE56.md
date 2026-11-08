# Rapport technique passe 56 — Variables d'expressions WDA et cycle mémoire

## 1. Deux écrivains directs de variables [CONFIRMÉ]

La routine `0x45A7A0` teste `[edi+0x24]-1` puis indexe la table de 24 entrées `0x45C198`. Les entrées numérotées **5** et **20** pointent respectivement à `0x45AAFA` et `0x45B922` (valeurs lues directement dans `.text`, table interprétée comme données et exclue du décompte assembleur).

- **Catégorie 5** : deux expressions calculées avec l'adaptateur `0x40C350` à `0x45AB6D` et `0x45ABF7`. Une clé est construite ; `0x45ACCE` appelle `0x40F230`; `0x45ACF5` écrit le `double` issu de `[ebp-0x88]` dans `[ecx+0x20]` (`fstp`). Le code examine ensuite une comparaison flottante et peut parcourir des objets par appels virtuels. La sémantique complète de cette branche reste inconnue.
- **Catégorie 20** : `0x45B995` évalue une expression ; `0x45BA5E` retrouve/crée le nœud, `0x45BA83` et `0x45BA8B` écrivent les moitiés basse et haute d'un `double` dans `[esi+0x20]` / `[esi+0x24]`.

Le lecteur `var` issu de la passe 55 appelle **le même helper** `0x40F230` à `0x40A5C4` puis charge le `double` `[esi+0x20]` à `0x40A5DA`. Cela établit une chaîne partagée lecture/écriture **conditionnellement à l'identité du conteneur/clé**. Ne pas prétendre que les trois chemins opèrent toujours sur le même arbre d'exécution.

## 2. Allocation, libération et erreur de qualification levée [CONFIRMÉ]

Le nettoyage `0x40A5EB..0x40A612` traite un pointeur temporaire à l'offset local `[ebp-0x60]`. Il vérifie l'octet `ptr-1`, décrémente cet octet s'il n'est ni 0 ni 255, ou appelle `0x442060`. L'octet est interprétable comme une métadonnée de partage/référence, mais sa structure exacte est **INCONNUE**. **Ce chemin ne démontre pas la destruction du nœud de variable** après `fld [esi+0x20]`.

La fonction `0x442060` appelle `0x4420B0` pour obtenir une instance globale; si `[pool+0x20]==0`, elle appelle un libérateur importé directement; sinon elle délègue à `0x4423D0` après préparation. L'instance initialise notamment un tableau de **1024 pointeurs** (4096 octets à `[pool+0x34]`), et `0x4422C0` calcule `(ptr >> 6) & 0x3ff` pour choisir un bucket. Ne pas identifier les imports MFC/CRT nommément sans DLL authentique.

**Point critique** : `0x442060` est un libérateur générique, appelé depuis des milliers de sites, et non un destructeur métier de `var`. La libération de nœuds de l'arbre doit être étudiée depuis le destructeur du conteneur.

## 3. Décodeur des 24 catégories [CONFIRMÉ pour la table seulement]

L'exécutable contient une table de 24 adresses à `0x45C198`. L'instruction `ja 0x45C187` rejette l'index >23, puis le saut indirect choisit une branche. La table jointe distingue **adresses vérifiées** et **comportements étudiés**. Les nombres de catégories ne sont pas les sous-types WDA 2–13 documentés à la passe 54.

## 4. Contexte des formules [CONFIRMÉ sur les paramètres, LIMITÉ sur leur identité]

`0x40C350` fait transiter neuf paramètres à `0x409C10` avec un pointeur vers le contenu `ecx+0x08`. La présence de différents pointeurs de contexte dans `0x45A7A0` indique que l'égalité structurelle de deux arbres passés au lecteur et à l'écrivain doit être contrôlée au niveau des appelants. Aucun fichier WDA authentique n'a été fourni, aucune exécution serveur n'a été faite.

## 5. Résistances / dégâts [NON DÉMONTRÉ]

Cette passe ne résout **pas** la formule universelle des dégâts magiques. Elle montre un canal supplémentaire pour des expressions calculées et stockées en variables, sans établir qu'un sort particulier utilise ce canal pour des dégâts élémentaires.

## 6. Couverture

- Avant : **123,365 octets (13.630 %)** par audit indépendant; valeur précédemment publiée : **123,248 octets**, différence **117 octets** à rapprocher adresse par adresse.
- Après : **124,846 octets (13.793 %)**, **+1,481 non redondants**.
- Preuves de passe 56 : **712 instructions**, **0 rejet**.
- Entrées exportées documentées : **258 / 1,125** par décompte indépendant; **259 / 1,125** précédemment publiées (écart d'une entrée à réconcilier). Sur les 1,125 exports, 955 adresses appartiennent à `.text`.
- Série historique prolongée : **124,729 octets (13.780 %)**.
- Mesure prudente : **124,638 octets (13.770 %)**. Les écarts 117 et 91 sont maintenus comme notes d'audit; aucune instruction nouvelle n'est attribuée à ces différences.
