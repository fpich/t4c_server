# Passe 17 — Disparition, apparence, suppression d'unités et preuve exécutable du codec

Date : 2026-10-08. Méthode : `objdump -d -Mintel` sur `T4C Server(1).exe`, aucun binaire original exécuté. SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.

## 1. Construction de deux paquets par Broadcast

**[CONFIRMÉ au niveau assembleur]** `Broadcast::BCObjectRemoved` à `0x40FC00` écrit : `u16(11)` via `TFCPacket::operator<<(short)` à `0x486150`, `u8(0)` à `0x4861B0`, puis `u32(unitId)` à `0x4861F0` ; ensuite `Broadcast::BCast` à `0x40FAF0`. Taille applicative totale : **7 octets**, opcode compris. Les trois premiers champs côté `WorldPos` servent à la zone de diffusion et ne figurent pas dans la charge utile.

**[CONFIRMÉ au niveau assembleur]** `Broadcast::BCObjectChanged` à `0x40FB60` écrit `u16(12)` à `0x486150`, puis `u16(appearance)` à `0x486150`, puis `u32(unitId)` à `0x4861F0` ; ensuite `BCast`. Taille applicative totale : **8 octets**. Ne pas inverser les champs apparence/identifiant.

Pour les champs entiers, le format réseau applicatif TFCPacket est big-endian, conformément aux reconstructions des primitives des passes précédentes ; le programme Windows est x86 little-endian **en mémoire** mais sérialise explicitement.

## 2. Gestion de suppression WorldMap

`WorldMap::remove_world_unit` à `0x4B1090` opère dans les tableaux de cellules (`this+0x24`) indexés avec des coordonnées quantifiées par décalage de deux bits (`sar ... ,2` / `shl ... ,2`). Ce mécanisme manipule une unité déjà présente dans une case ou un pointeur absent ; ce n'est **pas** un équivalent direct de l'envoi S2C 11.

- Le code interroge `Unit::GetUnderBlock` (`0x48F490`) et `Unit::GetType` (`0x48B670`) lorsque l'unité est trouvée dans le chemin observé.
- Si le type vaut **3**, appel de `WorldMap::RemoveBlockingUnit` (`0x4AF560`) ; sinon `WorldMap::SetBlocking` (`0x4AF350`). **Ne pas en déduire les propriétés de tous les types sans leur définition complète.**
- Dans un chemin où la case contient une représentation mais aucun objet directement sélectionné, `WorldMap::FindNearUnit` (`0x4B1DB0`) cherche un remplacement proche puis peut appeler `remove_world_unit` récursivement (`0x4B11A0`).
- D'autres branches exécutent des appels virtuels, effacent un pointeur de cellule (`0x4B1203`) et libèrent des ressources selon des conditions ; **ne pas réduire le comportement à un simple erase**.
- `WorldMap::SetBlocking` à `0x4AF350` conserve deux valeurs sur un seul octet via deux **demi-octets** : chemins de masquage `0x0F` et `0xF0` (`0x4AF39C` et `0x4AF3BE`). L’interprétation complète de chaque bit de collision reste à documenter.

`WorldMap::move_world_unit` à `0x4B12A0` appelle la routine de retrait `0x4B1403`, puis celle de dépôt `WorldMap::deposit_unit` à `0x4B141E`. Le paquet `S2C 1`, déjà documenté à la passe 16, peut être diffusé via `BCast` sur le chemin `0x4B1451–0x4B14A8`.

## 3. Relations appelants-appelés observables

Le relevé des instructions `CALL` directes (pas des calls indirects) dans la section code identifie exactement **7** sites vers `BCObjectChanged`, **9** vers `BCObjectRemoved` et **11** vers `remove_world_unit`, dont un appel récursif. Total : **27**. Ce sont des **sites d'appel statiques**, pas des invocations exécutées. Voir `69_CARTOGRAPHIE_APPELS_WORLD_EVENTS_PASSE17.tsv` ; l'attribution à un symbole exporté proche est une hypothèse si les limites de fonction ne sont pas établies.

Des sites de suppression apparaissent notamment près de chemins de mort d'une créature, de vaporisation d'un objet, de suppression asynchrone d'un personnage, de nettoyage de cadavre, de téléportation et de déplacement (vérifier le graphe complet avant de conclure à l'envoi systématique d'un S2C 11).

## 4. Module Python exécutable et tests locaux (périmètre limité)

Le fichier `t4c_world_packets.py` implémente en **Python 3.10+ / bibliothèque standard** l'encodage et le décodage applicatifs des paquets **S2C 1, 11, 12 et 16** (dataclasses immuables, `struct` big-endian, validation stricte des longueurs/champs). `test_t4c_world_packets.py` contient **14 tests unitaires**, dont vecteurs hexadécimaux reconstruits, tours encodage/décodage, radiance signée, données tronquées/superflues, champs invalides et limite du compteur u16. Exécuter depuis le dossier contenant les deux fichiers :

```bash
python -m unittest -v test_t4c_world_packets.py
```

Résultats réels dans `72_RESULTATS_TESTS_CODEC_PASSE17.txt`. **Les vecteurs des tests sont synthétiques, déduits du format statiquement reconstruit** : les tests ne sont pas des tests différentiels sur captures réseau réelles. Le binaire Windows original n'a pas été exécuté. Le transport UDP, les ACK, variantes S2C 46, la géométrie, les règles de visibilité, la logique serveur et les erreurs côté client ne sont pas implémentés par ce codec. Les fichiers historiques C++ de pseudocode restent conservés en tant que preuves/documentation, mais les nouveaux modules fonctionnels sont dorénavant en Python.

## 5. Réserves et suite

Le score global de **2–5 %** demeure une approximation du projet (voir `73_METHODE_COUVERTURE_PASSE17.md`). Cette passe ajoute une brique compilable, mais ne prouve pas qu'un serveur complet progresse d'un nombre précis de points de pourcentage. **Prochaine priorité** : relier les notifications S2C 11/12 au calcul des destinataires de `BCast`, puis construire des tests différentiels contre des captures réelles.
