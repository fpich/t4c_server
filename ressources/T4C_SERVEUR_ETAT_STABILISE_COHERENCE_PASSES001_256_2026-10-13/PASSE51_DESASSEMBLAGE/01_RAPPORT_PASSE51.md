# Passe 51 — Calcul des expressions et contexte runtime

## 1. Symboles recuperes [CONFIRMÉ]

Le binaire exporte les noms suivants : `BoostFormula::SetFormula` (`0x409900`), `BoostFormula::GetOperandValue` (`0x409C10`), `BoostFormula::GetBoost` (`0x40C350`) et `BoostFormula::ParseFormula` (`0x40C400`). La fonction `GetBoost` pousse les neuf parametres passes par l'appelant et la representation de l'expression (ecx+8) puis appelle `GetOperandValue`. Ce n'est donc **pas un moteur de sorts separe** mais le moteur de formules partagées, utilise par les WDA et les boosts.

## 2. Operateurs de noeuds [CONFIRMÉ]

`GetOperandValue` (`0x409C10`) lit le discriminateur au debut de l'operande, puis evalue recursivement les sous-arbres depuis les pointeurs aux offsets `+0x18` et `+0x1C`. Son aiguillage de douze destinations (table VA `0x40C114`) recouvre addition, soustraction, multiplication, division, operation x87 via thunk non identifie, tirage aleatoire et six comparaisons retournant des nombres 0 ou 1. La division comporte un controle de denominateur nul et un diagnostic ; le comportement est preserve dans la preuve plutot qu'invente. La routine utilisant le thunk `0x4D1D80` n'est **pas nommee** sans bibliotheque externe authentifiee.

## 3. Operandes contextualises [CONFIRMÉ]

Un deuxieme aiguillage (table VA `0x40C144`) distingue des classes d'operandes. Plusieurs branches evaluent un identifiant, puis appellent `GetSkill` via la vtable `+0x170`. La vtable de `Character` pointe vers `Character::GetSkill (0x41E770)` ; les autres classes examinees pointent vers `Unit::GetSkill (0x48C790)`. L'acces au resultat dereference `USER_SKILL+0x4`; des branches le modifient conditionnellement, ce qui interdit de presenter ce moteur comme exclusivement en lecture seule.

La correction de competence s'appuie sur `Unit::QueryBoost` (`0x48DE60`) et sur un code construit comme `WORD(skill_id + 10000)`. C'est le lien direct avec le prefixe WDA `skill ` deja montre a la passe 43. **Attention :** le type et la signification precise des deux familles de champ de `USER_SKILL` restent a completer par le code de construction et de persistance de cette structure.

D'autres cas appellent `ViewFlag` par vtable `+0xC` ; ces methodes peuvent differer selon le type d'unite. Deux branches utilisent la fonction exportee `__CheckItem (0x445E80)` pour lire une quantite d'objet. Ce sont des dependances de formule runtime prouvees, pas des hypotheses.

## 4. Fonction `__CheckItem` [CONFIRMÉ]

La fonction parcourt la collection obtenue via le slot virtuel `+0x60` de l'unite, compare un identifiant d'objet (masque a 16 bits) avec la valeur issue du slot `+0x28` de l'objet, et additionne la quantite fournie par `Objects::GetQty (0x44C3F0)` pour les correspondances. Elle retourne l'accumulateur. Son perimetre exact depend de la collection exposee par chaque classe ; ne pas affirmer qu'elle parcourt toutes les possessions (inventaire, equipement, coffre) sans resolution du slot `+0x60`.

## 5. Application dans la superstructure type 1 [CONFIRMÉ]

A `0x4C67F5`, `GetBoost` recoit l'expression `this+0xF0` et le contexte de sort ; `0x4590A0` prepare un tirage de 1 a 100. Une comparaison x87 teste le declenchement. Les expressions `this+0x10` ou `this+0x80` sont choisies selon une condition sur le contexte a `0x4C680F`. Ensuite, un autre test x87 choisit `0x4C61A0` (chemin vers `attacked` et `hit`) ou `0x4C64F0` (chemin GetHP/SetHP). Le zero compare est le double situe en VA `0x4DE630`.

Les conditions x87 et le contexte doivent etre controles **avant** toute generalisation en « degat negatif = soin ». A `0x4C61A0`, le parametre dommage est transmis par adresse vers `attacked` puis vers `hit`. Le code ne contient pas ici d'appel direct aux six getters de resistance elementaire. Aucune formule universelle de resistance magique n'est donc reconstituee.

## 6. Limites majeures [INCONNU / INFÉRÉ]

- La correspondance semantique integrale des 12 classes du second dispatch, des attributs de la structure d'operande et des arguments contextuels n'est pas finie.
- Les tables virtuelles MFC/CRT et les thunks externes ne sont pas renommes sans preuve.
- Les effets secondaires dans les chemins `GetSkill` meritent une analyse supplementaire, y compris la concurrence ; ils ne sont pas reproduits dynamiquement.
- Les getters de resistance restent documentes, pas relies à une formule universelle de degats magiques.
- La presence d'un chemin dans le binaire ne demontre ni la frequence de son execution ni la validite de tous les WDA reels.
