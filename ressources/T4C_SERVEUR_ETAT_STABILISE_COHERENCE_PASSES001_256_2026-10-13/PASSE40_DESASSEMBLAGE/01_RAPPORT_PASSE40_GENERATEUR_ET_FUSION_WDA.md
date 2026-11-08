# Passe 40 — Générateur du masque WDA, sous-listes et double chargement

## Reproductibilité et statut des preuves

Source exclusive : `T4C Server(1).exe`, SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. **CONFIRMÉ** = instructions observées et octets vérifiés; **MODÈLE STATIQUE** = algorithme déduit des instructions puis simulé, sans exécution du serveur ni fichier WDA; **INCONNU** = impossible à trancher avec les sources fournies. Aucune implémentation du serveur Python dans cette archive.

## 1. Générateur du masque [CONFIRMÉ pour les opérations, MODÈLE STATIQUE pour les sorties]

Le constructeur `0x4993A0` (preuve de la passe 39) initialise l'état 64 bits avec l'appel `0x459100(0x5B7E,0)` puis remplit une table de **3 418 octets** avec 3 418 appels à `0x4590A0(0,0xFF)` (boucle `0x4993B9..0x4993D2`). Le corps du générateur `0x458FF0` est désormais documenté : le couple DWORD global `0x514CD8/0x514CDC` est mis à jour par multiplication 64 bits par **`0x2B3DD441`** et ajout de **1** (modulo 2^64), à `0x459001..0x459025`. Les appels à `0x4D1F60`, `0x4D2050` et `0x4D1FD0` sont respectivement des helpers de **multiplication 64 bits**, **décalage logique de 16 bits** et **reste de division 64 bits**. La plage 0..255 est obtenue par un reste modulo 256, donc **l'octet candidat = `(état >> 16) & 0xFF`** dans ce cas précis.

**Détail décisif :** `0x458FF0` compare le résultat candidat à la valeur globale mémorisée en `0x514CE0`. Lors de la première tentative, s'il est **égal** au résultat précédent, la fonction tire une seconde valeur et l'accepte ensuite, même en cas d'égalité (marqueur local à `0x45907A`). Cela empêche de présenter une suite LCG brute comme la table complète sans qualification. `0x459100` fixe le compteur 64 bits, mais **ne remet pas explicitement à zéro le dernier résultat global** : sa valeur initiale et les appels antérieurs éventuels comptent.

**Modèle de calcul vérifiable statiquement**, pour une hypothèse `dernier_resultat_initial = 0` :

```text
etat = 0x0000000000005B7E
pour chaque index de 0 a 3417:
    etat = (etat * 0x2B3DD441 + 1) mod 2^64
    octet = (etat >> 16) & 0xFF
    si octet == dernier_resultat et qu'il s'agit de la premiere tentative:
        etat = (etat * 0x2B3DD441 + 1) mod 2^64
        octet = (etat >> 16) & 0xFF
    table[index] = octet
    dernier_resultat = octet
```

La table est indexée à la lecture avec `position_absolue_flux % 3418` (`0x4993E0`). Une transformation n'est correcte que si l'offset **physique lu par `ftell`** est reproduit fidèlement. Aucune validation d'une décompression WDA authentique n'est revendiquée. Sous l'hypothèse indiquée, l'empreinte SHA256 de la suite de 3 418 octets calculée statiquement est `848111896031adfaf1cd4bea25f412530c9261e560615e0663f6524215e44fdd`; les 80 premières positions figurent dans `05_VECTEURS_MODELE_MASQUE_WDA.tsv`. Le modèle a rencontré **14** secondes tentatives; cet entier est conditionnel au dernier résultat initial.

## 2. Deux sous-collections d'une définition de sort [CONFIRMÉ]

La première famille `0x4A71B0` / `0x4A73A0` stocke des éléments composites dans un tableau interne de pas **0x2C = 44 octets** (`0x4A7294`, `0x4A7784` etc.). Chaque élément lit au moins **un DWORD** en `+0x18`, suivi d'un **compteur DWORD imbriqué** à `0x4A7412`. La boucle `0x4A7423..0x4A7477` construit les éléments imbriqués via `0x4A6E10`/`0x4A6F90` et les ajoute par `0x4A7750`. Ce compteur est **un nombre d'éléments**, pas une taille de buffer directe.

La seconde famille `0x4A8110` / `0x4A8210` lit un **DWORD** à l'offset mémoire `+0x18`, puis enchaîne sur des helpers de transfert et de libération propres à ce second type; `0x4A9DB0` gère des copies en mémoire d'éléments avec pas **0x2C**. Dans la collection externe, `0x4A8CF5` et `0x4A8C78` sont les deux compteurs **distincts**; les registres et pointeurs de destination ne doivent pas être fusionnés dans une structure unique. La taille **0xE4** des entrées externes demeure une taille **mémoire**, non un record WDA à taille fixe.

Les chaînes et dimensions exactes de chaque sous-structure requièrent encore la lecture des constructeurs/copieurs ultérieurs. La présence de fonctions MFC/C++ importées non résolues interdit d'attribuer des noms de méthodes non confirmés.

## 3. Lecture de deux WDA et doublons [CONFIRMÉ / INCONNU]

`0x475DBC` appelle le chargeur `0x4A8810` sur le premier flux, puis `0x475DD3` l'appelle de nouveau **sur la même collection mémoire** avec le second flux (conditionnel). Le chargeur `0x4A8D77..0x4A8D91` insère chaque objet préparé dans le vecteur de sorties : le premier helper `0x4A9DA0` retourne son pointeur de fin; `0x4A9FA0` utilise un calcul de stride **0xE4** et un helper d'insertion `0x4AA930`. Aucun test de clé de sort n'apparaît dans cette petite chaîne directe. Il s'agit donc **d'un chargement successif avec insertion dans le conteneur partagé**.

**Attention :** ceci ne prouve **ni surcharge par le second fichier, ni rejet des doublons** au niveau de la définition runtime. Un dédoublonnage peut être réalisé au moment de `0x473610`, qui parcourt ensuite l'ensemble résultant; les règles de résolution restent INCONNUES. L'analyse exclut de supposer `dernier fichier gagne` à partir des seuls appels.

## 4. Portée des progrès documentaires

Base passe 39 : **71,381** octets; passe 40 : **73,109 / 905,117**, soit **8.077 %**, gain **1,728 octets distincts**. **735 lignes d'instructions** des nouvelles preuves sont conformes au serveur, sans rejet. **161 / 1 125** entrées d'exports ont une instruction documentée. Ce taux ne mesure **pas** une part fonctionnelle implémentée.

## 5. Prochaines vérifications

1. Étudier `0x4AA930` / `0x4A77E0` plus complètement et vérifier le chemin précis de construction/copie des types à pas `0xE4` et `0x2C`.
2. Suivre `0x473610` pour savoir comment la liste issue des deux WDA est triée, dédoublonnée ou enregistrée dans la table des sorts.
3. Vérifier le registre `0x514CE0` à l'initialisation et les autres appelants du générateur pour valider les vecteurs du modèle.
4. Obtenir un WDA authentique pour confronter l'en-tête, le masque reconstruit et la première séquence de champs, sans production anticipée d'un décodeur serveur.
