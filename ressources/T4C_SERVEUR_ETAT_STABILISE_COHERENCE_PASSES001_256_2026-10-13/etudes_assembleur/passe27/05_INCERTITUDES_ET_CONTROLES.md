# Réserves et contrôles — Passe 27

**Confirmé par octets machine :** références SQL et champs textuels `ObjectID`, `ID`, `ConjureID` ; appel vers le helper de chargement ; parcours du sous-conteneur et ses pas de 40 octets ; pas de 272 octets dans les définitions.

**Dérivé du flot x86 :** usage du `ID` pour construire `WHERE ContainerGroupID=%u` ; association de la table enfant à la définition objet ; présence d'un chemin groupe vide.

**Non démontré :** schéma complet SQL, identifiants réellement présents, probabilités, contrat des imports MFC et sélection des récompenses en jeu. Aucune donnée externe récupérée.

**Mise en garde :** les snippets assembleur s'arrêtent à des points de coupure et n'expliquent pas nécessairement tous les chemins d'exception et les effets de bord. Ils sont des preuves documentaires, pas un serveur recompilé.
