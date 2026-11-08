# Passe 32 — Cycle des effets et callbacks

## Base de l'étude

- Binaire : `T4C Server(1).exe` (PE32 x86).
- SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Méthode : désassemblage statique GNU `objdump -d -M intel`, vérification des octets avec la section `.text` du fichier.
- Continuité : passe 31, qui documente `Unit::AddEffect`, `Unit::RemoveEffect`, les gestionnaires et les paquets S2C 83/84.

## Résultats vérifiables

### 1. `Unit::DispellEffectWithFlag` — `0x48CAD0`

L'analyse du parcours à `0x48CBD6`–`0x48CBF5` montre une comparaison entre le paramètre d'appel et un champ de l'entrée d'effet à l'offset `+0x1C`, suivie d'une opération sur le conteneur lorsque ce critère correspond. L'objet Unit accède au stockage d'effets par `Unit+0xF4`. Le nom « WithFlag » est exporté, mais le rôle fonctionnel précis de ce champ et de toutes les branches n'est pas suffisamment établi pour l'interpréter comme un type de dissipation particulier. La routine modifie également des états de parcours du conteneur.

### 2. `Unit::GetEffect` — `0x48CCE0`

Un parcours du conteneur `Unit+0xF4` compare un identifiant 32 bits fourni en argument à la valeur stockée à `effect_entry+0x4` (`0x48CD50`–`0x48CD58`) et retourne une référence si elle est trouvée ; sinon la valeur retournée est nulle. Cette méthode était déjà partiellement documentée en passe 31 ; elle est conservée ici pour cohérence, pas revendiquée comme découverte entièrement nouvelle.

### 3. `Unit::GetAllEffects` — `0x48CDA0`

Accesseur direct retournant le pointeur enregistré à `Unit+0xF4`. Ne crée et ne copie aucune liste.

### 4. `Unit::DestroyEffects` — `0x48CDB0`

La routine parcourt le stockage d'effets de `Unit+0xF4`. Lorsqu'une entrée possède un callback non nul, elle l'appelle après avoir poussé le code numérique `9` (`0x48CE33`–`0x48CE35`). Le traitement enlève les nœuds parcourus, libère leur mémoire via `0x442060`, détruit le conteneur dans le chemin observé et remet le pointeur `Unit+0xF4` à zéro (`0x48CF2A`). L'effet concret du callback `9` dépend du gestionnaire enregistré et n'est pas encore identifié pour chaque classe d'effet.

### 5. `Unit::SendGlobalEffectMessage` — `0x48CF40`

Parcourt les effets présents et appelle leur pointeur de callback lorsqu'il n'est pas nul (`0x48D041`–`0x48D071`). Le premier paramètre du callback provient du message numérique transmis au début du traitement. Ce canal interne ne doit pas être confondu avec l'envoi direct d'un paquet UDP/S2C au client ; il s'agit d'un dispatch local à plusieurs effets.

### 6. `GetNextGlobalEffectID` — `0x462810`

Le code pousse l'adresse globale `0x506D84` puis appelle l'import `InterlockedIncrement` (IAT à `0x4DE150`). Il lit et retourne ensuite le DWORD à `0x506D84`. C'est un compteur d'identifiants global atomique dans le chemin observé. La gestion de débordement, la persistance et l'unicité entre redémarrages ne sont pas établies.

### 7. `UnitEffectManager::Destroy` — `0x490C20`

Parcourt le registre global des callbacks centré autour de `0x556400`, retire ses nœuds et libère les allocations associées (`0x490D2D`–`0x490D4B`). Cette fonction détruit un registre de callbacks, **pas tous les effets actifs de toutes les unités** ; la distinction avec `Unit::DestroyEffects` est fondamentale.

## Conclusions prudentes

Cette passe consolide la chaîne suivante : registre de callbacks → effets attachés à Unit → consultation / dissipation sélective / dispatch de messages / destruction de conteneur. Elle **ne démontre pas** une règle universelle de durée, la cadence des ticks d'effets, ni la sémantique de chaque code de callback. Des fonctions de chargement différé et de sauvegarde avaient déjà été observées à la passe 31.

## Prochaines cibles

Retrouver les sites appelant `Unit::SendGlobalEffectMessage` et leurs valeurs de message, remonter les usines concrètes de `SpellEffectManager`, puis reconstruire les conditions d'expiration à partir des branches qui calculent des délais ou des échéances.
