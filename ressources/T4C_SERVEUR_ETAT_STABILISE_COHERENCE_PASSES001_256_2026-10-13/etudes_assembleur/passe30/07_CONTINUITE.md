# Continuité et prochaines étapes

1. Dans la passe 29, les codes internes 3 et 4 peuvent conduire à `ObjectStructure::OnDisturbed` et `ObjectStructure::OnUse`; certaines branches activent un sort.
2. La passe 30 documente les gardes, cibles et routage d'activation mais **pas** la sémantique complète des effets ni le tirage des groupes de conteneurs.
3. Étudier ensuite les classes et vtables d'effets référencées par `0x461FD0`, et recouper les formats de `SpellEffectManager`.
4. Conserver la priorité au désassemblage; pas de projet de serveur Python dans l'archive.
