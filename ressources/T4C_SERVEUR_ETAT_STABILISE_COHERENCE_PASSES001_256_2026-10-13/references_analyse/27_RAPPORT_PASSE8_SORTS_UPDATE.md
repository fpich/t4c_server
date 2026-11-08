# Passe 8 — Fin de SaveCharacter : PlayerSpells et UPDATE

## Source et méthode
Analyse statique de `T4C Server(1).exe` (SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`). Désassemblage x86 avec `objdump`, sans exécuter le programme. VA originales de l’image chargée.

## Preuves supplémentaires

| Adresse de référence | Instruction / séquence | Chaîne SQL | Conclusion | Certitude |
|---|---|---|---|---|
| `0x414558` | `push 0x501554`, suivi d'un appel à `0x4D1A94` (`0x41456c`) | `DELETE FROM PlayerSpells WHERE OwnerID=%u` | La suppression des sorts est formatée dans `SaveCharacter` | Confirmé |
| `0x414674` | `push 0x501514`, appel `0x4D1A94` à `0x41467a` | `INSERT INTO PlayerSpells( OwnerID, SpellID ) VALUES ( %u,%u )` | Une insertion de sort est formatée dans une branche conditionnelle | Confirmé |
| `0x4149ac` | `push 0x501354`, puis appel `0x4D1A94` à `0x4149b2` | `UPDATE PlayingCharacters SET ... WHERE UserID=%u` | La requête principale UPDATE est formatée depuis le corps de `SaveCharacter` | Confirmé |

### Particularités du contrôle de flux

- À `0x41464c`, la valeur `[esi+0x3e0]` est testée : si nulle, saut vers `0x41474b`. À `0x414658`, `[ebp-0x1c]` est également testé : si non nul, saut vers `0x414760`. L'insertion à `0x414674` est donc conditionnelle, et non systématique.
- `0x4146bd–0x4146d3` manipule une structure de liste/file interne après le formatage. Sa sémantique de persistance/validation n'est pas encore démontrée.
- À `0x4149ac–0x414a02`, la requête de mise à jour est formatée et convertie en élément interne ; la preuve d'un succès de transaction SQL n'est pas établie par ce seul extrait.
- Des appels à `0x41da50` sont visibles à `0x414a9f` et `0x414aeb` : fonction non renommée en « commit » sans examen de son corps.

## Impact sur l'analyse précédente

Le rapport de passe 7 indiquait que les références directes des requêtes `PlayerSpells` et `UPDATE PlayingCharacters` restaient à vérifier. Elles sont maintenant **prouvées dans le corps de SaveCharacter**. En revanche, la correspondance exhaustive des paramètres SQL aux offsets mémoire, le commit/rollback et les cas d'échec demeurent ouverts.

## Éléments produits

- `25_EXTRAIT_SAVECHARACTER_SORTS_PASSE8.asm` : VA `0x414550–0x4149b0`.
- `26_EXTRAIT_SAVECHARACTER_FINAL_PASSE8.asm` : VA `0x4149a0–0x414b70`.
- `28_CORRESPONDANCES_SQL_PASSE8.tsv` : références, degré de certitude et préconditions.

## Avancement

Reconstruction fonctionnelle globale indicative **2–5 %** (inchangée) ; ce progrès porte sur la connaissance de la persistance, pas sur un serveur fonctionnel équivalent.
