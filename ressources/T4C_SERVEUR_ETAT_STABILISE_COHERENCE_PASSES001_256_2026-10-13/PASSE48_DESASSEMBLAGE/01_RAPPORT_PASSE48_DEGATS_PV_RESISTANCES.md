# Passe 48 — Des réactions aux coups reçus aux PV et à leur transmission

## A. Chaîne `Character::hit` [CONFIRMÉ]

L’entrée à `0x41CC00` parcourt un premier conteneur de compétences/événements via `Skills::ExecuteSkill` avec la valeur `8`, puis déclenche `Unit::QueryEffects` avec le code `14` dans la branche où la cible est différente de la source. Elle envoie ensuite le même code `14` à plusieurs objets équipés via leur méthode virtuelle `+0x24` (`SendUnitMessage`). Les deux emplacements d'arme `+0x1C0` et `+0x1C4` sont comparés pour ne pas traiter deux fois la même référence. D'autres opérations agissent sur les flags de la victime et sur le montant de dégâts ; leur signification métier exhaustive est inconnue.

Le code lit `GetHP` (`vtable+0xD8`), `GetMaxHP` (`+0xCC`), réalise un calcul relatif au dommage entrant et s’assure qu’une valeur négative ne soit pas transmise à la notification. Le paquet construit contient l’octet `0x21` (=33), deux DWORD observés pour la quantité et le maximum, puis il est adressé au personnage via `+0x14C` (`SendPlayerMessage`). Le flux bifurque : `+0x44` (`Death`) ou `+0xDC` (`SetHP`), suivant les contrôles d’HP et de flags. **On ne décrit pas ce flux comme formule universelle de dégâts magiques.**

## B. Polymorphisme [CONFIRMÉ]

`Creatures::hit (0x432900)` diffuse `SendUnitMessage(14)` et `SendUnitMessage(20)`. La seconde recherche renvoie une structure optionnelle à `+0x18` comparée à `100000` (0x186A0). Si elle ne court-circuite pas le chemin, les HP sont décrémentés et `Death` est appelé à zéro ou en dessous ; sinon le setter de HP prend le relais. Les conditions exactes d’usage de la structure issue du message 20 restent inconnues.

`Objects::hit (0x44C090)` déclenche `SendUnitMessage(2)`, puis renvoie zéro : **aucune modification de HP par cette routine**. `Unit::hit (0x48B7D0)` expose le mécanisme de base de callbacks `14`. Dans les tables virtuelles, les quatre classes possèdent des cibles parfois différentes pour `hit`, `Death`, `GetHP` et `SetHP` (table 06).

## C. `Character::SetHP` et paquets [CONFIRMÉ]

`GetHP` lit un DWORD à l’offset `+0x13C`. `SetHP` compare la nouvelle valeur puis l’écrit à `+0x13C`. Si elle est inchangée, pas de construction de paquet sur ce chemin. Si l'argument booléen de notification est faux, la routine n'entre pas dans la branche réseau. Sinon, elle crée un paquet `0x21` (33) avec HP courant et HP maximum, le transmet au personnage et, si un groupe est associé, appelle `Group::SendHpUpdate`.

Cette fonction de groupe prépare un paquet `0x57` (87), comportant une valeur d'identité de personnage (l'appel à `Unit::GetID` à 0x48B700), puis un ratio entier calculé comme `HP*100/maxHP`, transmis aux membres parcourus. Le code n’en prouve pas les champs du client, ni l’intégralité des cas `maxHP = 0`.

Les monstres ont un stockage distinct : `Creatures::GetHP/SetHP` lisent/écrivent `+0x114` ; les routines de base de `Unit::GetHP/SetHP` sont des implémentations vides/valeurs par défaut. Cela interdit de supposer une représentation identique pour toutes les classes.

## D. Retour aux sorts et résistances [CONFIRMÉ/INCONNU]

Les six getters élémentaires (`GetAir/Water/Fire/Earth/Light/DarkResist`) sont des fonctions non virtuelles exportées déjà documentées à la passe 47. Une recherche exhaustive des **cibles de `call` direct en assembleur** dans le désassemblage disponible n’a trouvé **aucun appel `rel32` vers ces six entrées**, tandis que deux getters de puissance apparaissent dans un autre traitement. Ce constat **n’autorise pas** à conclure que les résistances ne servent pas : la magie peut emprunter des appels indirects, des chemins non indexés ou calculer ses valeurs autrement (`ViewFlag`, `QueryBoost` et autres fonctions). En conséquence, aucune formule « puissance magique − résistance » n’est certifiée à cette passe.

En parallèle, `AreaSensitiveEffect::QueryEffect` (`0x405D00`) teste une position dans un intervalle, puis appelle `Execute`. Si son type est `0xA001` et si `Unit::GetType` renvoie 1, `Execute` utilise le slot virtuel `+0x10C` : les quatre vtables observées pointent vers `Unit::Teleport`. Les effets spatiaux démontrent une branche **non dommageable** du moteur de sorts ; leur présence ne prouve pas que tous les sorts passent par eux.

## E. Prochaine recherche ciblée

Priorité : inspecter les 14 implémentations de superstructures et les branches qui chargent ou manipulent directement les flags et les boosts des six éléments ; résoudre les méthodes de calcul des dommages magiques plutôt que d’extrapoler depuis les getters de résistance. Étudier les événements de mort et leurs packets spécifiques, sans confondre les paquets 33, 87, 95 et 96.

**Qualité de la preuve :** `CONFIRMÉ` = octets/code/cibles virtuelles retrouvés ; `INFÉRÉ` = intention probable du protocole ou des structures ; `INCONNU` = règles de gameplay ou comportement dynamique non déterminés.

## F. Chaîne complète des effets de zone vers le monde [CONFIRMÉ]

`WorldMap::add_effect (0x4B0350)` prépare les entrées d’une collection indexée par des blocs de **0x44 octets** ; le code réserve et construit les objets `AreaSensitiveEffect`. `WorldMap::QueryEffects (0x4B04B0)` utilise le même pas pour choisir un bloc et parcourir la collection, puis appelle directement `AreaSensitiveEffect::QueryEffect` à `0x4B052E`. Le parcours peut traiter plusieurs entrées, et les drapeaux internes `+0x34`/`+0x40` sont observés lors de l’itération.

L’analyse étendue de `Unit::Teleport (0x48BEA0)` montre des contrôles de limites des cartes dans l’ancien et le nouveau monde, des appels d'entrée/sortie de visibilité et des chemins de broadcast. Le cas de type d’unité `1` prépare notamment une notification **`0x39` (57)** et un transfert vers la méthode virtuelle `SendPlayerMessage`. Une autre branche de type d'unité emprunte une méthode de déplacement distincte. Il ne faut pas confondre cette notification de téléportation avec les paquets de dégâts/PV 33, 87, 95, 96.

Cette chaîne constitue un **mécanisme spatial vérifié**, non une preuve sur l’application des résistances magiques.
