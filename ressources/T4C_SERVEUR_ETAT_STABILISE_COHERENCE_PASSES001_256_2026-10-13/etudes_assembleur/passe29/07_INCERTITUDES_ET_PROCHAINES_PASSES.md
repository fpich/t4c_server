# Incertitudes et garde-fous

- Les slots virtuels sont identifiés par lecture brute de pointeurs et recoupement avec les exports, mais un message n'implique pas que toutes les définitions d'unité ont le même type.
- Le message interne 3 correspond au slot `+0x08` et le message 4 au slot `+0x0C` **dans le dispatcher `Unit::SendUnitMessage`** ; les noms `OnDisturbed` et `OnUse` sont confirmés lorsque le receveur est une `ObjectStructure`.
- `SpellMessageHandler::ActivateSpell` est appelé sur certains chemins de `OnUse` et `OnDisturbed` ; la fréquence réelle, les conditions complètes et les données SQL nécessaires ne sont pas reconstituées.
- `Unit::DeleteUnit` implique un compteur de références ; le retrait d'inventaire et la destruction réelle ne sont pas nécessairement identiques.
- Aucun lien direct démontré entre les fonctions de groupes de conteneurs et les chemins d'utilisation dans cette passe.
- Le pourcentage assembleur ne mesure ni l'exhaustivité des branches ni la compréhension globale : seules les preuves d'octets valides sont comptées.
- Aucun code de serveur Python ni tests de serveur n'ont été ajoutés.
