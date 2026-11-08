# Passe 16 — contrôles et corrections

1. `PacketPuppetInfo` a **trois implémentations polymorphes**, avec tailles **différentes** : `Character` 8 champs, `Creatures` 8 champs en chemin spécialisé (10 en repli), `Unit` 10 champs nuls. Le tableau de client S2C68 contient **huit u16**.
2. Les pointeurs `Character+0x1A0..+0x1DC` sont interrogés chacun par la méthode virtuelle `+0x2C` lorsqu'ils existent : ne pas inventer qu'il s'agit uniquement de slots d'équipement.
3. Le tableau `Creatures+0x10C..+0x11A` est une **structure auxiliaire sélectionnée** par appel virtuel `+0x24`, pas nécessairement les offsets directs de l'objet `Creatures`.
4. Le repli `Creatures -> Unit` écrit 24 octets de corps et le lecteur client ne consomme que 20 octets ; désynchronisation **non prouvée** et compatibilité à tester.
5. `packet_peripheral_units` appartient aux mises à jour de visibilité **après déplacement**, pas au constructeur initial `packet_inview_units` de S2C46.
6. `move_world_unit` construit une émission conditionnelle avec **opcode S2C1** ; le `0x16` donné à `Broadcast::BCast` est un paramètre de portée/diffusion et n'est pas un autre opcode.
7. Une reconstruction d'algorithme complet et un test d'équivalence nécessitent encore captures réseau, branches d'erreur et durée de vie des références, actuellement hors du corpus.
8. Estimation 2–5 % globale inchangée, sans mesure exhaustive des fonctions.
