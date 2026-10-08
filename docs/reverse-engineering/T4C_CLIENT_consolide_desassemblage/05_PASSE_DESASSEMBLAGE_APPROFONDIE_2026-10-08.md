# Analyse statique complémentaire — client T4C 1.25

Date : 2026-10-08. Exécutable `t4c(2).exe`, uniquement désassemblé avec `objdump -d -M intel` ; aucune exécution. SHA-256 : `569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68`.

## S2C 46 — transition pre-game → in-game : structure nouvellement observée

Le dispatcher, `0x499292..0x4992AB`, transmet le paquet à `0x4A2A30`. Dans cette fonction :

* `0x4A2A98` : `read_u8` ; premier octet, signification non établie.
* `0x4A2AA3` : `read_u16_be` ; champ 16 bits A.
* `0x4A2AAE` : `read_u16_be` ; compteur **N**, testé en `0x4A2AE5..0x4A2AEF` avant entrée dans la boucle.
* Pour une entrée de boucle, `0x4A2AFB`, `0x4A2B06`, `0x4A2B11` : trois `read_u16_be` ; `0x4A2B1C` : un `read_u32_be` ; `0x4A2B27`, `0x4A2B32`, `0x4A2B3D` : trois `read_u8`.

**Préfixe confirmé**, immédiatement après l'opcode applicatif : `u8; u16_be fieldA; u16_be count; repeat count {u16_be; u16_be; u16_be; u32_be; u8; u8; u8; ...}`.

⚠️ Le reste de la boucle et les octets suivant cette séquence n'ont pas été validés ici : ne pas considérer ce préfixe comme le schéma complet du paquet. Les noms des champs et leur sens restent ouverts. Les valeurs `0x2712` et `0x3A9A` sont comparées au troisième `u16` de chaque entrée (`0x4A2BFC..0x4A2C12`), mais leur signification n'est pas déterminée.

## S2C 13 — PUT_PLAYER_IN_GAME : lectures directes nouvellement vérifiées

Bloc de dispatch à `0x49A612`. À partir de `0x49A634`, lectures : `u8; u32_be; u16_be; u16_be; u16_be` avec destination de plusieurs champs en mémoire globale. À `0x49A6D6`, deux autres `u32_be`, puis deux `u16_be` (`0x49A6EE`, `0x49A6FA`). À `0x49A809..0x49A858`, la branche lit **six `u8` puis un `u16_be`**, dans les mêmes adresses globales que celles associées à l'heure en S2C 45. Cette répétition démontre une *structure commune de 8 octets*, mais pas que les deux paquets ont exactement la même sémantique générale.

⚠️ Ces lectures sont un sous-ensemble ordonné des opérations observées dans une portion du bloc 13, **pas** un format complet ni nécessairement contigu : plusieurs autres opérations de lecture figurent entre les plages décrites. Ne pas coder un parseur définitif à partir de ce résumé.

## Méthode et portée

Preuves : désassemblage PE32 x86, adresses VA, recoupement avec les noms des méthodes de lecture TFCPacket déjà documentés. `0x4B5AD0=read_u8`, `0x4B5A40=read_u16_be`, `0x4B5980=read_u32_be`. Pas d'analyse dynamique ni de validation par paquets capturés. Les commentaires des anciens documents restent des reconstructions, pas le code source original.

### Prochaines recherches utiles

Tracer la fin de la boucle de `0x4A2A30`, les chemins d'exception et de sortie ; désassembler la fonction englobante de `0x49A612` pour établir toutes les dépendances et les segments conditionnels ; comparer les constructeurs serveur s'ils deviennent disponibles.
