# T4C serveur — Passe 3 : cycle de persistance et entrée en jeu

Date : 08/10/2026. Analyse **statique uniquement** du PE32 `T4C Server(1).exe` ; serveur non exécuté et aucune base de données testée.

## Fonction analysées et niveau de certitude

| Symbole exporté | VA | Observation issue du code machine | État |
|---|---|---|---|
| `Character::DataSaveCallback` | `0x00413CA0` | Deux appels à `0x471D40` sur des chemins successifs, avec des valeurs constantes `0x800` puis `4`; lecture de `this+0x120`, appel indirect importé `0x4DE12C` | Flux confirmé ; sens des constantes et de l'import non établi |
| `Character::SaveCharacter` | `0x00413D50` | Premier argument comparé à zéro ; si non nul, appel de journalisation suivi d'un appel importé à `0x4DE13C` utilisant `this+0x120` ; puis appel virtuel via `this+0x30`, appels `0x48E9F0`, `0x48B700`, test conditionnel de `this+0x170`, allocation d'un objet de `0x44` octets | Début reconstruit ; pas de schéma SQL complet |
| `Players::SaveAccount` | `0x00454B00` | Construction d'objet de `0x44` octets ; chaîne du compte récupérée via `0x456E10` ; apostrophes (`0x27`) doublées avant construction d'une chaîne à partir du format en `0x506480` ; appel à `0x4252A0` ; puis `0x454A90`, dont le résultat est testé | Début reconstruit ; action SQL exacte non confirmée |
| `Character::LoadCharacter` | `0x00414B70` | Point d'entrée nommé et début de fonction extrait | Nécessite encore interprétation approfondie |
| `Character::PutPlayerInGame` | `0x0041E8A0` | Point d'entrée nommé et début de fonction extrait | Nécessite encore interprétation approfondie |

**Correction méthodologique** : la présence d'exports nommés `SaveCharacter`, `LoadCharacter`, etc. ne démontre pas à elle seule que la logique est entièrement reconstruite, ni qu'une version exécutable équivalente existe.

## Pseudocode supplémentaire

Le fichier `08_PERSISTANCE_PSEUDOCODE_PARTIEL.cpp` formalise uniquement les branches réellement observées ; tous les helpers sont symboliques, sans prétention de compilation.

## Prochain objectif

1. Suivre les appels internes de `Character::SaveCharacter` jusqu'à l'émission concrète de requêtes SQL.
2. Identifier les imports à `0x4DE12C` et `0x4DE13C` avant de leur attribuer des noms d'API.
3. Établir les liens vérifiés entre `Players::Logon`, `Character::LoadCharacter` et `Character::PutPlayerInGame`.
4. Préparer une matrice des tables/colonnes SQL seulement à partir des chaînes présentes et de leurs références croisées.
5. Tester un sous-ensemble sur des fixtures isolées avant toute affirmation de compatibilité fonctionnelle.

## Avancement

L'inventaire de 1 125 exports est inchangé. Dix fonctions avaient fait l'objet de reconstructions approfondies lors des passes 1–2 ; cette passe **élargit l'étude ciblée** à trois fonctions supplémentaires (callback, sauvegarde personnage et compte), mais celles-ci restent **partielles**. Estimation globale du serveur : **2–5 % (faible confiance)**, inchangée. Ne pas compter ces fonctions partielles comme entièrement reconstruites.
