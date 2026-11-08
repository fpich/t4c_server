# Passe 15 — visibilité, références d'Unit et variantes S2C 46

**Binaire serveur** : `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. **Client** : `t4c(2).exe`, SHA-256 `569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68`. Analyse statique `objdump`, jamais d'exécution de ces binaires.

## 1. Découverte majeure : `CreateVirtualUnit`/`DeleteUnit` sont liés au comptage de références

La vtable `Unit` déjà reconstruite en passe 14 permet de nommer `+0x1C8 = Unit::CreateVirtualUnit` (`0x48B030`) et `+0x1C4 = Unit::DeleteUnit` (`0x48AF10`). **Le nom des fonctions ne doit pas être interprété comme une allocation puis destruction obligatoire d'une nouvelle unité.**

- `0x48B030` : instruction unique `inc DWORD PTR [ecx+0x5C]`, donc incrémente un compteur dans **l'objet déjà existant**.
- `0x48AF7C–0x48AF8A` : décrémente ce même compteur `this+0x5C` ; le bloc destructeur/broadcast n'est atteint que lorsque le nouveau compteur vaut zéro (`jne 0x48AFDD` contourne la destruction).
- Par conséquent, dans `WorldMap::packet_inview_units`, les appels `CreateVirtualUnit` à `0x4B0DFC` puis `DeleteUnit` à `0x4B0F68` encadrent un accès et relâchent une **référence temporaire**. Dire que la sérialisation « supprime toutes les unités du monde » serait faux.

**Certitude** : les instructions et la position du compteur sont confirmées. Le comportement complet de l'objet à compteur nul reste partiellement hors de portée de cette passe.

## 2. Filtrage des unités dans le monde

- `WorldMap::packet_inview_units` (`0x4B0C40`) découpe la zone de requête selon les dimensions de la carte et des cellules (division arithmétique par quatre aux adresses `0x4B0C7E`, `0x4B0C98`, `0x4B0CB0` et `0x4B0CCD`). La région parcourue est bornée à l'étendue du monde ; le paramètre de portée est masqué avec `0xFF` à `0x4B0C6E`.
- Chaque candidat passe par `0x4AF5D0`. Cette routine appelle `Unit::GetType` (`0x48B670`) et retourne faux immédiatement pour le type `4` (`cmp al,0x4`, saut à `0x4AF600`). Pour les autres types, elle demande `Unit::GetInvisibleQuery` (slot virtuel `+0x1D0`), puis appelle une méthode de la requête d'invisibilité pour produire le booléen. **Le sens métier de cette requête et les paramètres exacts du prédicat n'ont pas été complètement reconstitués.**
- Seuls les candidats acceptés passent par l'incrément du compteur puis leur insertion dans la liste temporaire (`0x4B0DF8–0x4B0E06`).

## 3. Envois complémentaires liés aux apparences

Après sélection, `packet_inview_units` n'émet l'en-tête interne `u16(16); u16(count)` qu'avec un compteur **strictement positif** (`0x4B0E93–0x4B0EAC`). Pour chaque membre temporaire, elle écrit `x,y`, puis les cinq champs standard de `Unit::PacketUnitInformation`.

Une branche particulière intervient **avant** l'écriture des champs standards lorsque `Unit::GetAppearance()` vaut `0x271B` ou `0x271C` (`0x4B0F09–0x4B0F18`). Le serveur appelle alors `PacketPuppetInfo` (slot `+0x1C0`) sur un **paquet séparé**, puis `SendPlayerMessage` (slot `+0x14C`) avec le destinataire passé à la fonction. Il reprend ensuite le paquet courant de la liste, sérialise l'information standard et relâche la référence temporaire. Ces octets spéciaux ne doivent **pas** être insérés artificiellement dans chacune des entrées de 13 octets.

## 4. `VerifyInviewHives` est une autre routine

`WorldMap::VerifyInviewHives` (`0x4B25F0`) est invoquée dans un chemin de session (`0x47B90E`) lorsque le monde existe et que certains indicateurs ne bloquent pas le traitement. Elle balaye une zone autour de `x-15..x+15`, `y-30..y+30`, bornée aux dimensions du monde, et utilise des accès par cellules de taille quatre. Un emplacement non nul peut aboutir à `0x410D30` (argument `4`) puis à `0x43BFE0`. **Cela ne constitue pas le prédicat de sélection d'une unité pour S2C 16** : celui-ci se trouve à `0x4AF5D0`.

## 5. Contrat S2C 46 : trois variantes à distinguer

- **Avec monde et au moins une unité sélectionnée** : la session écrit `u16(46), u8(flag)` puis `packet_inview_units` ajoute `u16(16), u16(count), count × 13 octets`, sauf autres effets d'envoi séparés. Le client lit cette disposition à `0x4A2A98`, `0x4A2AA3`, `0x4A2AAE`, puis répète 7 lectures par entrée.
- **Avec monde mais zéro unité sélectionnée** : `packet_inview_units` saute les écritures `u16(16)` et `u16(count)` (`jle 0x4B0F79`) ; dans le chemin étudié, seul le préfixe S2C 46 est donc explicitement construit dans ce paquet.
- **Branche courte de session** : `0x47B943–0x47B960` construit `u16(46), u8(1)` puis appelle `SendPlayerMessage` sur ce paquet, avant de poursuivre d'autres traitements suivant la disponibilité du monde.

**Point d'incompatibilité potentiel, non résolu** : le handler client à `0x4A2A30` tente de lire deux `u16` après le `u8` du préfixe, y compris sans vérification de présence évidente dans le segment d'assemblage examiné. Cela pourrait activer une exception de lecture ou un autre mécanisme de longueur dans les branches courtes et à compteur nul. **Ne pas supposer que les variantes courtes sont valides, ni qu'elles sont nécessairement rejetées**, avant traçage des exceptions/framing.

## État de reconstruction

Le sous-système de visibilité et la gestion des références sont mieux identifiés. **Reconstruction globale serveur : estimation prudente 2–5 %** (non instrumentée), inchangée. Aucun serveur compilé ni test en réseau ; la passe 15 n'exécute aucun `.exe` analysé.

## Pièces justificatives

- `58_PREUVES_ASSEMBLEUR_PASSE15.asm` : désassemblages complets des huit régions de code ; chaque assertion du constructeur a été vérifiée contre ceux-ci.
- `59_PSEUDOCODE_VISIBILITE_REFERENCES_PASSE15.cpp` : flot logique commenté, incomplet et non compilable.
- `60_TABLE_CHEMINS_VISIBILITE_PASSE15.tsv` : branche/condition/sortie/risque.
- `61_REGISTRE_CORRECTIONS_PASSE15.md` : distinctions anciennes/nouvelles et points en suspens.
