# Rapport de désassemblage — Passe 58

## Objet et résultats

L'appel direct `0x45C8D3 -> 0x45A7A0` et les appels virtuels aux slots `+0x1A4`, `+0x1A8` et `+0x158` sont présents dans l'assembleur archivé, avec une bifurcation conditionnelle basée sur la valeur de retour de `+0x1A4`.

Le registre historique des exports donne les symboles suivants :

| Slot | Fonction candidate selon symboles | VA du symbole | Niveau de preuve dans CETTE archive |
| --- | --- | --- | --- |
| `+0x1A4` | `Unit::IsPrivateTalk` / `Creatures::IsPrivateTalk` | `0x48F540` / `0x432EA0` | Interprétation forte; entrées du slot vtable non conservées |
| `+0x1A8` | `Unit::SendPrivateMessage` / `Character::SendPrivateMessage` | `0x48F550` / `0x41F8E0` | Interprétation forte; entrées du slot vtable non conservées |
| `+0x158` | `Unit::Talk` | `0x48C3E0` | Interprétation forte; entrée du slot vtable non conservée |

Le contexte de conversation indique que ces résolutions ont été établies dans un travail précédent; faute de preuve brute des cases vtable dans le ZIP reçu, la présente livraison ne les élève pas au rang de vérification indépendante.

## Analyse de contrôle vérifiable

- `0x45C8D3`: appel direct à `0x45A7A0`.
- `0x45C8D8..0x45C8E3`: lecture d'une longueur/valeur de chaîne et saut vers `0x45C921` si nul.
- `0x45C8E9`: invocation virtuelle `+0x1A4` sur l'objet `ESI`; `test eax,eax` à `0x45C8EF`.
- `0x45C8F1`: valeur nulle -> `0x45C90B`, sinon appel `+0x1A8` via l'objet `EDI` à `0x45C903`.
- `0x45C91B`: chemin alternatif, appel `+0x158` sur l'objet `ESI`.
- `0x45C921..0x45C92B`: appel de nettoyage d'une valeur locale à `0x4D1A40`, sans preuve d'identité avec l'arbre des variables WDA.

## Nouveau point d'attention

Une seconde occurrence de `+0x1A4` existe à `0x45CA08` au sein du traitement principal, suivie d'un chemin `+0xAC`. Il faut rechercher si le mode de conversation contrôle également un événement hors du wrapper de messages. `+0x7C`, `+0x80` et `+0xA8` restent non résolus dans ce corpus.

## Contrats réseau

Le contexte de travail signale qu'un paquet de code 27 est construit par `Character::SendPrivateMessage` et `Unit::Talk`. La présente archive contient leurs exports, mais pas leurs désassemblages. Ces structures de paquets et leurs destinataires **ne sont donc pas revérifiés** ici.

## Couverture et historique

La couverture indépendante demeure **126 431 / 905 117 = 13,96847 %**. Gain prouvé de la passe 58 : **0 octet**. Référence conservée : passe 57. L'écart historique de 233 octets sur le recalcul de la passe 56 reste ouvert.

## Poursuite prioritaire avec binaire original

1. Lire les DWORD aux vtables `Unit 0x4DF658`, `Character 0x4DE68C`, `Creatures 0x4DEBB0` aux offsets `0x1A4`, `0x1A8`, `0x158` et consigner VA et octets bruts.
2. Désassembler `0x41F8E0` et `0x48C3E0` jusqu'aux appels packet et aux destinataires, vérifier le code 27 et les champs émis.
3. Tracer le pointeur de map `var` depuis `0x45C950 -> 0x45C890 -> 0x45A7A0 -> 0x40C350`, rechercher allocation, alias et destructeur; ne pas assimiler d'office la collection temporaire de `0x45C950` à ce map.
4. Réconcilier l'écart de 233 octets entre audits historiques avant modification du dénominateur ou de l'union de couverture.
