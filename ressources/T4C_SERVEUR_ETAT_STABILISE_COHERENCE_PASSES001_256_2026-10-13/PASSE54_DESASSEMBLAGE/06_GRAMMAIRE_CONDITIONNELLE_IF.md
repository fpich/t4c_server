# Grammaire conditionnelle de `if` — sources assembleur uniquement

## Construction du nœud [CONFIRMÉ]

Le nom littéral `if` est testé en `0x40E885`. Après correspondance, la routine alloue une structure de **0x40 octets** (`0x40E8C1–0x40E8C8`) et trois blocs de **0x20 octets** (`0x40E8CB–0x40E8DF`), enregistrés à `[OPERAND+0x14]`, `[OPERAND+0x1C]`, `[OPERAND+0x18]`. La routine affecte `[OPERAND+0x11] = 2` à `0x40EAB8`, initialise les 3 enfants puis prépare leurs sous-expressions.

Les adresses indiquent des **tailles d'allocation**, non une garantie que toutes les structures sont pleinement remplies si le parsing échoue.

## Séparateurs [CONFIRMÉ]

- `0x40EAFB–0x40EB84` : balayage de caractères, table de classification dans `.text` (`0x40F184/0x40F198`) et choix d'un code comparateur stocké comme `double` à `[noeud+0x8]`. Les octets des tables ne sont **pas du code** et ne sont pas comptés comme preuve d'instructions.
- `0x40EBB3–0x40EBBC` : terminaison d'une chaîne temporaire par `\0`, puis appel récursif `BoostFormula::ParseFormula(0x40C400)` pour un enfant.
- `0x40EBD2–0x40EC33` : recherche du séparateur **`?`**; une erreur dédiée est signalée s'il manque.
- `0x40EC70–0x40ECA6` : recherche du séparateur **`:`** ; présence de sauts pour gérer les parenthèses et éviter un arrêt prématuré.
- `0x40EC51` et `0x40ED0E/0x40ED21` : parsing des enfants suivants par appels récursifs ; échec propagé dans une variable locale et diagnostics spécifiques.

**Schéma documentaire, non grammaire complète validée par des WDA réels :**

```text
if( <expression condition / comparateur> ? <expression branche 1> : <expression branche 2> )
```

Les parenthèses externes exactes, la priorité de toutes les opérations et la tolérance aux espaces demandent encore une simulation contrôlée avec des WDA authentiques. L'existence de la forme conditionnelle à trois branches et des séparateurs est confirmée ; les exemples ci-dessus ne sont pas un test d'exécution.

## Gestion des erreurs [CONFIRMÉ]

- Message `Formula error: Could not find IF operator ?.` à `0x500948`, site d'appel `0x40EC0E`.
- Message `Formula error: Could not find conditional arguments in IF expresioon.` à `0x5008B4`, site `0x40ED4E`.
- Message `Formula error: couldn't successfully parse return paths in IF expression.` à `0x5008FC`, site `0x40ED3A`.
- Échec signalé par état local de parsing dans plusieurs chemins et émission via `0x471D40`.

Les libellés sont recopiés **exactement**, y compris les fautes de frappe du binaire. Certaines erreurs peuvent avoir plusieurs causes concrètes ; la cartographie ne prétend pas à une couverture exhaustive de tous les cas.
