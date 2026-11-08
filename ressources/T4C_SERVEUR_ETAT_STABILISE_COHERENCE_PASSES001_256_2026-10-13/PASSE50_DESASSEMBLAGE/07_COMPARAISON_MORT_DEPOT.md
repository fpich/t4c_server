# Pénalités de mort et dépôt d'objets : distinction des chemins

## Chemin de mort [CONFIRMÉ]

La passe 49 documente `GAME_RULES::DeathPenalties` (`0x438A20`) : sélection probabiliste et contrôles de protection, `Objects::Remove(1)`, construction éventuelle d'une sortie, puis `Character::Death` avec dépôt de certaines entités et notifications. Les huit pourcentages `PC_*/MOB_*` viennent d'une configuration Windows **absente du dossier**.

## Chemin `Character::DropUnit` [CONFIRMÉ]

Le point d'entrée exporté `0x417240` part du personnage courant, teste un rayon retourné par un appel virtuel avec fallback **10**, contrôle les écarts absolus en X/Y, la carte courante et les bornes. Il vérifie ensuite la quantité de l'objet et des flags via un message interne 20; le code passe par `WorldMap::IsBlocking`, `WorldMap::GetCollisionPos`, `Objects::Remove` et `Objects::Add`. Une quantité supérieure à 1 peut conduire à la construction d'un nouveau `Objects` après allocation de **0x120 octets**. Le sous-ensemble étudié met à jour la liste de contenu du personnage à **+0x19C**.

## Appelant direct [CONFIRMÉ]

Le seul `call 0x417240` repéré dans le dump textuel complet est à `0x47AA71`. Cette routine, si le résultat est non nul, appelle `Unit::BroadcastPopup` (`0x48F7E0`) à `0x47AA94`. Aucun `call` direct vers `DropUnit` n'apparaît dans `Character::Death` (`0x41B250`). **Une relation indirecte entre ces deux circuits n'est ni prouvée ni exclue.**

## Limites

1. Cette étude ne prouve pas que toutes les quantités, tous les types ou toutes les positions réussissent un dépôt.
2. Elle ne permet pas de connaître les ratios effectifs de perte au décès sans la configuration du serveur.
3. Les blocs d'allocations et les traitements `Objects::Create` sont identifiés par adresse et parfois par export ; ils ne suffisent pas à certifier tous les invariants de possession.
4. `Unit::CleanCorpse` n'a pas de site d'appel direct retrouvé ici ; on n'invente donc pas de timer de nettoyage.
