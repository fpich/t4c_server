# Passe 09 — Identification de 0x51EA5B et correction de S2C 13

Date : 2026-10-08. Analyse statique du client `t4c(2).exe` ; SHA-256 : `569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68`.

## Découverte majeure : fonction d'exception C++

L'appel `0x51EA5B` dans la table de saut de S2C 13 n'est pas un callback de jeu connu. Son désassemblage montre :

- `0x51EA5B`: prologue, réserve 0x20 (32) octets sur la pile.
- `0x51EA69..0x51EA71`: copie de huit DWORD depuis `0x551478` (`rep movsd`) vers le bloc local.
- `0x51EA73` et `0x51EA79`: place les deux paramètres de fonction dans le bloc local (`[ebp-8]`, `[ebp-4]`).
- `0x51EA7C..0x51EA89`: prépare quatre paramètres et appelle indirectement `[0x53C298]`.
- La table d'importation du PE associe **IAT `0x53C298` à `KERNEL32!RaiseException`**.
- Les huit DWORD constants à `0x551478` sont `E06D7363, 00000001, 00000000, 00000000, 00000003, 19930520, 00000000, 00000000`. `0xE06D7363` est le code conventionnel d'exception C++ MSVC ; `0x19930520` est une valeur de signature compatible avec le runtime MSVC.

Le bloc de 32 octets sert à configurer les paramètres de `RaiseException` (code, flags, nombre d'arguments et pointeur vers arguments). Les deux paramètres de `0x51EA5B` correspondent aux adresses d'objet et d'informations de type du lancer, telles qu'attendues dans un schéma `_CxxThrowException` MSVC ; cette identification est **fortement corroborée**, même si aucun PDB n'a été consulté.

## Conséquence sur la table de saut de S2C 13

Les cas 3, 4, 5, 6, 7, 8 et 12 de la table située à `0x49F694` appellent `0x51EA5B` en passant deux valeurs nulles dans le chemin désassemblé (`push esi` deux fois). Les cas 9, 10, 11 et les valeurs hors plage vont directement à `0x49AA52`.

**Correction de la passe 08** : « tous rejoignent `0x49AA52` » décrivait seulement l'agencement linéaire du code et n'est **pas** une conclusion valide pour les cas appelant `RaiseException` : une exception non interceptée dans ce périmètre empêche un retour normal. Un gestionnaire externe peut intercepter l'exception ; il n'a pas été étudié ici. Le fait que les deux paramètres soient nuls mérite une analyse supplémentaire avant toute interprétation fonctionnelle des cas.

## Reproductibilité

- `objdump -d -M intel --start-address=0x51EA5B --stop-address=0x51EA93 t4c\(2\).exe`
- `objdump -p t4c\(2\).exe` puis rechercher l'import `RaiseException` à RVA `0013c298` (VA `0x53C298`).
- Le PE mappe `.rdata` à RVA/offset identiques pour ce bloc ; lire 32 octets à l'offset fichier `0x151478` (`VA 0x551478`).
- `objdump -d -M intel --start-address=0x49AA09 --stop-address=0x49AA58 ...` pour les cas du switch.

## Points encore ouverts

Confirmer les chemins de capture d'exception et le rôle du premier octet de S2C 13 ; ne pas attribuer de labels métier aux cas 3..12. Déterminer si l'appel avec arguments nuls provient d'une voie d'erreur, d'un code de runtime partagé, ou d'une fonction utilitaire appelée dans un contexte de protection/exception. Ne pas déduire la validité d'un paquet au seul numéro de branche.
