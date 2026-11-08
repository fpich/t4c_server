# Passe 14 — tables virtuelles, statut S2C 43 et séquence S2C 46 / S2C 16

**Binaire** : `T4C Server(1).exe` SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Vérification de lecture client sur `t4c(2).exe` SHA-256 `569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68`. Analyse statique `objdump` et lectures de pointeurs dans l'image PE, sans exécution des binaires.

## Résumé des preuves

1. **Résolution de 21 slots virtuels** en lisant les DWORD aux adresses `0x4DE68C + slot` et `0x4DF658 + slot`, puis en rapprochant les pointeurs des noms C++ exportés du serveur. Les deux vtables sont conservées dans le tableau 52.
2. **13 références de sources virtuelles** précédemment symboliques de `Character::PacketStatus` sont maintenant nommées, en plus des getters déjà appelés directement. Les 29 champs et les adresses de sérialisation/lecture restent inchangés (tableau 53). Le compteur porte sur les entrées de description résolues, pas sur le nombre de fonctions distinctes.
3. La paire `Character::GetXP` (`+0x54`) fournit deux DWORD écrits **EDX puis EAX** ; elle représente donc les deux moitiés de la valeur XP 64 bits, écrites avec deux appels distincts de getter. Il ne faut pas confondre avec deux champs XP indépendants.
4. Le slot `+0x14C` vaut `0x41DD80` pour `Character` (**SendPlayerMessage**) et `0x48C350` pour `Unit`. Le segment `0x41DD80–0x41DDDA` contient un test de `this+0x178` puis un appel `0x451380` avec le paquet si la dépendance existe. Ce résultat étaye les émissions de statut et d'entrée en jeu documentées à la passe 13.
5. Le chemin `0x47B91B–0x47B9C2` construit des paquets préfixés `u16 46` et `u8` ; une branche appelle `WorldMap::packet_inview_units`, qui écrit **`u16 16`, `u16 count`, puis `count` enregistrements de 13 octets** lorsque la liste n'est pas vide. Le client `0x4A2A30` consomme la séquence `u8, u16, u16, repeated {u16,u16,u16,u32,u8,u8,u8}`. Le `u16` entre le flag et `count` peut ainsi s'identifier à l'opcode embarqué `16` pour le chemin long observé ; ne pas généraliser cette structure aux chemins courts.

## Décodage de l'entrée monde

```text
Chemin de session observé:
  Character::PacketStatus(..., packet43) -> Character::SendPlayerMessage(packet43)
  ... état de placement ...
  paquet46 << u16(46) << u8(flag)
  si WorldMap disponible et appel effectué:
      WorldMap::packet_inview_units(..., paquet46, ...)
      si au moins une unité admissible:
          paquet46 << u16(16) << u16(count)
          pour chaque unité:
              paquet46 << u16(x) << u16(y)
              Unit::PacketUnitInformation(paquet46)
      Character::SendPlayerMessage(paquet46)
  branche alternative:
      paquet46 << u16(46) << u8(1)
      Character::SendPlayerMessage(paquet46)
```

Ce texte décrit des chemins **particuliers observés** : tous les échecs et tous les filtres de visibilité ne sont pas encore représentés.

## Limites et correctifs documentaires

# Décodage nouveau — consolidation sans correction rétroactive des rapports

- Les tables virtuelles Character et Unit sont des tables de pointeurs dans `.rdata`, adresses VA `0x4DE68C` et `0x4DF658`. L'index des exports contient leurs symboles de classe (`??_7Character@@6BDynamicFlags@@@` et `??_7Unit@@6BDynamicFlags@@@`). Leur disposition concorde à l'offset `+0x14C` avec les méthodes `SendPlayerMessage` des deux classes.
- Le getter XP est une valeur 64 bits `EDX:EAX` retournée par `Character::GetXP`; l'émetteur envoie EDX puis EAX comme deux `u32` big-endian. La récupération de ces deux moitiés via **deux appels** au getter est visible dans l'assembleur.
- Les champs finaux du paquet S2C 43 ne sont plus six « virtuels inconnus » : `GetLevel`, `GetSkillPoints`, `GetWeight`, `GetMaxWeight`, `GetKarma`, `GetTrueMaxHP`.
- Pour `GetAC`, `GetTrueAC`, `GetWeight`, `GetMaxWeight`, `GetKarma` et `GetTrueMaxHP`, l'identité des getters est prouvée ; **la valeur transportée peut subir une conversion ou troncature** parce que l'opérateur de sortie écrit un `u16`.
- Le nom de la fonction virtuelle d'envoi est confirmé : `Character::SendPlayerMessage` (`0x41DD80`). Elle utilise un champ à `this+0x178`, qui conditionne l'appel à `0x451380`; on ne prétend pas avoir déroulé le transport complet ici.
- S2C 46 peut contenir une portion intégrée correspondant à `S2C 16` : le constructeur `WorldMap::packet_inview_units` (`0x4B0C40`) écrit `u16 0x0010`, `u16 count`, puis pour chaque unité `u16 x`, `u16 y`, `Unit::PacketUnitInformation` (`u16 appearance; u32 id; i8 radiance; u8 status; u8 hpPercent`). Cette portion est conditionnelle à un nombre d'unités non nul et au chemin de session, et elle suit le préfixe `u16 46; u8 flag` dans l'appelant analysé.
- S2C 46 connaît aussi une branche qui écrit seulement `u16 46; u8 1` puis envoie. Le handler client étudié lit ensuite un `u16` et un nombre d'entrées : **l'interaction de cette branche courte avec le client reste ouverte** (pas de simulation de paquet ni validation du mécanisme d'exception). Ne pas présenter toutes les variantes comme étant de taille fixe ou toutes acceptées.


## Fichiers produits

- `52_TABLES_VIRTUELLES_CHARACTER_UNIT_PASSE14.tsv` : 21 slots, adresses et symboles des deux classes.
- `53_SCHEMA_S2C43_CHAMPS_NOMMES_PASSE14.tsv` : 29 champs complètement requalifiés quand les symboles l'autorisent, avec adresses serveur/client et largeur sur le fil.
- `54_PREUVES_ASSEMBLEUR_PASSE14.asm` : segments de code, vtables et vérifications.
- `55_PSEUDOCODE_TRANSITION_PASSE14.cpp` : documentation non compilable.
- `56_CORRELATION_S2C46_S2C16_PASSE14.tsv` : séquence des écritures/lectures.

**Avancement** : reconstruction globale conservée à **2–5 %**, fourchette illustrative et non mesure instrumentée ; progression locale sur le système réseau et le chargement en jeu. Aucun test de compatibilité en situation réelle.
