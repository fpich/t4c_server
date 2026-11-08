# Limites et prochaines priorités — Passe 46

- **Résistance/dégâts finaux** : les helpers de calcul sous `0x4219D0` comportent plusieurs virtuels; aucune formule globale complète de dégâts n'est encore démontrée.
- **Type des messages** : l'appel virtuel `+0x24` ne doit pas être assimilé au code passé en argument. L'association sémantique aux scripts WDA reste conditionnelle selon la famille de callback.
- **Statut réseau** : un changement d'équipement dans les branches citées prépare et transmet `PacketStatus`; il est injustifié de garantir cette transmission pour chaque effet temporaire.
- **RangedAttack** : `0x421620` est un prédicat de présence/type d'équipement, alors que `0x4216A0` et `0x4219D0` sont des helpers internes distincts. Les autres sites appelants et le routage exact restent à retrouver.
- **Régénération** : `HPregen` et `ManaRegen` sont bien appelés par `Character::Regenerate`. Le déclencheur temporel de cette dernière demande une étude des sites appelants. `FaithRegen` est une routine distincte.
- **Concurrence et callbacks** : modification d'équipements et effets peut modifier le contexte avant un appel virtuel ; aucune sûreté multithread générale prouvée.
- **Traces** : le protocole et les valeurs réelles nécessitent un serveur lancé avec données WDA et DB authentiques, actuellement indisponibles.
- **Mesure** : pourcentage de bytes désassemblés directement vérifiés, pas un pourcentage de fonctionnalités comprises.

**Passe 47** : résoudre les slots virtuels de calcul des résistances, la sémantique des paquets 95/96 et les appels déclencheurs de `Character::Regenerate`.
