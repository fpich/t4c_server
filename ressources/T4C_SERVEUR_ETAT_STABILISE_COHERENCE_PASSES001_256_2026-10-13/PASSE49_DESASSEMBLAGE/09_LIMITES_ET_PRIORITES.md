# Incertitudes, risques d'extrapolation et suite

1. Les clés Windows `PC_*` et `MOB_*` sont identifiées, mais leurs valeurs sont dépendantes de la configuration non fournie ; le dossier ne contient pas de registre du serveur installé.
2. Le critère utilisé par `DeathPenalties` distingue un `GetType()==1` dans un argument ; il est nommé « PvP » par les clés, mais les règles particulières (PK, joueurs neutres, PvP désactivé) ne sont pas déduites.
3. Le produit « pourcentage d'or * or / 100 » est visible ; le cas overflow 32 bits et le comportement exact pour les valeurs hors bornes ne sont pas établis.
4. `GetHP >> 1` utilisé en fin de pénalités n'est pas `GetMaxHP / 2`. La « restauration à 50 % de vie max » n'est pas démontrée.
5. `SendUnitMessage(20)` dans les tests de perte d'objets peut modifier une structure et empêcher la perte ; le mécanisme ne se réduit pas à un tirage de pourcentage.
6. La liste de huit positions est observée pour une sous-branche de `Creatures::Death`. Elle ne signifie pas que toutes les créatures créent un cadavre physique identique.
7. `CleanCorpse` est une routine indépendante ; l'appel indirect (ou une programmation différée) qui la relie à un événement de décès reste à identifier.
8. Le paquet `0x3F` de la séquence personnage comporte une chaîne internationalisée. Sans le client et ses décodeurs, la signification complète des champs reste inconnue.
9. `_MONSTER_SPELL_ATTACK::Attack` appelle `ActivateSpell`, mais aucune formule résistance → dégâts magiques n'est prouvée par cette seule routine.
10. Les lignes de preuves du client (536 lignes historiques recoupées dans des passes anciennes) ne sont pas comptées dans la métrique serveur.

Prochaine étude : rechercher le moteur de dégâts des objets `SpellEffect` et les dispatchs virtuels liés aux « resist/power », puis les chemins de dépôt/butin et l'ordonnancement de `CleanCorpse`. Vérifier les conditions d'application des différents pénalités selon la valeur d'attaque.
