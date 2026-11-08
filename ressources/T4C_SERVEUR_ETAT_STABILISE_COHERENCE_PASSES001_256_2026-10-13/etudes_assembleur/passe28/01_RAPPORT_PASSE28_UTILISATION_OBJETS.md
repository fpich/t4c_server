# Passe 28 — Consommation des objets, emploi en jeu et fonctions auxiliaires des groupes de conteneurs

## Périmètre, niveau de preuve

Analyse **statique** de `T4C Server(1).exe`, PE32 x86, à partir des fonctions exportées et des instructions vérifiées dans la section `.text`. Aucun traitement de jeu n’a été exécuté. La preuve brute est `02_PREUVES_ASSEMBLEUR_PASSE28.asm`. Les noms de trois fonctions sont tirés des exports MSVC ; les trois fonctions `0x4A57xx` sont désignées par adresse, leur nom C++ n’étant pas exporté dans l’inventaire étudié.

## 1. `Character::use_item` (`0x41A030`)

- Appelle `Character::Disturbed` à `0x41A050` (`0x41FC80`) et vérifie le pointeur de conteneur de l’instance à **`+0x19C`** (`0x41A055`–`0x41A069`).
- Parcourt un conteneur interne à travers les champs `+0x20`, `+0x24`, `+0x28`, `+0x38` et `+0x40`. À `0x41A0C3`–`0x41A0CD`, `Unit::GetID` (`0x48B700`) permet de comparer l’identifiant trouvé à l’argument de la fonction.
- Pour un élément candidat, le code appelle une méthode virtuelle **`+0x24` avec la valeur `3`** (`0x41A0CF`–`0x41A0DD`). L’interprétation fonctionnelle fine de cette méthode et de cette valeur reste inconnue.
- Consulte `Unit::GetMark` (`0x48D750`), puis, dans une branche, `Objects::Remove` (`0x44C4A0`) et `Objects::GetQty` (`0x44C3F0`) (`0x41A0E0`–`0x41A0FF`). Le couple démontre un contrôle de consommation/quantité, sans démontrer la règle globale de tous les objets.
- Un appel virtuel **`+0x1C4`** intervient avant une mise à jour de la liste (`0x41A10F`–`0x41A126`). Son identité exacte sur l’objet concret doit être établie.
- Le traitement examine également **16 emplacements** (`0x41A291`–`0x41A29E`, comparaison `0x10`) avant de poursuivre les notifications/effets.
- Un autre appel virtuel **`+0x24` avec la valeur `4`** apparaît à `0x41A2B5`–`0x41A2CE`. Les cas d’usage exacts des codes `3` et `4` ne sont pas encore établis.
- Une branche de retour/notification construit une information et passe par l’envoi virtuel `+0x14C` (`0x41A346`–`0x41A34E`) ; d’autres branches continuent le nettoyage du conteneur. Ne pas généraliser un succès systématique.

## 2. `Character::UseItemByAppearance` (`0x41A5C0`)

- Compare la valeur de l’apparence de l’objet à un argument **masqué à 16 bits** (`0x41A657`–`0x41A667`, masque `0xFFFF`) ; il s’agit d’une sélection par apparence, **pas par ID d’unité**.
- Le chemin trouvé appelle la méthode virtuelle `+0x24` avec le code `3`, puis consulte `GetMark`, `Objects::Remove` et `Objects::GetQty` (`0x41A675`–`0x41A6A6`).
- La fonction peut parcourir un second groupe de candidats, réutilisant le code virtuel `4` et plusieurs opérations de retrait du conteneur. Cette logique ressemble à celle de `use_item` mais les deux fonctions ne doivent pas être fusionnées sans vérifier les chemins particuliers.
- Deux retours explicites diffèrent : `AL=1` à `0x41AABA`, `AL=0` à `0x41AAD4`; `ret 8` dans chaque cas. Un retour `1` indique l’emprunt d’un chemin accepté, **pas nécessairement que l’objet a été consommé**.

## 3. `WorldMap::UseItem` (`0x4B0BA0`)

- Vérifie les coordonnées par rapport aux dimensions aux offsets `+0x2C` et `+0x2E`, puis sélectionne un groupe de cellules par division entière par quatre (`sar`, `0x4B0BCA`–`0x4B0BD7`).
- Recherche ensuite une unité à la position ciblée via l’appel `0x410A10`; teste son type avec `0x48B670` et **compare la valeur retournée à `3`** à `0x4B0BF6`.
- Une branche appelle deux fois le slot virtuel `+0x24`, avec les valeurs `3` et `4` (`0x4B0BFA`–`0x4B0C23`). Le rôle de chacun reste à confirmer par l’analyse des vtables concrètes. Le code ne démontre pas encore un tirage de conteneur.

## 4. Trois fonctions internes associées aux groupes de conteneurs

- `0x4A5720` : calcule le nombre d’éléments à partir de `fin - début` avec division signée par **40** (constante `0x66666667`, décalage de 4, ajustement du signe). Puis parcourt `+0x1C` → `+0x20` avec `add esi,0x28` et appelle le slot virtuel `+0x04` de chaque entrée (`0x4A5765`–`0x4A577D`). La fonction appelle aussi `0x4998D0` et un slot virtuel de l’objet associé au groupe, dont la sémantique reste à établir.
- `0x4A5790` : appelle `0x499B80`, puis réalise un traitement itératif incluant `0x4A64B0`, `0x4A65E0`, `0x4A5AD0`, `0x4A5AE0` et `0x4A6520`. L’ordre de ces appels est vérifié. Leur signification « tirer un objet » n’est **pas** confirmée.
- `0x4A5850` : compare les nombres d’entrées de deux listes de **40 octets**. Si leur cardinalité diffère, retourne `AL=0` (`0x4A589F`–`0x4A58A9`). Sinon, compare des champs de chaque entrée via la fonction importée à l’adresse IAT `0x4DE548`; au premier échec, retourne `0`, sinon `1` (`0x4A58D1`–`0x4A58FF`). L’identité de l’import n’est pas déduite sans la DLL.

## 5. Relation au chargement des conteneurs de la passe 27

- **Corroboré** : la passe 27 démontre le chargement SQL des groupes (`Objects_ContainerGroups`) puis des lignes (`Objects_ContainerItems`), avec des entrées de 40 octets.
- **Corroboré dans cette passe** : les fonctions `0x4A5720` et `0x4A5850` parcourent ou comparent une représentation interne à pas de 40 octets.
- **Non démontré** : que l’utilisation d’un objet par `Character::use_item` ou `WorldMap::UseItem` appelle spécifiquement la sélection des récompenses de ces groupes. Cette liaison nécessite la résolution des vtables concrètes et de leurs appelants.

## Priorités après cette passe

1. Résoudre les implémentations des slots virtuels `+0x24` et `+0x1C4` selon le type d’objet.
2. Identifier les appelants et les tables virtuelles associées à `0x4A5720` / `0x4A5790`, plutôt que de leur attribuer un rôle de « lootbox » sans preuve.
3. Compléter les contrats de `Objects::Remove` et `Objects::GetQty`, puis relier les actions d’emploi d’objets à l’inventaire persistant.
4. Continuer la mesure de **couverture d’octets de preuves** et non de compréhension complète.
