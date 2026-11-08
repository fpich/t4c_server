# Passe 47 — Résolution des défenses physiques et chemin réseau de l'attaque à distance

## A. Résolution de `vtable+0x168` [CONFIRMÉ]

Les quatre tables virtuelles des unités ont été lues comme pointeurs DWORD dans la section `.rdata`. La case `+0x168` pointe vers `Character::GetAC (0x41EA40)` pour `Character` et vers `Unit::GetAC (0x48C6E0)` pour `Unit`, `Creatures` et `Objects`. La correspondance de chaque adresse avec les noms MSVC exportés est explicitée dans `06_RESOLUTION_VTABLES_COMBAT.tsv`.

À `0x41B189`, `Character::attacked` appelle ce slot sur **la victime**, puis effectue `fsubr` avec la quantité de dégâts en cours. En présence d'une valeur négative, les instructions x87 remplacent la quantité par la constante `0.0` à `0x4DE630` ; la portée se limite à cette branche de réception d'attaque. L'assembleur ne permet pas de conclure que toutes les formes de magie ou de dégâts suivent cet itinéraire.

## B. Composition de la classe d'armure [CONFIRMÉ]

`Character::GetAC (0x41EA40)` évalue d'abord `Unit::QueryBoost(20)`, convertit cet entier en flottant, puis lui ajoute `Character::GetTrueAC (0x41EA80)`. Il renvoie au moins zéro : un total négatif est ramené à `0.0` dans le chemin observé.

`Character::GetTrueAC` inspecte les objets équipés aux offsets `+0x1A0,+0x1A4,+0x1A8,+0x1AC,+0x1B0,+0x1DC,+0x1D8,+0x1CC,+0x1D0,+0x1B8,+0x1BC,+0x1C0,+0x1C4`. Pour chaque objet présent, il appelle virtuellement son `GetAC`, ajoute la contribution en `double`, et évite de compter deux fois la même référence lorsqu'elle occupe à la fois `+0x1C0` et `+0x1C4`.

`Unit::GetAC (0x48C6E0)` lit aussi `QueryBoost(20)`. Les types d'unité indiqués par l'octet `+0x73` font emprunter des branches différentes : pour deux valeurs du champ, `SendUnitMessage(0x14,...)` peut renseigner une référence dans laquelle l'AC additionnelle est lue en `double` à `+0x30`, ou en entier à `+0x18`. L'existence des branches est prouvée ; l'identité métier exhaustive des sous-structures référencées ne l'est pas.

## C. Résistances élémentaires et boosts [CONFIRMÉ dans les getters]

Les six `Unit::GetXResist` de l'export MSVC (`Air`, `Water`, `Fire`, `Earth`, `Light`, `Dark`) emploient un `ViewFlag` virtuel au slot `+0xC`, puis `Unit::QueryBoost` avec un code dépendant de l'élément, et ajoutent `100`. Les six `SetXResist` retirent `100` à la valeur fournie avant de la transmettre à `SetFlag` (slot `+0x4`). Les fonctions `GetTrueXResist` lues dans ce voisinage ne contiennent pas le même appel `QueryBoost`.

Cette architecture explicite une **représentation de résistance relative à 100**, sans démontrer l'emploi direct de chacune des six résistances dans chaque appel `Character::attacked`. La liaison combat physique avec `GetAC` est plus directe que celle des résistances élémentaires.

## D. Aiguillage `Character::RangeAttack` [CONFIRMÉ]

`0x421D80` commence par `Character::RangedAttack` (`0x421620`), puis appelle `GAME_RULES::InSafeHaven (0x439190)` ; cette dernière consulte `Unit::GetUnderBlock` pour les codes 6 et 7 et les types d'unités. En cas de résultat positif, la branche observée construit une notification ciblée commençant par `0x3F 0x1E 0x03`, avec une chaîne, et fait appel à `SendPlayerMessage`.

En dehors de cette branche, plusieurs conditions d'équipement et des états du personnage conduisent à des appels au helper `0x4218F0` (paquet `0x5F`, 95). Un autre chemin atteint `0x4219D0` (traitement d'impact et paquet `0x60`, 96) depuis `0x422169`, puis interroge les états de l'objet et peut retirer une quantité d'équipement. **Il ne serait pas justifié d'affirmer qu'une attaque à distance envoie systématiquement à la fois les paquets 95 et 96.**

Dans `0x4219D0`, le serveur effectue des contrôles sur les types d'unités, plusieurs tests de flags et d'effets, puis appelle les méthodes d'attaque/réception et calcule un ratio `GetHP*100/GetMaxHP` destiné au paquet 96 avant de le diffuser. Aucune vérification dynamique du paquet sérialisé côté client n'est réalisée. Les constantes double `0.0`, `1.0`, `1.5`, `0.01` sont identifiées depuis `.rdata`, mais on ne confond pas la présence de ces constantes avec une formule générale.

## E. Statut de la preuve

- **CONFIRMÉ** : méthodes cibles des slots documentés, adresses, appels, offsets, opérations, conditions des branches examinées.
- **INFÉRÉ** : finalité exacte de certaines notifications, familles d'armures, interprétation métier des flags et pourcentages.
- **INCONNU** : variante exhaustive du protocole client, formule universelle des dégâts magiques/élémentaires, configuration réelle des objets et WDA, comportement effectif sous concurrence.

Les preuves et mesures restent purement documentaires. Toutes les fonctions de ce rapport sont tirées du binaire original du serveur.
