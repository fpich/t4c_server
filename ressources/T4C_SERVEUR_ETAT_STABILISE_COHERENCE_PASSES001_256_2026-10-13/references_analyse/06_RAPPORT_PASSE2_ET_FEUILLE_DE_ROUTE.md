# T4C Serveur — Passe 2 : reconstruction du socle (08/10/2026)

## Bilan

Le **client est mis en pause**. Exécutable analysé : `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Analyse statique PE32 x86 sans exécuter le serveur.

La passe précédente conservait cinq fonctions détaillées plus `Group::SendGroupMembers` ; cette passe ajoute **quatre autres reconstructions ciblées**, soit **10 fonctions étudiées en profondeur** au total (environ **0,89 % des 1 125 exports**). Les exports ne représentent pas toutes les fonctions internes ; ce ratio n'est pas la reconstruction globale. **Estimation fonctionnelle globale : toujours 2–5 %, confiance faible**, faute de mesure exhaustive et de tests.

## Fonctions nouvellement traitées

| Fonction | Plage VA | Faits observés | Limites |
|---|---|---|---|
| `Unit::PacketUnitInformation` | `0x0048F560–0x0048F612` | Sérialise apparence `u16`, champ +0x78 `u32`, radiance ajustée et bornée [-100,100], statut `u8`, pourcentage de vie `u8` | Sens du champ +0x78 et noms virtuels inférés |
| `Unit::SendSystemMessage` | `0x00422E90–0x00422F22` | Crée paquet `63`, écrit `30`, `3` et CString, puis envoie via vtable +0x14C | Texte/destination déterminés par appelant |
| `Group::SendDisbandNotification` | `0x0043AE10–0x0043AED3` | Parcourt les membres, construit le paquet `82` sans charge utile, envoie à chacun | Nature exacte des appels virtuels d'entrée/sortie reste inférée |
| `Group::SendHpUpdate` | `0x0043B080–~0x0043B190` | Paquet `87`, ID cible obtenu par appel interne, HP% = `100*HP/MaxHP` sinon zéro, envoi à chaque membre | Fin de la routine et détails de structure à valider |

**IMPORTANT** : le C++ fourni est un pseudocode symbolique non compilable. Les structures du fil doivent être corroborées par des tests d'intégration avant de parler de compatibilité fonctionnelle.

## Plan réaliste de reconstruction

1. **Socle connexion/persistance** : terminer `Players::Logon`, `LoadAccount`, sélection/chargement, requêtes ODBC et sauvegarde transactionnelle ; relever les tables/champs SQL réellement consultés.
2. **Monde et déplacement** : reconstruire les unités, coordonnées/carte, entrée et sortie de vue, déplacement, téléportation, spawn, collisions éventuelles.
3. **Combat et sorts** : relier les deux `Character::CastSpell` aux règles de dégâts, consommation de mana, cooldown et effets.
4. **Inventaire et commerce** : retrouver entièrement prises et dépôts d'objets, achats/ventes et sauvegardes d'inventaire.
5. **PNJ/groupes/chat** : conversations, marchandises, constitution et dissolution des groupes, messages.
6. **Moteur réseau** : registre C2S/S2C, dispatch, fiabilité/ACK, erreurs et compatibilité avec le client 1.25.
7. **Validation** : construire des fixtures binaires de paquet, puis tests de connexion/cycle de vie et de cohérence de données. Aucun test d'équivalence n'a encore été réalisé.

## Documents

- `01_INDEX_SYMBOLES_EXPORTES.tsv` : inventaire original (1 125 exports).
- `02_RAPPORT_SERVEUR_ET_AVANCEMENT.md` : rapport historique de passe 1.
- `03_PSEUDOCODE_SERVEUR_EXISTANT.cpp` : anciennes fonctions + quatre nouvelles.
- `04_EXTRAITS_ASSEMBLEUR_PASSE2.txt` : preuve de désassemblage pour les quatre reconstructions.
- `05_CARTOGRAPHIE_PRIORITES_SERVEUR.tsv` : classes exportées classées par chantier.

## Limites

Aucun serveur fonctionnel n'a été construit. Reconstruire intégralement un serveur Windows ancien de cette taille exige beaucoup plus que l'inventaire des exports ; la progression chiffrée est explicitement conservatrice.
