# Passe 10 — S2C 13 : requête sortante et mesures de couverture

Date : 2026-10-08. Binaire PE32 x86, analyse statique, sans exécution.
SHA-256 : `569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68`.

## Nouveau résultat directement vérifié

Dans le chemin commun de S2C 13, à `0x49AA99..0x49AAAF` :

1. `0x49AA9C` appelle `0x4B5440` sur un objet paquet local (`[ebp-0x7c]`).
2. `0x49AAA1` pousse `0x3c` (60) et `0x49AAAA` appelle `0x4B57E0` : cette routine écrit les deux octets big-endian d'une valeur 16 bits via les primitives de sérialisation.
3. `0x49AAF6` appelle `0x45BA10` avec cet objet paquet. Dans `0x45BA39..0x45BAC4`, le code inspecte son identifiant, extrait son buffer avec `0x4B5DB0` et passe à l'enfilement transport `0x45C550`.

**Conclusion [CONFIRMÉE]** : le chemin commun de S2C 13 construit un paquet applicatif de code **C2S 60 (0x003C)** et le transmet à la routine de préparation d'envoi. L'envoi effectif reste conditionné aux contrôles de `0x45BA10` et à l'état du transport. Aucun autre champ applicatif explicitement écrit entre l'écriture de l'opcode et la soumission n'a été identifié dans cette portion ; cela ne prouve pas l'absence de tout mécanisme implicite.

## Autres précisions de contrôle de flux

- `0x49AA52` lit une paire de DWORD globaux `0x88E580`, `0x88E584`, et teste un indicateur à `0x5D9E25` ainsi que `0x56E48C` avant l'appel éventuel `0x465EE0`.
- `0x49AAB7..0x49AABE` affecte `1` aux octets globaux `0x699A5C` et `0x699A5D` avant la soumission.
- `0x49AB16..0x49AB43` effectue le nettoyage de deux objets locaux et restaure le chaînage SEH `fs:[0]`. Cette présence **n'identifie pas à elle seule** un gestionnaire qui intercepte le lancer de `0x51EA5B`.

## Mesure reproductible de la documentation

Le fichier TSV consolidé contient actuellement **84 entrées** : BIDIR=1, C2S=19, S2C=64. Un `packet_id` peut être une plage (`1-8`) et une ligne BIDIR ne correspond pas à deux schémas détaillés indépendants. **Ce total n'est ni le nombre total de paquets du jeu, ni un pourcentage de décodage.**

### Estimation de reconstruction — indicative, non mesurée automatiquement

| Périmètre | Estimation | Interprétation |
|---|---:|---|
| Documentation des paquets actuellement identifiés | 50–65 % | Beaucoup de formats partiels/confirmés ; les sémantiques et états restent incomplets |
| Sous-système transport UDP | 55–70 % | Algorithmes de file, fragmentation, ACK et retransmission documentés, validation dynamique absente |
| Reconstruction fonctionnelle de l'ensemble du **client** | **10–20 %** | Documentation partielle seulement : rendu, UI, moteur, ressources, scripts et gestion d'états très loin d'être couverts |
| **Valeur synthétique annoncée sur 100 %** | **≈ 15 %** | Jugement d'avancement global du client ; **confiance faible**, pas mesure instrumentée |

Ces estimations sont une grille de lecture qualitative, **pas un comptage de fonctions désassemblées**, ni un indicateur de compilabilité ou de fidélité comportementale. L'ensemble serveur est exclu du 15 %, car le binaire analysé ici est le client.

## Pistes ouvertes

Identifier le rôle de C2S 60 et sa réponse côté serveur ; reconnaître les handlers SEH effectivement associés à S2C 13 ; isoler les champs conditionnels indirects ; valider la couverture par un inventaire complet des fonctions et sous-systèmes ; ne pas inférer de sémantique aux états 3..12.

## Commandes de contrôle

```sh
objdump -d -M intel --start-address=0x49aa52 --stop-address=0x49ab44 't4c(2).exe'
objdump -d -M intel --start-address=0x4b57e0 --stop-address=0x4b5833 't4c(2).exe'
objdump -d -M intel --start-address=0x45ba10 --stop-address=0x45bad0 't4c(2).exe'
```
