# Limites et points de contrôle — Passe 48

1. Les getters de résistances élémentaires n’ont aucun appel direct identifié dans le `objdump` du binaire ; cela ne démontre ni absence d’utilisation, ni absence de dégâts magiques ; résolution indirecte et calculs équivalents restent ouverts.
2. `Character::hit` déclenche une notification 33 même lorsqu’il peut ensuite exécuter `SetHP` avec notification désactivée. `Character::SetHP` peut aussi envoyer 33 par son propre flag ; il ne faut pas les compter comme des doublons systématiques.
3. `Group::SendHpUpdate` dépend d'une liste de membres et lit `GetHP`/`GetMaxHP` ; la logique de zéro maxHP et les obligations réseau du client ne sont pas validées dynamiquement.
4. L'objet issu de `SendUnitMessage(20)` dans `Creatures::hit` est opaque ; le champ `+0x18` est comparé à 100000 sans garantir une signification métier.
5. La condition `0xA001` dans `AreaSensitiveEffect::Execute` mène au téléport, non à l'application de dégâts. Ne pas l'extrapoler aux autres codes d'effets spatiaux.
6. Toutes les analyses demeurent statiques. Les appels indirects, modules externes et données de production peuvent compléter des chemins non visibles.
7. Les 536 lignes historiques correspondant au client restent exclues des statistiques serveur. Elles sont conservées dans les anciens documents et ne sont pas des rejets des nouveaux extraits.
8. Prochaine passe : identifier les champs de `ATTACK_STRUCTURE`, les chemins de décès et le dispatch des paramètres WDA vers les méthodes élémentaires effectivement exécutées.
9. `WorldMap::QueryEffects` et `Unit::Teleport` assurent un chemin de téléportation conditionnel, mais la couverture des cas de collision, sous-cartes et erreurs ne constitue pas une démonstration dynamique.
