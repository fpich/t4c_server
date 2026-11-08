# Passes 143 à 148 — Point d’entrée PE et désassemblage orienté flot

**Résultat : 815 752 / 905 117 octets, soit 90.126691 %** (+6 114 octets non redondants depuis la passe 142).

Le champ `AddressOfEntryPoint` est `0xD108E`, soit l'adresse virtuelle `0x004D208E` (base d'image `0x00400000`). Un appel direct à `0x004D216C` mène à `0x0043EFA0`. Les instructions de cette grande routine ainsi que les appels auxiliaires vérifiés justifient le gain.

- 2 359 instructions délimitées sur le graphe et confrontées à **GNU objdump** et **LLVM llvm-objdump** ; divergences finales : 0.
- Vérification des octets réels de `T4C Server(2).exe` ; chevauchements de nouvelles instructions : 0.
- Doublons éliminés par l'union du masque historique et des nouveaux octets.
- Aucun octet ajouté sur simple relocation, prologue, padding ou continuation après une instruction terminale.
- 77 pointeurs relocalisés vers des zones non couvertes de `.text` examinés comme tables ou données, pas promus sans preuve de contrôle du flot.
- Les 89,451 % historiques restent **une couverture statique héritée**, non certifiée dynamiquement.

L'exécutable original et les scripts de travail ne sont pas inclus dans cette archive.
