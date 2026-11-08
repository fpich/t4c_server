# Registre des limites et pistes — Passe 37

## CONFIRMÉ

- Unité : la recherche de clé DWORD conserve **la première** inscription de même clé et le conteneur d'enregistrement est alimenté par ajout en fin.
- Superstructure : insertion **en tête** ; recherche par clé WORD sans arrêt après le premier match, donc possibilité d'appeler plusieurs fabriques avec une même clé.
- Le snapshot dans `SendGlobalEffectMessage` est une collection de **pointeurs** et non un clone de chaque `UNIT_EFFECT`.
- Les helpers temporaires sont différents : `0x490510` libère les maillons seulement, `0x490600` libère aussi les valeurs.
- La recherche du registre `UnitEffectManager` utilise explicitement `EnterCriticalSection` puis `LeaveCriticalSection` sur une section critique globale.

## INFÉRÉ AVEC CONDITIONS

- Deux inscriptions **effectivement exécutées** avec la même clé DWORD dans le même registre donneraient priorité au callback inscrit le premier, **en l'absence de destruction/recréation intermédiaire**.
- Une fabrique appelée depuis `SpellEffectManager::GetEffectObject` pourrait produire des effets en double si plusieurs entrées de même clé existent ; le flux prouve plusieurs appels, mais **pas** plusieurs créations réussies ou conservées.
- Le snapshot réduit certains problèmes d'invalidation d'itérateurs, mais la réentrance peut encore affecter les objets originaux.

## INCONNU / NON PROUVÉ

- Existence concrète de collisions DWORD entre définitions ou atteinte de la limite implicite 1000 ; collision en cas de 32-bit overflow si entrée hors plage.
- Synchronisation de toutes les écritures dans les registres, ordre d'initialisation effectif, rechargement dynamique des définitions.
- Garantie d'absence de use-after-free lors de callbacks réentrants ou parallèles, notamment après relâchement du verrou principal.
- Si le même effet peut être réinjecté sous le même identifiant pendant un callback, et la sémantique exacte du cumul.
- Résultat réseau et règles métier détaillées d'une double fabrique.

## Prochaine étude

1. Rapprocher les sites de chargement SQL de l'entier 32 bits en `source+0x24` et tracer les validations des bornes d'identifiants.
2. Rechercher les autres appels à `GetEffectProc` et la durée de vie des registres au démarrage, pendant les rechargements et à l'arrêt.
3. Reconstituer les séquences réentrantes avec les callbacks `0x4C7990` et `0x4C5C90` sans déduire un bug non observé.
4. Examiner les entêtes réseau et événements dans les chemins de cumul/répétition pour établir des règles de gameplay vérifiables.
