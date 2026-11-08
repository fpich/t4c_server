# Rapport technique — Passe 60 : provenance des pointeurs d’arbre

## Constat vérifié dans les extraits archivés

1. **Lecteur (`0x40A5C4`)** : `0x40A5B5 mov ecx,[ebp+0x2c]`, puis deux arguments empilés, puis appel `0x40F230`. Le pointeur de conteneur vient donc du paramètre de pile situé à `[EBP+0x2C]` dans cette routine, et non directement d'un local temporaire.
2. **Catégorie 5 (`0x45ACCE`)** : `0x45AB4F mov ebx,[ebp+0x1c]`, puis `0x45ACC8 mov ecx,ebx` juste avant l'appel. Le conteneur est le paramètre `[EBP+0x1C]` du dispatcher, sous réserve qu'aucun autre chemin intermédiaire ne modifie EBX. Les lignes archivées utilisées pour cette conclusion sont `0x45AB4F`, `0x45ACC8`, `0x45ACCE`.
3. **Catégorie 20 (`0x45BA5E`)** : `0x45BA57 mov ecx,[ebp+0x1c]`, puis appel `0x40F230`. Les deux chemins d'écriture utilisent donc le même emplacement formel de paramètre `[EBP+0x1C]`, à l'intérieur du dispatcher `0x45A7A0`. C'est plus fort que la seule identité du helper.
4. **Passage par le wrapper** : `0x45C8C3–0x45C8D3` empile six arguments avant d'appeler `0x45A7A0`, mais l'identité du sixième argument et sa provenance ne sont pas totalement reconstituées dans cette sélection de preuves. Les registres doivent être retracés depuis l'entrée du wrapper.
5. **Helper de conteneur** : dans `0x40F230`, `0x40F23C mov edi,[ecx+0x4]` confirme que `ECX` est exploité comme base d'un objet contenant un champ de structure à `+0x4`. Le site `0x40F383` alloue `0x30` octets pour un nouveau nœud. Cela renseigne la représentation, sans identifier son propriétaire ou son destructeur.

## Interprétation limitée

L'identité du **paramètre de conteneur entre les catégories 5 et 20** est établie au niveau du dispatcher ; l'identité entre les instances concrètes lors de deux invocations séparées demeure fonction du contexte. La correspondance avec le paramètre `[EBP+0x2C]` du lecteur `var` reste inconnue. L'origine du conteneur (objet, instance, script, serveur) et sa destruction effective ne peuvent pas être conclus.

## Prochaine étape décisive

Retrouver le site d'appel de l'évaluateur du sous-type 11 et comparer son argument `[EBP+0x2C]` au pointeur que `0x45C890` fait parvenir à `[EBP+0x1C]` de `0x45A7A0`. Vérifier les vtables et le destructeur avec `T4C Server(1).exe` SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.

## Mesure

126 431 / 905 117 octets, 13,968 % ; **0 nouvel octet vérifié**, aucune augmentation de couverture.
