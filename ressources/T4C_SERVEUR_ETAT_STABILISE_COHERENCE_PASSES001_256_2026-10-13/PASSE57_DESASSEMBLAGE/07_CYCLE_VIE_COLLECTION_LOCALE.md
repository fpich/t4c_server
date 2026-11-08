# Cycle de vie de la collection locale à `0x45C950`

## Création [CONFIRMÉ]

`0x45CB07` prépare l'objet local à `[ebp-0x3C]`; `0x45CB0D` appelle `0x45E8A0`. Le constructeur alloue un en-tête/sentinelle de 48 octets, initialise ses pointeurs à lui-même et met le compteur à zéro. Cette structure représente un arbre associatif, mais sa charge métier doit être vérifiée.

## Usage [PARTIEL]

La routine traite plusieurs candidats / chaînes, consulte des structures en forme de liste/arbre et transmet les arguments au wrapper `0x45C890`. Le contenu n'est pas assimilable automatiquement aux variables `var` : deux collections peuvent avoir exactement la même représentation bas niveau.

## Libération [CONFIRMÉ]

Le destructeur `0x45E3D0` parcourt les nœuds. `0x45F4C0` détruit les sous-objets chaînes et gère les références; `0x442060` libère ensuite les nœuds. La collection se retrouve avec un compteur nul et une sentinelle réinitialisée. La destruction intervient dans au moins deux branches de `0x45C950` : `0x45CF90` et `0x45D0ED`.

## Limites

- L'identité entre cette collection locale et le `std::map<string,double>` des formules WDA est **inconnue**.
- Une destruction correctement effectuée sur ce chemin n'exclut pas d'autres chemins de sortie, erreurs ou exceptions nécessitant leurs propres nettoyages.
- L'utilisation de l'allocateur générique ne prouve pas à elle seule la libération d'une variable particulière.
