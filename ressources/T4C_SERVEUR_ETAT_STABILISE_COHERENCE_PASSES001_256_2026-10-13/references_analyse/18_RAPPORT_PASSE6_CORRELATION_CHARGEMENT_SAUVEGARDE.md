# Serveur T4C — Passe 6 : setters du chargement et comparaison avec la sauvegarde

Binaire analysé : `T4C Server(1).exe` ; SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Analyse statique, aucun fonctionnement du serveur testé.

## Nouvelle preuve : sept affectations 16 bits au chargement

Les sept appels de `Character::LoadCharacter` repérés en passe 5 sont maintenant résolus dans leur corps de fonction. Chaque helper copie le `WORD` argument dans le champ de l'objet pointé par `ECX`, puis retourne par `ret 4` ; aucun calcul n'a été observé **à l'intérieur de ces sept helpers**. Leur sémantique métier n'est pas démontrée.

| Colonne ODBC | Appel depuis LoadCharacter | Écriture exacte dans l'objet passé en ECX | Type |
|---:|---|---|---|
| 11 | `0x48E2C0` | `[ECX+0x64]` | `WORD` (16 bits) |
| 12 | `0x48E2B0` | `[ECX+0x62]` | `WORD` (16 bits) |
| 13 | `0x48E2D0` | `[ECX+0x66]` | `WORD` (16 bits) |
| 14 | `0x48E2A0` | `[ECX+0x60]` | `WORD` (16 bits) |
| 15 | `0x48E2E0` | `[ECX+0x6A]` | `WORD` (16 bits) |
| 17 | `0x48E2F0` | `[ECX+0x70]` | `WORD` (16 bits) |
| 18 | `0x48E300` | `[ECX+0x6E]` | `WORD` (16 bits) |

**Point de vigilance :** cela prouve des offsets **relatifs à l'objet reçu par chaque helper** ; il faudra vérifier que `ECX` désigne bien l'objet Character de base et non un sous-objet. Éviter de les renommer hâtivement en `force`, `agilité`, etc.

## Sauvegarde : reconstruction des premières opérations répétées

Dans `Character::SaveCharacter` (`0x413D50`), l'extrait `0x413E22–0x413F87` montre une allocation de 0x44 octets à `0x441FF0`, une initialisation d'objet, puis une séquence répétée : obtention d'une valeur via `0x48B700`, formatage via `0x4D1A94` utilisant des chaînes référencées à `0x5017CC`, `0x5017A4`, `0x50177C` et `0x501750`, allocation d'un petit objet et ajout par `0x4252A0`. La première répétition visible se trouve après une journalisation référencée à `0x5017F8`.

Cela **confirme la construction répétée d'éléments de requête** ; en revanche, les chaînes et les cibles SQL définitives ne sont pas décodées ici. Ces extraits ne permettent donc pas d'établir que les colonnes 11–18 sont sauvegardées dans le même ordre, ni que la transaction est validée.

## Bilan de rapprochement chargement/sauvegarde

- **Confirmé :** plusieurs colonnes chargées alimentent des setters d'un octet de code très court qui affectent des champs 16 bits.
- **Confirmé :** `SaveCharacter` construit plusieurs éléments avec `0x4252A0`.
- **Non établi :** relation univoque entre champs chargés et colonnes sauvegardées ; noms métiers ; validation SQL / commit ; exhaustivité du cycle.

## Source contrôlable

`17_PREUVES_SETTERS_PASSE6.asm` contient le désassemblage original des helpers (VA `0x48E210–0x48E310`). `19_EXTRAITS_SAUVEGARDE_PASSE6.asm` contient la portion de sauvegarde, avec adresses. Les résultats précédents restent dans l'archive.

## Couverture

Reconstruction fonctionnelle globale du serveur : **2–5 %**, estimation qualitative inchangée. La présente passe ajoute une vérification structurelle locale et non une fonction complète opérationnelle.
