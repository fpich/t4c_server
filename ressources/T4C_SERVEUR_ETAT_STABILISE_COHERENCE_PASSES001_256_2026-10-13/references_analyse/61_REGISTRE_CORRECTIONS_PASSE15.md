# Passe 15 — registre des corrections et réserves

1. **Rétention de référence** (correction de vocabulaire) : `CreateVirtualUnit` (`0x48B030`) est uniquement `inc [this+0x5C]`. `DeleteUnit` (`0x48AF10`) décrémente la même valeur et ne détruit l'objet que si elle atteint zéro. Ce cycle ne prouve pas la construction/destruction d'une copie temporaire du personnage.
2. **Deux contrôles différents** : `WorldMap::VerifyInviewHives` (`0x4B25F0`) balaye des cellules ; le prédicat utilisé par `packet_inview_units` est `0x4AF5D0`, qui examine `Unit::GetType` et `GetInvisibleQuery`.
3. **Sous-message séparé** : pour `0x271B / 0x271C`, `PacketPuppetInfo` est envoyé sur un autre `TFCPacket` au destinataire ; la taille d'une entrée standard du sous-paquet S2C 16 reste exactement 13 octets.
4. **Zéro unité** : le chemin `packet_inview_units` sans candidat omet l'opcode 16 et son compteur ; l'envoi de S2C 46 peut alors ne présenter qu'un préfixe, même dans la voie longue de session.
5. **Réception non prouvée** : le client semble lire des `u16` sans branche de longueur visible après le `u8`. Il faut encore reconstituer les exceptions de `TFCPacket` ou vérifier des captures réelles pour déterminer le comportement exact.
6. **Aucune augmentation du taux global** : le 2–5 % reste un ordre de grandeur, et les fonctions étudiées ne garantissent pas la compatibilité d'un serveur opérationnel.

**Priorité de passe 16** : traçage du constructeur `PacketPuppetInfo`, enquête sur le mécanisme des erreurs de lecture côté client, puis parcours des mises à jour de visibilité sur déplacement.
