# Registre d’incertitudes — passe 20

| Sujet | Ce qui est confirmé | Ce qui reste à démontrer |
|---|---|---|
| Tirages de précision | Quatre appels et leur combinaison avec attaque/esquive/agilités | Distribution, cas limites 0 et overflow, taux de coups réussis global |
| Dégâts naturels | Sélection `RangedAttack`, usages de STR/AGI, diviseurs inférés des constantes multiplicatives | Dégâts effectifs après armure/résistances/buffs |
| Chemin du raté | Branche score non positif et appel conditionnel à `BCMiss` | Toutes les voies de défense et protections |
| `Character::hit` | Fonction virtualisée et rôle au niveau des événements identifiés | Algorithme complet de réduction des points de vie et gestion des résistances |
| Mort de créature | `Unit+0xB0` et appels monde, placement périphérique | Attribution des XP, provenance de tous les objets déposés, butin exact |
| Retour `TFCMAIN::Attack` | Retours et sauts dans le binaire | Signification de tous les codes et chemins particuliers |

Toutes les formules proposées sont **des reconstructions statiques**, pas du code original. Les noms de fonctions proviennent des exports MSVC, tandis que les descriptions métier restent des interprétations contrôlées.
