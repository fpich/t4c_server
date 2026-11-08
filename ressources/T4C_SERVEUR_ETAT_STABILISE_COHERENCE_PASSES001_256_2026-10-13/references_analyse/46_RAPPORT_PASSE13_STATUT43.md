# Serveur T4C — Passe 13 : sérialisation et validation croisée du statut S2C 43

**Binaire serveur** : `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.  
**Client de contrôle** : `t4c(2).exe`, SHA-256 `569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68`.  
**Méthode** : désassemblage statique `objdump -d -Mintel` ; association des adresses aux noms C++ de l'index exporté ; comparaison des écritures serveur et lectures client. Ni serveur ni client n'ont été exécutés.

## Résultat principal — structure complète de S2C 43

`Character::PacketStatus` (`0x41F5A0–0x41F7A2`) écrit **30 valeurs scalaires**, dont **un opcode u16 `0x002B`** et **29 valeurs de contenu applicatif**. Les trois opérations d'écriture sont : `TFCPacket << short` @`0x486150`, `TFCPacket << long` @`0x4861F0`, et leurs appels observés dans `PacketStatus`. Le total est **68 octets écrits (2 d'opcode + 66 de données)** dans ce chemin. Les entiers sont écrits **big-endian**, comme démontré par `0x486150`/`0x4861F0`.

Le client, dans le gestionnaire `0x498C54–0x498DDD`, lit **exactement 29 valeurs et 66 octets** : 4 `u32` et 25 `u16`. L'ordre des tailles est identique pour chacun des 29 champs. **Vérification croisée byte-par-byte des largeurs et de la séquence** ; les **valeurs métier** sont seulement identifiées quand des exports nommés ou des littéraux le prouvent.

## Détails de la fonction

- `0x41F5A6–0x41F5C6` : si `this+0x128` est défini et que le paramètre booléen ne bloque pas le parcours, la fonction peut **suivre la chaîne de pointeurs +0x128** pour sélectionner l'unité source de statut. Cette observation impose de ne pas supposer que les valeurs proviennent toujours de `this`.
- `0x41F5C9–0x41F5CD` : ajout de l'opcode `0x002B` via `TFCPacket << short`.
- `0x41F5D2–0x41F638` : deux `u32`, deux `u16`, puis deux `u32` provenant de deux appels à `vtable+0x54` (une paire haute/basse **probable**, et non un champ XP formellement prouvé).
- `0x41F63D–0x41F663` : deux valeurs converties d'une forme flottante par `0x4D1D7A`, puis écrites comme `u16`; la seconde provient de l'export `Character::GetTrueAC` (`0x41EA80`). L'origine de la première reste `vtable+0x168`.
- `0x41F668–0x41F72C` : statistiques STR/END/AGI/WIS/INT, constantes nulles, points d'attribut et variantes `GetTrue*`.
- `0x41F731–0x41F798` : six champs supplémentaires `u16` issus de slots virtuels; noms exacts non établis.
- `0x41F79D–0x41F7A2` : fin de fonction `ret 8`, signature exportée `Character::PacketStatus(TFCPacket&, bool)`.

**Précision de format** : écrire `u16` ne prouve pas une valeur non signée au niveau métier : cela décrit seulement une taille sur le fil. Les conversions de valeurs 32 bits vers 16 bits impliquent une sérialisation de la partie basse. Les descriptions des slots virtuels restent symboliques.

## Correspondance des appels dans la session

À `0x47B837`, le traitement de session appelle `Character::PacketStatus` avec l'objet `TFCPacket` construit localement et un booléen. À `0x47B845`, il fournit ce paquet à une méthode virtuelle `+0x14C` du personnage : **envoi probable**, à confirmer par identification de la vtable ou d'un effet réseau. Le site fait donc le lien **placement réussi → construction du statut → remise du paquet à la méthode virtuelle**.

Dans le même parcours, l'appelant construit aussi un paquet avec `0x002E` (S2C 46), écrit un octet à `0x47B92C`, puis fait éventuellement appel à `WorldMap::packet_inview_units` (`0x4B0C40`). Ce parcours est **conditionnel** et son schéma intégral n'a pas été refait ici. La présence de `0x002E` côté serveur est cependant observée.

## Tableau exhaustif et tests reproductibles

- `47_SCHEMA_PAQUET43_STATUT_PASSE13.tsv` : les **29 champs** avec largeur et offset d'octets dans le *payload après opcode*, adresse de l'écriture serveur et de la lecture client.
- `48_PREUVES_ASSEMBLEUR_STATUT43_PASSE13.asm` : segments redésassemblés serveur + client + opérateurs de sérialisation + appelant.
- `49_PSEUDOCODE_PACKET_STATUS_PASSE13.cpp` : transcription non compilable, sans faux noms de champs.
- `50_CHEMIN_ENVOI_STATUT_PASSE13.tsv` : branchements et points non prouvés de la transition en jeu.

**Contrôles statiques** : 30 appels d'écriture dont l'opcode / 68 octets côté serveur ; 29 appels de lecture / 66 octets côté client ; égalité des 29 largeurs ; présence des exports attendus, des appels et adresses ; archive ZIP testée. **Aucun test de compatibilité sur serveur démarré**.

## Limites / prochaine analyse

Les six slots virtuels finaux, le rôle de `vtable+0x168`, le choix de la chaîne `+0x128` et le sens exact de `vtable+0x54` nécessitent une analyse des tables virtuelles ou une étude des implémentations ciblées. Il reste également à documenter entièrement le chemin de sortie des échecs de placement, la vtable d'envoi `+0x14C` et les sous-branches de S2C 46. La reconstruction globale est toujours estimée **2–5 %**, intervalle qualitatif, et ne représente pas une couverture de code mesurée.
