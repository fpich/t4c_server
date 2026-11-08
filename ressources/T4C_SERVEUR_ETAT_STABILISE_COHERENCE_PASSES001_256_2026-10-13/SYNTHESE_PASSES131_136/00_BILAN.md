# Serveur T4C — Passes 131 à 136

**Couverture corrigée : 809620 / 905117 = 89.449209 %.**

- Base de la passe 130 : 809 652 octets (89,452745 %).
- 32 octets de données indûment classés comme instructions à 0x41E9E0–0x41E9FF ont été retirés.
- Aucun nouvel octet n’a été ajouté sans référence de contrôle justifiée.
- 47 séquences de pointeurs dans .text (3 052 octets), dont une seule comptée à tort dans le masque.
- 5 pseudo-continuités après des appels à `_CxxThrowException` ne prouvent pas la présence de branches exécutables.
- Les 1 125 entrées exportées sont déjà dans le masque.
- Les 253 371 lignes d’instructions archivées (passes 71–130) fournissent 236 329 départs d’instructions distincts.

## Prudence sur les pourcentages
Le masque mesuré décrit une analyse statique et ne constitue pas une preuve que 89,449 % des comportements sont fonctionnellement validés. Les lacunes isolées restent dans le registre sans comptage supplémentaire.

## Suite
Retrouver des références fortes vers les fonctions isolées (notamment par les chemins SEH et les pointeurs d’appel réellement utilisés) ; auditer également la provenance des octets hérités du masque de la passe 70.
